library(tidyverse); library(caret); library(openxlsx)
setwd("~/Documents")
data<- read.xlsx("data 1 DIB FIL.xlsx")

# Data Splitting
set.seed(123)
training.samples <- data$Total.E.Kamerunicus %>%
  createDataPartition(p = 0.8, list = FALSE)
train.data  <- data[training.samples, ]
test.data <- data[-training.samples, ]

#Modelling a data
lmpol<- lm(Total.E.Kamerunicus ~ poly(Male.Flower, 4, raw = TRUE), data = train.data)
glm<- glm(Total.E.Kamerunicus ~ Male.Flower, family = "poisson", data= train.data)
gam <- gam(Total.E.Kamerunicus ~ s(Male.Flower), data =train.data)
summary(lmpol)
summary(glm)
predictions_glm <- glm %>% predict(test.data)
predictions <- lmpol %>% predict(test.data)
          
#Cross Validation
data.frame(
  RMSE = RMSE(predictions_glm, test.data$Total.E.Kamerunicus),
  R2 = R2(predictions_glm, test.data$Total.E.Kamerunicus)
)
data.frame(
  RMSE = RMSE(predictions, test.data$Total.E.Kamerunicus),
  R2 = R2(predictions, test.data$Total.E.Kamerunicus)
)
          
#Visualize a model
ggplot(train.data, aes(Male.Flower, Total.E.Kamerunicus) ) +
  labs(x ="Male Flower ", y = "E.Kameruncicus") + 
  ggtitle("Relationship Between Male Flower & Population of E. Kamerunicus") +
  geom_smooth(method = lm, formula = y ~ x, family =poisson(link = "log")) +
  theme(plot.title = element_text(hjust = 0.5))
          