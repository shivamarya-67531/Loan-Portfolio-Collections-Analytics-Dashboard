import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_excel("clean_data.xlsx")

# Instalment counts by payment status
print(df["payment_status"].value_counts())

# Percentage distribution of payment statuses
print(
    (df["payment_status"].value_counts(normalize=True) * 100)
    .round(2)
)

# Amount due and paid
print("Total scheduled amount:", df["amount_due_inr"].sum())
print("Total recorded payments:", df["amount_paid_inr"].sum())

# Missing payment dates
print("Missing payment dates:", df["payment_date"].isna().sum())

# Status by loan product
print(
    pd.crosstab(
        df["loan_type"],
        df["payment_status"],
        normalize="index"
    ).round(3) * 100
)