# PSF Data Pipeline

## Introduction

This project utilizes data from the PSF (Python Software Foundation) surveys conducted between 2019 and 2023. The data was retrieved from JetBrains and is intended for experimentation purposes. While multiple questions might be explored initially, the primary goal is to identify indicators that determine whether a Python programmer consistently uses type hints.

## Initial Data Loading

The first step in the data pipeline involves loading the data from the latest year (2023). Given the large number of columns in the dataset, the following process was implemented to manage and clean the data efficiently:

1. **Splitting the Table Due to Column Overload**:
    - The current table contains over 400 columns, making it difficult to manage and query efficiently. During exploration, a hidden convention in the column names was observed, where each column follows the format `table.column_name`. To improve the table's usability and maintainability, the table is split into multiple tables based on these conventions. Each new table is created only if it contains at least six columns. This approach streamlines data management and enhances query performance.
    - To allow for dynamic naming of columns, a dictionary of all the new dataframes is created. The `main_id` is included in each dataframe to maintain referential integrity. The original dataframe `df` is not modified.
    - Any column name that does not contain a `.` is placed in the `main_df`, as well as all column groupings containing five or fewer columns.

2. **Creating Table Names**:
    - The column names are extracted and converted to a list. Table names are derived from these column names based on the presence of a dot (`.`). A DataFrame is created to map column names to table names.

3. **Counting Unique Table Names**:
    - The unique value counts for table names are obtained to understand the distribution of columns across different tables.

4. **Updating Column Names for Smaller Tables**:
    - The column names for tables with fewer than 6 columns are updated to include the table name as a prefix, and these columns are reassigned to the `main` table.

5. **Updating Counts**:
    - The counts are updated after smaller tables are placed into the main table to ensure completeness and potential future use, even though the variable is no longer used in the current code.

6. **Cleaning DataFrames**:
    - Rows where all columns, except `main_id`, are NaN are dropped to retain only rows with meaningful data.

7. **Updating Column Names**:
    - Column names are updated to only include the values after the dot (`.`), except for `main_df`.

8. **Saving DataFrames to CSV Files**:
    - The resulting dataframes are saved to CSV files, with each dataframe named appropriately and saved to the specified project path.

Note: This entire process is detailed in the notebook split_main_table.ipynb, located in the notebooks folder.
