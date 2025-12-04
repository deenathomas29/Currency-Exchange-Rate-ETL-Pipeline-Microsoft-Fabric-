
# 💱 Automated Exchange Rate ETL & Analytics Project (Microsoft Fabric)

This project demonstrates a complete **ETL + Storage + Automation + Dashboard** workflow built using **Microsoft Fabric**, **Spark Notebooks**, **Delta Tables**, **Power BI**, and **API ingestion**.

The solution automatically collects **currency exchange rates**, stores them in a historical Delta table, and visualizes insights through a **Power BI Dashboard**.

---

## 🚀 Features

### 🔹 Real-time ETL Pipeline
- Extracts exchange rates from **Frankfurter FX API**
- Cleans & transforms data using **PySpark**
- Automatically loads results into **Delta Lake** (`fx_rates_history`)
- Pipeline runs on a **daily schedule**

### 🔹 Power BI Dashboard
Includes:
- Top 10 strongest/weakest currencies
- Currency strength heatmap
- Donut chart distribution of rates
- Detailed rates table
- KPI cards (Min/Max rates)

### 🔹 Optional Machine Learning (AutoML)
- Regression model using **FLAML AutoML**
- Predicts next-day exchange rates
- Fully executed inside Fabric

### 🔹 Automated Data Refresh
- Fabric Pipeline runs notebook daily  
- Dashboard updates when Lakehouse updates  

---

## 🛠 Technologies Used

| Component | Technology |
|----------|------------|
| ETL | PySpark (Fabric Notebook) |
| Storage | Delta Lakehouse |
| API | Frankfurter Exchange Rate API |
| Dashboard | Power BI |
| Automation | Fabric Pipeline Scheduler |
| ML (optional) | FLAML AutoML |

---

## 📁 Project Structure

```
ExchangeRate_Project/
│
├── countries_api_notebook.ipynb
├
│
├── /pipeline
│   ├── pipeline_overview.png
│   ├── pipeline_run_success.png
│   └── pipeline_schedule.png
│
├── /dashboard
│   ├── Dashboard1.png
│   ├── Dashboard2.png
│   ├── Dashboard3.png
│   ├── Dashboard4.png
│   ├── Dashboard5.png
│   ├── Dashboard6.png
│   └── fx_rates_history_table_preview.png
│
└── README.md
```

---

## 🔄 ETL Pipeline Workflow

### **1️⃣ Extract**
```python
url = "https://api.frankfurter.app/latest?from=EUR"
response = requests.get(url)
```

### **2️⃣ Transform**
```python
df_clean = df_raw.withColumn("rate", col("rate").cast("double"))
```

### **3️⃣ Load**
```python
df_clean.write.mode("append").format("delta").saveAsTable("fx_rates_history")
```

### **4️⃣ Automate via Pipeline**
- Notebook activity triggers ETL
- Logs success/failure
- Scheduled daily

---

## 📊 Power BI Dashboard Insights

The dashboard visualizes:

- Strongest currencies  
- Weakest currencies  
- Donut chart of rate distribution  
- Heatmap of highs & lows  
- Full currency table  
- KPI cards  

---

## 🤖 Machine Learning (Optional)

AutoML Regression was run to predict exchange rates based on existing features.  
This step demonstrates predictive analytics capability inside Fabric.

---

## ▶️ Running the Project

### **1. Execute ETL Notebook**
Run all cells inside Fabric.

### **2. Trigger Pipeline**
Run manually → Then enable schedule.

### **3. Open Dashboard**
Connect Power BI to Lakehouse → Build visuals.

---

## 🧾 Summary

This project implements:

✔ API ingestion  
✔ Delta Lake storage  
✔ Fabric pipeline automation  
✔ Power BI dashboard  
✔ Optional ML regression  

A complete end-to-end data engineering solution.

---

## 👤 Author  
**Thomas Deena**  
Exchange Rate Project – 2025
