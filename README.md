Walmart Sales Insights
A Power BI–based analysis of Walmart’s weekly sales performance across stores, seasons, and holiday periods, uncovering key trends and drivers of revenue.

🗂️ Project Structure
bash
Copy
Edit
├── data/
│   ├── Walmart_Sales.xlsx        # Raw weekly sales data
│   └── Walmart sales insight.pdf # Exported report (Power BI snapshots) :contentReference[oaicite:0]{index=0}
├── reports/
│   └── dashboards/               # Power BI .pbix files and exported visuals
├── README.md                     # This file
└── LICENSE
🚀 Overview
This project explores Walmart’s store-level weekly sales from 2010 to 2012. Using Power BI, it answers:

Top‐performing stores by total revenue

Seasonal trends in sales (Autumn, Spring, Summer, Winter)

Holiday vs. non-holiday average and total weekly sales

Fuel price correlation with weekly sales

📊 Methodology
Data ingestion
– Loaded Walmart_Sales.xlsx into Power BI Desktop.

Data cleaning & modeling
– Ensured date fields, numerical types, and holiday flags were correctly parsed.

Visualizations
– Bar charts for top stores and seasonal totals
– Line charts comparing holiday vs. non-holiday sales
– Scatter/line analysis of weekly sales vs. fuel price

Key metrics
– Total sales per store
– Sum of weekly sales by year and season
– Average weekly sales for holiday vs. non-holiday periods 

🔑 Key Insights
Top Five Stores
Stores 20, 4, 14, 13, and 2 contributed the highest aggregate sales (e.g., Store 20: $301,397,792.46). 

Seasonality

2010: $569.6 M

2011: $650.7 M

2012: $668.6 M
Summer and Winter show the strongest peaks. 

Holiday Impact

Holidays average $1.11 M/week vs. $1.03 M/week on non-holidays.

Total holiday sales spike noticeably in Q4. 

Fuel Price Correlation

Weeks with moderate fuel prices (~$3.00–$3.50) tend to align with higher sales.

⚙️ Requirements
Power BI Desktop (latest)

Microsoft Excel (for .xlsx)

Windows 10 or later (for best compatibility)

🛠️ Getting Started
Clone the repo

bash
Copy
Edit
git clone https://github.com/your-username/walmart-sales-insights.git
cd walmart-sales-insights
Open the Power BI report
– Launch Power BI Desktop and load reports/dashboards/Walmart_Sales_Insights.pbix.

Refresh data
– In Power BI, click Refresh to pull in any updates from data/Walmart_Sales.xlsx.

💡 Usage
Interact with filters by Store, Season, Holiday_Flag, and Date slicers.

Export charts or underlying data tables for further analysis.

Customize metrics by adding new measures in DAX (e.g., year-over-year growth).

🤝 Contributing
Contributions are welcome! Please:

Fork the repository

Create a feature branch (git checkout -b feature/awesome-insight)

Commit your changes (git commit -m "Add seasonal forecast")

Push to your branch (git push origin feature/awesome-insight)

Open a Pull Request

📄 License
This project is licensed under the MIT License.

Crafted by Lydia Gezahegn – Monitoring, Evaluation & Learning Analyst
