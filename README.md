# Energy Output Analysis and Optimization using XGBoost (working 0n REDAME)
A business-relevant, data-driven project to optimize power plant efficiency using environmental indicators and predictive modeling.
_____________________________________________________________________________________________________________________________________________________________________________________________________________________

# Project Overview

**What is this project about?**  This project leverages real-world sensor data from a Combined Cycle Power Plant (CCPP) to predict net energy output (PE) using various environmental factors. The goal is to help optimize energy generation, enhance efficiency, and support sustainable resource management.

**Why is it important?** Energy production efficiency is crucial for reducing fuel consumption and lowering environmental impact. Predicting the power output allows plant operators to make better decisions, avoid under/overproduction, and reduce operational costs.

**So what?** By developing a robust machine learning model (XGBoost), we demonstrate how data science can directly support energy optimization, sustainability goals, and cost-effective production planning.
_____________________________________________________________________________________________________________________________________________________________________________________________________________________

# Project Goal
To analyze the environmental and accurately predict the Net Energy Output (PE) of the power plant based on key environmental parameters such as:
- Ambient Temperature (AT)
- Exhaust Vacuum (V)
- Ambient Pressure (AP)
- Relative Humidity (RH)
The final model is expected to support energy production forecasting with relevant analysis, high accuracy and minimal error.
_____________________________________________________________________________________________________________________________________________________________________________________________________________________

# Data Overview
- Source : UCI 
- Name: Combined Cycle Power plant research test data 

Features:
Column	 |   Description                       |
---------|-------------------------------------|
AT       |   Ambient Temperature (°C)          |
V	       |   Exhaust Vacuum (cm Hg)            |
AP	     |   Ambient Pressure (millibar)       |
RH	     |   Relative Humidity (%)             |
PE	     |    Net Energy Output (target) in MW |

___________________________________________________________________________________________________________________________________________________________________________________________________________________
# Code Structure
'''bash
├── data/                                # All project data
│   ├── raw/                             # Original, immutable data
|   └── Cleaned/                         # Cleaned/processed data
│
├── notebooks/                           # Jupyter notebooks for exploration
│   ├── Environmental-insights.ipynb
│   ├── Exploratory data analysis.ipynb
│   └── SQL_EDA.ipynb
│
├── src/                                 # Source code
│   ├── Data preprocessing.ipynb         # Data processing scripts           
│   └── XGBoost Model.ipynb              # MODEL
│
│
├── tests/                  # Unit tests
│   ├── X_test_data.py
│   └── y_test.py
│
│
├── reports/                # Outputs (plots, tables, etc.)
│   
│
├── .gitignore              # Specifies intentionally untracked files
├── README.md               # Project overview
├── requirements.txt        # Python dependencies
└── LICENSE                 # Project license
'''
___________________________________________________________________________________________________________________________________________________________________________________________________________________

#  Technical Stack

## Tools & Technologies
A blend of analytical thinking and tech tools

| Category              | Tools Used                                  |
|-----------------------|---------------------------------------------|
| Programming Language  | Python, SQL                                 |
| Data Analysis         | Pandas, NumPy                               |
| Visualization         | Matplotlib, Seaborn, Tableau                |
| Environment           | Jupyter Notebook, PostgreSQL, Excel         |
| Version Control       | Git, GitHub                                 |

___________________________________________________________________________________________________________________________________________________________________________________________________________________

# Executive Summary
Analyze and Built a tuned ML model to accurately predict energy output from real-world environmental data.
To improve the ability of power plants to plan energy production, reduce inefficiencies, and adapt to environmental variability.
The XGBoost model achieved a **Mean Absolute Error of ~2.09**, significantly outperforming traditional regression approaches and ensuring:
  - More reliable energy forecasting.
  - Reduced operational risks and improved resource allocation.
  - Clear environmental insights — such as how **ambient temperature** strongly influences energy output.


# Insight Deep Dive
**Environmental parameters**
- What we are looking: The relationship between output Energy across all the environmental parameters
- Insights: Ambient Temperature (AT) usually has a strong negative correlation with Power Output.
![Screenshot (344)](https://github.com/user-attachments/assets/0f41e89e-1945-472d-8d4e-dc5d50e0d07a)

**Temperature and Power Output Trend**
- What we are looking: As temperature increases, power output tends to decrease — likely due to thermodynamic efficiency loss.
- Insights: Higher temperatures (AT) negatively affect the power output (PE). This is due to reduced efficiency in thermal energy conversion as the ambient temperature increases.
![Screenshot (346)](https://github.com/user-attachments/assets/6d9c4a7e-ccc1-40ef-9e35-49d48bc430ea)

**Exhaust Vacuum and Power Output Trend**
- What we are looking:The relationship between vacuum level (condenser pressure) and turbine power output/efficiency is negatively correlated—but in a way that improves performance as vacuum increases.
- Insight: Vacuum (V) has a strong negative correlation with PE. As vacuum increases, the turbines operate more efficiently, leading to higher power output. While vacuum and condenser pressure are inversely related, power output increases with higher vacuum (up to an optimal point). So, the useful effect is positive, but the physical correlation is negative.
![Screenshot (345)](https://github.com/user-attachments/assets/6ef58700-d6cc-4626-bcd2-ab23d1fbb8c5)

**Ambient Pressure vs. Power Output**
- What we are looking: Positive correlation as Higher ambient pressure improves both gas and steam turbine performance in a CCPP.
- Insights: Ambient pressure (AP) shows a moderate positive correlation with PE. Higher pressures improve combustion efficiency in power plants, resulting in better energy conversion.
![Screenshot (347)](https://github.com/user-attachments/assets/ce13c335-2029-4767-8582-963176b83785)

## Summary 
- Temperature (AT) has the strongest negative correlation with power output. Higher temperatures reduce energy efficiency.
- Exhaust Vacuum (V) also shows a strong inverse relation with PE.
- Pressure (AP) and Humidity (RH) have moderate effects but contribute to overall accuracy when retained.
