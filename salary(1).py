import pandas
import sklearn
from sklearn.linear_model import LinearRegression
mind=LinearRegression()
db=pandas.read_csv("sal.csv")
x=db["YearsExperience"]
y=db["Salary"]
x=x.values
x=x.reshape(30,1)
mind.fit(x,y)
n=input("Enter the years of experience :")
print("predicted salary :",mind.predict([[n]]))
