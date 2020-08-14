#!/usr/bin/env python
# coding: utf-8

# In[9]:


#Author: Venkata Sri Athulya Gopishetty#
#Course: AIT-580#
#Final Project#
#Descriptive statistics and Visualizations (Scatter and Box plot) using Python#

import pandas as pd
import os  # for OS interface (to get/change directory)
import matplotlib.pyplot as plt

# Import the data and explore
mydata = pd.read_csv("master.csv")
mydata.info()
print(mydata)
mydata.columns
mydata.describe()

# Summary stastics
print(mydata['country'].describe())
print(mydata['year'].describe())
print(mydata['sex'].describe())
print(mydata['age'].describe())
print(mydata['suicides_no'].describe())
print(mydata['population'].describe())
print(mydata['suicides/100k pop'].describe())
print(mydata['country-year'].describe())
print(mydata['HDI for year'].describe())
print(mydata[' gdp_for_year ($) '].describe())
print(mydata['gdp_per_capita ($)'].describe())
print(mydata['generation'].describe())

# Filling missing data with zeroes
print(mydata.isnull().sum())
mydata['HDI for year']=mydata['HDI for year'].fillna(0)
print(mydata.isnull().sum())

# Scatter plot
plt.figure(1)
plt.scatter(mydata['age'],mydata['suicides_no'], color='red')
plt.title('Relation Between age and \nsuicides_no', color='steelblue')
plt.xlabel('age', color='blue')
plt.ylabel('suicides_no', color='blue')
plt.show()

# Box plot
plt.figure(3)
plt.boxplot(mydata['year'])
plt.title('Visualization for year', color='blue')
plt.xlabel('year', color='blue')
plt.ylabel('count', color='blue')
plt.show()

# correlation in the dataset
mydata.corr()
from pandas.plotting import scatter_matrix
scatter_matrix(mydata, figsize = (18,12), alpha = 0.3)

