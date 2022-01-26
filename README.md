# A DATASET OF RELATIONSHIP BETWEEN E. KAMERUNICUS POPULATION WITH SOIL TYPE, CLIMATE, AND VOLATILE ORGANIC COMPOUND IN CENTRAL KALIMANTAN.

A Thesis Project for Volatile Compound Project in Sulung Research Station

This Repository is about exploring and predicting red wine quality. The dataset used in this project can be found [here](https://www.kaggle.com/uciml/red-wine-quality-cortez-et-al-2009)

Abstract
The increase productivity of oil palm in Indonesia, especially in Central Kalimantan, cannot be separated from the role of the insect pollinator Elaeidobius kamerunicus Faust, which was released in March 1983. Since the release of the E. kamerunicus beetle as a new insect pollinator for oil palm in Indonesia, in general There was an increase in production components, namely an increase in bunch weight, the value of oil palm fruit sets and CPO per ha. This increase is supported by environmental factors that are conducive to the activity and population of E. kamerunicus in the field. The E. kamerunicus beetle is quite well adapted to Indonesia and its population plays an important role in the pollination of oil palm in the field. Analysis of covariance (ANCOVA) was used to determine significant differences between soil type tested and month period in term of total E. kamerunicus. Polynomial regression was used to determine significant differences between each male flower count, estimated total of E. kamerunicus visiting in E. guinensis male flower. Clustering heatmap were used to represent the chemical composition variability among the oil palm which planted in three different soil (clay, sand, shallow organic. Data in this article showed that the male flower count and climates had an effect on preference E.camerunicus to visiting male flower in Elaeis guinensis.




The dataset consist of 6 input variables based on Climate, Soil Type, Male Flower Avaibility, and 1 output variable (Total E.Kamerunicus analysis).

The input variables are:
1.  **Soil Type** (Based on USDA Clasification) : Clay, Sand, Peat.
2.  **Male Flower Avaibility** (1,2,3) : Based on sum of the male flower avaibility for one month period.
3.  **Temprature** (°C) : Based on the tempature average for one month period.
4.  **Relative Humidity** (%) : Based on the relative humidity average for one month period.
5.  **Rainfall* (mm) : Based on the rainfall average for one month period.
6.  **Month** (Jan:1, Feb:2, Mar:3 ....., Dec:12) : Month Period is a variable that wants to corelate with other factor to find that maybe the time periode have a realtion with other variables.


The output variable is:  
7. **Total E. Kamerunicus** : Based on observation and measured E. kamerunicus populations visiting receptive female flowers trapped in yellow sticky traps were carried out at two-week intervals on each observation block on clay, sandy and peat soils. The availability of anthesis male flowers was observed on each tree at intervals of 2 weeks in each observation block on clay, peat and sandy soil. Measurement of the climate uses Davis Vantage Pro 2's Automatic Weather Station (AWS) which includes air temperature, humidity, rainfall and rainy days. AWS is placed in the Estate office which is about 6 km from the research location.


The steps I took to do the predictions are: 
1. Exploratory data analysis
2. Preprocessing. Which mainly about outliers handling
3. Model selections. The models used are all regression and regressor models
4. PCA analysis to se the variability ordinal of each variable

## Model Selection Results

The best model evaluation (least RMSE and highest R square) was actually with Random Forest Regressor, but Random Forest result cannot be extrapolated, therefore, I use Ridge regression instead, a model known for handling multicoliearity, which is prevalent in my data. The best data set was after dropping outliers, with **initial RMSE 10.62% and R square 0.35**. 

## Result

Result of this analytic is

### 1. EDA


![alt text](https://github.com/bgt90/Wine-Quality-Prediction/blob/master/home.png)

### 2. Modelling

![alt text](https://github.com/bgt90/Wine-Quality-Prediction/blob/master/prediction.png)

### 3. PCA

![alt text](https://github.com/bgt90/Wine-Quality-Prediction/blob/master/result.png)

### 4. CLustering Heatmap

![alt text](https://github.com/bgt90/Wine-Quality-Prediction/blob/master/dataset.png)

### 5. Visualisation

![alt text](https://github.com/bgt90/Wine-Quality-Prediction/blob/master/visualisation.png)


