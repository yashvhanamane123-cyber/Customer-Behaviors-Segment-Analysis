#Customer Shopping Behavior Analysis: From Data to Strategy
Welcome to my data-driven deep dive into customer shopping habits! This project goes beyond simple sales reporting, treating raw transaction data as the starting point for a comprehensive statistical investigation. By combining the exploratory power of Python, the structured querying of SQL, and the visual clarity of Power BI, I've transformed 3,900 customer records into a strategic asset, uncovering the hidden patterns that drive revenue and customer loyalty.

This isn't just about what sold; it's about who bought it, how they bought it, and why.

#1.  The Data Preparation (Python & EDA)
The journey began in Python, where I laid the foundation for all subsequent analysis. Using pandas, I didn't just load the data—I interrogated it.

Data Integrity First: I assessed the dataset's structure, identifying a key gap: 37 missing values in the Review Rating column. To preserve the integrity of the dataset without skewing analysis, I employed a statistical imputation technique, filling these nulls with the median rating of their respective product category. This ensured a complete and unbiased dataset.

Correlation & Hypothesis Testing: A preliminary scatterplot analysis between Age and Total Sales revealed no strong linear correlation. This is a statistically significant finding: customer age alone is not a reliable predictor of high or low spending. This debunks a simple stereotype and points towards more nuanced behavioral drivers.

Feature Engineering for Insight: To enable deeper segmentation, I created new, high-value features:

Total_Sales: Calculated as Previous Purchases * Purchase Amount (USD), this metric provides a holistic view of a customer's lifetime value within the dataset.

age_group: By binning the continuous Age variable into distinct groups ('Young', 'Adult', 'Middle-aged', 'Senior'), I facilitated direct comparative analysis between generational cohorts.

Data Redundancy Check: A quick consistency check confirmed that discount_applied and promo_code_used were perfectly correlated. Recognizing this redundancy, I dropped one to streamline the data model, adhering to the principle of parsimony.

#2.  The Business Interrogation (SQL)
With a clean, robust dataset, I turned to SQL to ask specific, high-impact business questions. Each query was designed to extract actionable intelligence.

Demographic Spending Power:

Revenue by Gender revealed a significant disparity, with female customers contributing nearly 1.7 times more revenue than their male counterparts, immediately signaling a key demographic for targeted marketing.

Customer Behavior & Value:

High-Spending Discount Users were identified. This cohort used a discount but still spent above the average purchase amount, suggesting they are both price-sensitive and high-value—a critical segment for promotional campaigns.

Repeat Buyers & Subscriptions analysis showed that a staggering 72% of repeat buyers (with >5 previous purchases) are non-subscribers. This highlights a massive, untapped opportunity for conversion.

Product & Marketing Insights:

Top 5 Products by Rating (Gloves, Sandals, Boots) represent quality benchmarks. These items can be leveraged in marketing as trusted, highly-rated purchases.

Discount-Dependent Products were identified. Products like Hats and Sneakers have discount rates near 50%, meaning they are rarely bought at full price. This is crucial for inventory and pricing strategy.

Operational Efficiency:

Shipping Type Comparison showed that customers opting for Express shipping spend, on average, $2 more than those choosing Standard. This quantifies the value of convenience.

#3.  The Visual Story (Power BI)
Finally, I consolidated all findings into an interactive Power BI dashboard. This isn't just a collection of charts; it's a narrative tool designed for stakeholders to explore the data themselves. The dashboard visually connects the dots between customer age, subscription status, purchase category, and revenue, making complex statistical relationships intuitive and accessible.

#4.  Key Statistical Findings & Conclusions
The analysis converged on several powerful conclusions that move beyond surface-level observations:

Gender is a Primary Driver: There is a statistically significant difference in spending between genders, with female customers forming the core of the revenue base.

Loyalty is an Untapped Asset: A majority of the most active buyers (repeat purchasers) have not been converted to subscribers. This points to a clear, high-ROI opportunity for loyalty programs.

Discounts are a Segmented Tool: The "discount user" is not a monolith. Some use discounts to make premium purchases, while others only buy specific products when on sale. A one-size-fits-all discount policy is suboptimal.

Category Kings are Clear: Within every category—from Clothing to Footwear to Accessories—there is a clear hierarchy of top-selling products (e.g., Blouse and Pants in Clothing, Jewelry in Accessories). Inventory and marketing focus should reflect this.

#5.  Strategic Business Recommendations
Based on the statistical evidence, here are my data-backed recommendations:

Aggressively Target Female Demographics: Allocate a larger portion of the marketing budget to channels and campaigns that resonate with female customers, highlighting top-rated items in Clothing and Accessories.

Launch a Targeted Subscription Drive: Design an exclusive loyalty program specifically for "Returning" and "Loyal" customers who are not yet subscribers. Offer them a compelling, data-backed reason to convert.

Implement a Tiered Discount Strategy: Move away from blanket discounts. Use "high-value" discounts to upsell products like Hats and use premium positioning for high-rated, less discount-dependent items like Gloves and Sandals.

Optimize Inventory and Marketing: Feature the top 3 products per category (e.g., Jewelry, Blouse, Sandals, Jacket) in seasonal lookbooks and promotions to maximize return on marketing spend.

Technologies Used: Python (Pandas, Seaborn, Matplotlib), SQL (MySQL), Power BI.
