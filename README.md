# Blinkit-sales-analysis

Blinkit Grocery Data Analysis is an end-to-end data analytics project that demonstrates cleaning, exploratory analysis, SQL-based reporting, and dashboarding for Blinkit sales data.

## Table of contents

- Project overview
- Repository structure
- Requirements
- Quick start
- How to use
- Notes

## Project overview

This repository contains a small analytics workflow built with Python (Pandas) for data cleaning and EDA, SQL for targeted business queries, and Power BI for interactive dashboards. It explores sales [...]

## Repository structure

- `notebooks/`
	- `blinkit_dataset.ipynb` — Jupyter notebook with data cleaning and exploratory analysis.
	- `sql/`
		- `blinkit_analysis.sql` — SQL queries and analysis notes.
		- `data/`
			- `blinkit_cleaned.csv` — Cleaned dataset used by the notebook and SQL.
- `powerbi/`
	- `blinkit dashboard.pbix` — Power BI file with interactive dashboards (desktop format).
- `README.md` — This file.

## Requirements

- Python 3.8 or newer
- Recommended Python packages: `pandas`, `numpy`, `jupyterlab` or `notebook`
- Power BI Desktop to open the `.pbix` file

You can create a lightweight virtual environment and install the essentials with:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1  # PowerShell
pip install --upgrade pip
pip install pandas numpy jupyterlab
```

If you prefer `pip` from the system environment on Windows (cmd):

```cmd
python -m venv .venv
.venv\Scripts\activate
pip install --upgrade pip
pip install pandas numpy jupyterlab
```

## Quick start

1. Activate the virtual environment (see commands above).
2. Start Jupyter and open `notebooks/blinkit_dataset.ipynb`:

```powershell
jupyter lab
```

3. Run the notebook cells to reproduce data cleaning and EDA.
4. To view dashboards, open `powerbi/blinkit dashboard.pbix` with Power BI Desktop.

## How to use the repo

- The notebook loads data from `notebooks/sql/data/blinkit_cleaned.csv` and walks through cleaning steps and visual EDA.
- SQL queries in `notebooks/sql/blinkit_analysis.sql` can be run in your preferred SQL environment (MySQL/Postgres) after adjusting table names or import steps.
- The Power BI file connects to the cleaned CSV for visuals — adjust data source if you move the CSV.

## Notes

- Sensitive information: ensure no private or production credentials are stored in the repository. This project contains only sample/scrubbed sales data files.
- If files are large, consider using a smaller sample for quick iteration.

## Contact

For questions or improvements, open an issue in the repository or contact the maintainer.

---

Thank you for using this analysis — feel free to request additional documentation, reproducible scripts, or a `requirements.txt` if you want one.
