print(df.groupby("product_type")["loan_id"].nunique()
#       .sort_values(ascending=False))