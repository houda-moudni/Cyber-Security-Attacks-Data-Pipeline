# Cyber Security Attacks Data Pipeline : MICROSOFT AZURE CLOUD SERVICES
# Cyber Security Attacks Data Pipeline

This project demonstrates a data pipeline for ingesting, processing, analyzing, and visualizing cyber security attack data using Microsoft Azure cloud services. The pipeline handles data ingestion from CSV files, processes and transforms it through various layers (Bronze, Silver, Gold) in Azure Data Lake Storage, and enables data analysis and visualization using Azure Synapse Analytics and Power BI.

## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Technologies Used](#technologies-used)
- [Steps to Accomplish the Project](#steps-to-accomplish-the-project)
- [Screenshots](#screenshots)
- [License](#license)

## Overview

The data pipeline is designed to efficiently handle and analyze large-scale data related to cyber security incidents. It leverages Azure services to manage data flow from ingestion to visualization, making it possible to gain actionable insights from the data.

## Architecture

1. **Data Source**: A CSV file hosted in a GitHub repository serves as the data source.
2. **Data Orchestration**:
   - **Bronze Layer**: Raw data stored in Azure Data Lake Gen2.
   - **Silver Layer**: Transformed and cleaned data in Azure Data Lake Gen2.
   - **Gold Layer**: Aggregated data ready for analysis.
3. **Data Analysis**: Data is analyzed in Azure Synapse Analytics.
4. **Data Reporting**: Data visualization in Power BI.

![Architecture Diagram](https://github.com/houda-moudni/Cyber-Security-Attacks-Data-Pipeline/blob/main/Azure_Data_pipeline.png)

## Technologies Used

- **Microsoft Azure**:
  - Azure Data Lake Gen2
  - Azure Data Factory
  - Azure Databricks
  - Azure Key Vault
  - Azure Synapse Analytics
  - Power BI
- **Programming Languages**: Python, SQL

## Steps to Accomplish the Project

### 1. Data Ingestion
- The CSV file containing cyber security attack data is stored in a GitHub repository.
- An HTTP connection is used in Azure Data Factory to ingest the CSV data from the GitHub link into the Bronze container, which is part of an Azure Data Lake Gen2 resource in the storage account.

### 2. Secure Storage of Secrets
- Azure Key Vault is used to securely store the storage account's secret key, ensuring that sensitive information is protected.

### 3. Data Transformation and Cleaning
- An Azure Databricks resource is created with a dedicated compute cluster.
- Two notebooks are developed:
  - **Notebook 1**: Transforms and cleans the data, moving it from the Bronze layer to the Silver layer in Azure Data Lake Gen2.
  - **Notebook 2**: Aggregates the cleaned data from the Silver layer and stores it in the Gold layer for further analysis.

### 4. Data Analysis with Synapse Analytics
- An Azure Synapse Analytics resource is created and connected to the Gold container in Azure Data Lake Gen2.
- SQL queries are used within Synapse Analytics to analyze the aggregated data stored in the Gold layer.

### 5. Data Visualization with Power BI
- Power BI is connected to the Gold container in Azure Data Lake Gen2.
- The data is visualized through Power BI dashboards, providing insights into cyber security trends and patterns.
