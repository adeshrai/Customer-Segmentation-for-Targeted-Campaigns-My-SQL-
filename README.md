<h1>Customer Segmentation for Targeted Campaigns</h1>
<h2>Project Overview</h2>
<p>This project focuses on customer segmentation using SQL to support a marketing campaign. The goal is to analyze customer purchasing behavior using <strong>Recency, Frequency, and Monetary (RFM)</strong> metrics and create actionable customer segments. These insights can help design targeted marketing strategies to enhance customer engagement and retention.</p>
<h2>Key Objectives</h2>
<h3>Data Exploration and Preparation</h3>
<ol>
<ul>
<li>Understand the dataset structure and clean any inconsistencies.</li>
<li>Analyze customer transactions and spending patterns.</li>
</ul>
</ol>
<h3>RFM Analysis</h3>
<ol>
<ul>
<li>Calculate Recency (R): Days since the last transaction.</li>
<li>Calculate Frequency (F): Number of transactions made by a customer.</li>
<li>Calculate Monetary (M): Total spending by a customer.</li>
</ul>
</ol>
<h3>Customer Segmentation</h3>
<ol>
<ul>
<li>Segment customers into categories (High Value, Medium Value, Low Value) based on RFM scores.</li>
<li>Provide actionable insights for each customer segment.</li>
</ul>
</ol>
<h3>Recommendations</h3>
<ol>
<ul>
<li>Suggest marketing strategies for different customer segments.</li>
</ul>
</ol>
<h2>Dataset</h2>
<p>The dataset was <strong>generated using Python</strong> and consists of two tables:</p>
<ol>
<li><strong>Customers Table:</strong> Contains customer demographic details.</li>
<li><strong>Transactions Table:</strong> Includes transaction details (amount, date, customer ID).</li>
</ol>
<h2>SQL Queries</h2>
<h3>1. Data Exploration and Preparation</h3>
<ul>
<li>Count of unique customers.</li>
<li>Number of transactions per customer.</li>
<li>Distribution of transaction amounts.</li>
</ul>
<h3>2. RFM Calculations</h3>
<ul>
<li><strong>Recency:</strong> Days since the most recent transaction.</li>
<li><strong>Frequency:</strong> Total transactions per customer.</li>
<li><strong>Monetary:</strong> Total spending per customer.</li>
</ul>
<h3>3. Combining RFM Metrics</h3>
<ul>
<li>Combine Recency, Frequency, and Monetary values into a single table.</li>
</ul>
<h3>4. Customer Segmentation</h3>
<ul>
<li>Use CASE statements to assign customers into segments (High Value, Medium Value, Low Value) based on RFM values.</li>
</ul>
<h3>Recommendations</h3>
<h3>High-Value Customers</h3>
<ul>
<li>Provide exclusive offers, loyalty programs, and personalized communications.</li>
</ul>
<h3>Medium-Value Customers</h3>
<ul>
<li>Engage with promotional discounts and build loyalty through special events.</li>
</ul>
<h3>Low-Value Customers</h3>
<ul>
<li>Use re-engagement campaigns and reminders for dormant customers.</li>
</ul>
<h2>Tools Used</h2>
<ul>
<li><strong>SQL:</strong> For data extraction, RFM calculations, and segmentation.</li>
<li><strong>Python:</strong> For generating the synthetic dataset.</li>
</ul>
<h2>Author</h2>
<p><strong>Adesh Rai</strong><br /> SQL Enthusiast</p>
<p>Feel free to explore the SQL scripts in this repository. Suggestions and feedback are welcome!</p>
<p>&nbsp;</p>
