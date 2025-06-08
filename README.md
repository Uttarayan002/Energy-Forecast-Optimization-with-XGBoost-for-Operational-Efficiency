# Electrical Energy Forecasting on CCPP dataset Using XGBoost 🌳
This project leverages the XGBoost regression algorithm to predict the net energy output (Power Output - PE) of a Combined Cycle Power Plant (CCPP) based on environmental factors. The goal is to optimize energy production by accurately modeling and understanding the relationship between operational conditions and power output.

## Description

Predicting full load electrical power output of a base load power plant is important in order to maximize the profit from the available megawatt hours. This examines and compares some machine learning regression 
methods to develop a predictive model, which can predict hourly full load electrical power output of a combined cycle power plant. The base load operation of a power plant is influenced by four main parameters, 
which are used as input variables in the dataset, such as ambient temperature, atmospheric pressure, relative humidity, and exhaust steam pressure. These parameters affect electrical power output, which is 
considered as the target variable. The dataset, which consists of these input and target variables, was collected over a six-year period. First, based on these variables the best subset of the dataset is explored 
among all feature subsets in the experiments. Then, the most successful machine learning regression method is sought for predicting full load electrical power output. 

In order for accurate system analysis with thermodynamical approaches, a high number of assumptions is necessary such that these assumptions account for the unpredictability in the solution. Without these 
assumptions, a thermodynamical analysis of a real application compels thousands of nonlinear equations, whose solution is either almost impossible or takes too much computational time and effort. To eliminate 
this barrier, the machine learning approaches are used mostly as alternative instead of thermodynamical approaches, in particular, to analyze the systems for arbitrary input and output patterns [1].
Predicting a real value, which is known as regression, is the most common problem researched in machine learning. For this reason, machine learning algorithms are used to control response of a system for 
predicting a numeric or real-valued target feature. Many real-life problems can be solved as regression problems, and evaluated using machine learning approaches to develop predictive models [2].
This paper deals with several machine learning regression methods for a prediction analysis of a thermodynamic system, which is a combined cycle power plant (CCPP) with two gas turbines, one steam turbine, and 
two heat recovery systems. Predicting electrical power output of a power plant has been considered a critical real-life problem to construct a model using machine learning techniques. To predict full load 
electrical power output of a base load power plant correctly is important for the efficiency and economic operation of a power plant. It is useful in order to maximize the income from the available megawatt hours 
(MW h). The reliability, and sustainability of a gas turbine depend highly on prediction of its power generation, particularly when it is subject to constraints of high profitability and contractual liabilities.

## Problem Statement
The objective is to predict the net energy output (PE) of a power plant given environmental features:

 - Ambient Temperature (AT)
 - Exhaust Vacuum (V)
 - Ambient Pressure (AP)
 - Relative Humidity (RH). Accurate prediction of PE helps in optimizing power plant operations by balancing energy demands, improving efficiency, and reducing costs and environmental impacts.

## Key Objectives:

 - Understand Data Relationships.
 - Modeling the Energy Output:
 - Performance Evaluation:
 - Evaluate the model's accuracy using appropriate regression metrics 
 - Feature Insights
 - Application Goal 

*Providing an efficient model that can be used for real-time energy output predictions, aiding in:
Operational adjustments to optimize performance.
Decision-making for maintenance or upgrades in plant systems.*

## Installation
| Techs   | version |
|---------|---------|
| python  | 3.12.0  |
|Anaconda | 23.9.0  |

## Dependencies
Check this document before you proceed -> `requirement.txt`

## Dataset
The dataset used in this project contains:
Ambient Temperature( AT) in °C **|** Exhaust Vacuum (V) in cm Hg **|**  Ambient Pressure(AP) in mbar **|**  Relative Humidity (RH) in % **|**  Power Output (PE) in MW.
The dataset was sourced from the UCI Machine Learning Repository -> [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/294/combined+cycle+power+plant).

## Project Pipeline
**RAW DATA** --> **DATA CLEANING** --> **EDA** --> **FEATURE ENGINEERING** --> **MODEL SELECTION** --> **MODEL TRAINING** --> **MODEL EVALUATION** --> **INSIGHTS and REPORTS**


 ## Model Working  
### What is Ensemble Learning?
Ensemble learning is a machine learning technique that combines multiple models (often called "weak learners") to produce a stronger, more accurate model. 

Ensemble methods are broadly classified into:
- Bagging (e.g., Random Forest): Combines predictions of independently trained models by averaging (for regression) or majority voting (for classification).
- Boosting (e.g., XGBoost, AdaBoost, Gradient Boosting): Sequentially builds models where each new model focuses on correcting the errors of the previous ones.

### Model: XGBoost Regressor
XGBoost (Extreme Gradient Boosting) is a powerful and efficient machine learning algorithm primarily used for structured/tabular data. It is an optimized implementation of gradient boosting that has gained significant popularity due to its speed, accuracy, and scalability.


### Motivation of using Extreme Gradient Boosting

 - *Optimized Gradient Boosting*:
Combines weak learners (typically decision trees) to form a strong learner by minimizing the loss function.
Uses second-order gradients (Hessian) to improve optimization.

 - *Regularization*:
Includes L1 (Lasso) and L2 (Ridge) regularization to prevent overfitting, which standard gradient boosting lacks.

 - *Parallelization*:
Can perform tree construction in parallel, making it faster compared to traditional boosting methods.

 - *Handling Missing Values*:
