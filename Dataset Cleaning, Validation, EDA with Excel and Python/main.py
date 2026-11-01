import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_excel("clean_data.xlsx")

# 1. Dataset size
print("Rows and columns:", df.shape)

# 2. First five rows
print(df.head())

# 3. Column names and data types
df.info()

# 4. Missing values
print(df.isnull().sum())

# 5. Duplicate rows
print("Duplicate rows:", df.duplicated().sum())

# 6. Unique loans and customers
print("Unique loans:", df["loan_id"].nunique())
print("Unique customers:", df["customer_id"].nunique())

# 7. Payment status distribution
print(df["payment_status"].value_counts(dropna=False))

# 8. Basic statistics
print(df.describe())