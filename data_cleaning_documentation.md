# Data Cleaning Documentation: Divvy Trips 2019 Q4

**Original Dataset: Divvy_Trips_2019_Q4.csv**

**Refined Dataset: Divvy_Trips_2019_Q4_1.csv**

**Data Cleaning Tool: Microsoft Excel (file: Divvy_Trips_2019_Q4_1.xlsx)**

## Modifications:

### Timestamp Formatting:

Reformatted columns start_time and end_time to the yyyy-mm-dd hh:mm:ss format.

### Trip Length Calculation:

Introduced a new column, trip_length. This column calculates the duration between start_time and end_time, presented in the dd HH:MM:SS format.

### Column Renaming:

Renamed the tripduration column to tripduration_(s) to clearly indicate the duration is in seconds.

### Day of the Week Identification:

Added a day_of_week column. This numeric field (ranging from 1 to 7, with 1 representing Sunday and 7 representing Saturday) determines the day of the week based on the end_time.

### Data Integrity Checks:

Identified discrepancies on November 3rd where the end_time was earlier than the start_time. Further, there were mismatches in the tripduration_(s) data. The following trips, identified by their trip_id, were removed due to these inconsistencies:
25625851, 25625850, 25625849, 25625847, 25625846, 25625845, 25625844, 25625843, 25625841, 25625839, 25625838, 25625836, 25625830.

### Data Exporting:

After cleaning, the dataset was saved both as an Excel spreadsheet and a CSV. Subsequently, the CSV was imported into BigQuery.
