AI Assistance Declaration: I used ChatGPT (GPT-5.6 Sol) for brainstorming documentation structure, Markdown formatting suggestions, wording refinement, and review support. Prompts used are listed in Appendix.md. I verified the final content by reviewing the Markdown structure, checking the R Markdown organization, and confirming that no real or personal data is used. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# sales_summary.R
# Purpose: Demonstrate a simple analysis using a synthetic sales dataset.

sales <- read.csv("data/synthetic_sales.csv")

sales$Revenue <- sales$Quantity * sales$UnitPrice

revenue_by_product <- aggregate(
  Revenue ~ Product,
  data = sales,
  FUN = sum
)

print(revenue_by_product)
