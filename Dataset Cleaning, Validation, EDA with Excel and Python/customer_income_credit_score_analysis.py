import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_excel("clean_data.xlsx")

import matplotlib.pyplot as plt
import seaborn as sns

# Correlation among numerical variables
numeric_cols = [
    "monthly_income_inr",
    "credit_score",
    "loan_amount_inr",
    "annual_interest_rate_pct",
    "days_past_due",
    "amount_due_inr",
    "amount_paid_inr"
]

correlation = df[numeric_cols].corr(numeric_only=True)

plt.figure(figsize=(10, 7))
sns.heatmap(correlation, annot=True, fmt=".2f", cmap="coolwarm")
plt.title("Correlation Between Numerical Variables")
plt.tight_layout()
plt.show()