Automatically learns the best way to handle missing values during training, improving usability.

 - *Tree Pruning*:
Uses a "max_depth" parameter instead of a pruning heuristic to avoid overfitting.
Stops growing trees when no further splits improve the model.

 - *Customizable*:
Supports custom loss functions and evaluation metrics.

- *Out-of-Core Computing*:
Can handle very large datasets that do not fit into memory by using efficient disk I/O.

- *Scalability*:
Works seamlessly on distributed systems using libraries like Spark and Hadoop.


## Key Results
**Baseline Model Performance (No Hyperparameter Tuning)**:
 - Mean Absolute Error (MAE): 2.6003 

**After Hyperparameter Tuning**:
 - Mean Train MAE: 0.9488
 - Mean Test MAE: 2.0932
 - Cross-Validated MAE: 2.2379

**Hyperparameters**                                                                                                                                                                                            
 Based on the results, the best parameters found from the GridSearchCV are:

| Parameters       | values|
|------------------|-------| 
| colsample_bytree | 1.0   |
| learning_rate    | 0.1   |
| max_depth        | 7     |
| min_child_weight | 1     |
| n_estimators     | 300   |
| subsample        | 0.8   |

These values will likely improve the performance of the model.

## ★ Insights Gained from the Combined Cycle Power Plant (CCPP) Dataset

- **High Predictive Accuracy:** The final Mean Absolute Error (MAE) of approximately 2.093 on the test set and cross-validated mean MAE of ~2.2379 indicates that the model performs exceptionally well in predicting the Net Energy Output (PE) given the input features.This low error margin demonstrates the suitability of the XGBoost algorithm for regression tasks in this domain.

- **Feature Importance:** By analyzing the feature importances provided by XGBoost, we observed the relative influence of environmental factors: Ambient Temperature (AT) and Exhaust Vacuum (V) had the highest importance in determining the energy output, reflecting their critical role in power plant efficiency. Ambient Pressure (AP) and Relative Humidity (RH) had comparatively lesser but still significant contributions.

- **Scalability of XGBoost:** The XGBoost algorithm demonstrated its robustness by achieving high accuracy without requiring feature scaling or normalization. This reduces preprocessing complexity and highlights XGBoost's ability to provide a better precision.

## How this project contributes to optimizing power plant output from a business perspective?

**1. Efficient Resource Utilization**
How it helps: By accurately predicting power output based on environmental conditions (e.g., temperature, pressure, humidity), operators can plan energy production more precisely.

- Business Value: Reduces wastage of fuel and resources by preventing overproduction during low demand or underproduction during peak demand.

**2. Improved Operational Planning**
How it helps: Power plants can optimize maintenance schedules by analyzing patterns in power output under various conditions.

- Business Value: Minimizes downtime, ensuring consistent power supply, and reduces maintenance costs by predicting operational strain.

**3. Cost Optimization**
How it helps: Predicting power output enables better alignment of energy production with demand, helping avoid penalties for overproduction or the need to purchase energy from other sources.

 - Business Value: Improves profitability by reducing production costs while meeting demand efficiently.

**4. Environmental Compliance**
How it helps: By optimizing output to align with environmental factors, emissions and environmental impact can be reduced.

 - Business Value: Helps meet government regulations and maintain a sustainable operation, avoiding fines and fostering a positive public image.

**5. Data-Driven Decision Making**
How it helps: The model provides actionable insights based on historical and real-time data, helping managers make informed decisions.

 - Business Value: Enables strategic adjustments to operations, ensuring both profitability and sustainability.

# Insights and Conclusions:

**Operational Guidance:**
 - Temperature (AT) and Relative Humidity (RH) are key drivers of energy efficiency.
- Suggests scheduling maintenance or load adjustments during periods of unfavorable conditions ( high temperature or humidity).

**Actionable Outcomes:**
- Highlights the importance of environmental monitoring in ensuring optimal power plant efficiency.
- Recommends further study to mitigate the negative impacts of high temperatures on energy output.

> ## Considerable points:
- **Key Feature**: Ambient Temperature (AT) shows the strongest negative correlation with PE.
- **Operational** Efficiency: Higher vacuum levels (V) generally improve turbine performance.
- **Environmental Impact**: Increased Relative Humidity (RH) tends to reduce power output.

*Power plants can adjust operational strategies based on predicted outputs under varying environmental conditions, saving costs and improving efficiency.*
__________________________________________________________________________________________________________________________________________________________________________________________

## Future Work
 - Feature Engineering: Explore advanced techniques to derive additional features.
 - Deployment: Create an API for real-time energy output predictions.
 - Extended Analysis: Incorporate external datasets to analyze seasonal trends.

## Summary 
- Improved power output forecast accuracy by 15% by developing a machine learning model using XGBoost on historical environmental data.
- Increased model effectiveness by analyzing and optimizing environmental features, leveraging feature importance metrics for selection and refinement.
- Assessed model performance through evaluation metrics (MAE ≈ 2.09, RMSE, R²) and residual plot analysis, ensuring robustness and minimal prediction bias.

## Note
I completed this project in May 2023, but didn’t upload it to GitHub until later. Posting now to document and share the work.

## Contacts
Auther: Uttarayan Haldar                                                                                                                                                                                          
📩[E-mail](uttarayanhaldar433@gmail.com) **|**  🐱[Github](https://github.com/Uttarayan002) **|** 🕊️[Twitter](https://x.com/UHaldar22)     




