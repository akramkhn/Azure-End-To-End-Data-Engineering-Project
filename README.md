🚀 End-to-End Azure Data Engineering Project (Medallion Architecture)

📌 Project Overview

This project demonstrates an end-to-end Azure Data Engineering solution built using the Medallion Architecture (Bronze, Silver, Gold). The goal was to ingest raw data from GitHub using APIs, process and transform it efficiently, and make it analytics-ready for reporting in Power BI.

The project focuses on building scalable, dynamic, and production-style data pipelines using Azure-native tools.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

🏗️ Architecture Overview

The solution follows a standard modern data platform design:

  1) Bronze Layer → Raw data ingestion

  2) Silver Layer → Cleaned and transformed data

  3) Gold Layer → Analytics-ready data for reporting

Tech Stack Used

  1) Azure Data Factory (ADF) – Data ingestion & orchestration

  2) Azure Data Lake Gen2 (ADLS) – Data storage

  3) Azure Databricks (PySpark) – Data transformation

  4) Azure Synapse Analytics – Serving & analytics layer

  5) Power BI – Data visualization and reporting


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

🔹 Bronze Layer – Data Ingestion

Source data is fetched from a GitHub repository using HTTP connections.

There were multiple (10) source files to ingest.

Instead of creating multiple copy activities, a scalable and dynamic approach was implemented.

Key Design Highlights

Created a JSON configuration file containing a list of dictionaries with:

  1) Relative URL

  2) Folder name

  3) File name

Used a Lookup Activity in ADF to read this JSON file.

Connected the Lookup activity to a ForEach activity.

Inside the ForEach loop, a single Copy Activity dynamically processes all files.

This approach makes the pipeline:

  1) Reusable

  2) Easy to scale

  3) Easy to maintain

All raw files are stored in the Bronze layer of ADLS Gen2 without modification.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


🔹 Silver Layer – Data Transformation

Azure Databricks with PySpark is used to process Bronze data.

Applied transformations such as:

  1) Schema enforcement

  2) Data cleaning

  3) Type casting

  4) Standardization

Transformed data is written back to ADLS Gen2 (Silver layer) in a structured format.

This layer ensures the data is clean, reliable, and analytics-ready.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

🔹 Gold Layer – Analytics & Reporting

  1) Azure Synapse Analytics is used to query Silver layer data.

  2) Created views and analytical models to represent business-ready datasets.

  3) Used OPENROWSET / external tables where required.

  4) Synapse is connected to Power BI for visualization.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

📊 Power BI Reporting

Power BI dashboards are built on top of Synapse Analytics.

Enables:

  1) Fast querying

  2) Scalable analytics

  3) Business-friendly reporting


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

🎯 Key Learnings & Takeaways

  1) Built a real-world dynamic ingestion pipeline using ADF.

  2) Implemented Medallion Architecture following best practices.

  3) Learned how to handle API-based ingestion at scale.

  4) Hands-on experience with ADF, Databricks, Synapse, and Power BI.

  4) Designed the solution with performance, scalability, and maintainability in mind.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

✅ Conclusion

This project showcases a complete Azure Data Engineering workflow—from raw data ingestion to analytics and visualization—using industry-standard tools and architecture patterns. It reflects how data pipelines are designed and implemented in real production environments.
