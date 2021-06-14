# Use Case: Save / Retrieve Social Media Data from DB

## 1 Brief Description

Social media data fetched from an API or by web scraping should be saved in a local database and retrieved when reused.

## 2 Flow of Events

### 2.1 Basic Flow

1. After a fetch, write data to local DB.
2. Assign the written data to an app user.
3. When a user wants to create a visualization involving the dataset, retrieve the data from local DB.

#### 2.1.1 Sequence Diagram

![Sequence Diagram for Saving and Retrieving DB Data](seq_save_retrieve_local_db.png)

## 3 Special Requirements

(n/a)

## 4 Preconditions

### 4.1 Registration

The user initiating the fetch must be a registered user.

### 4.2 Login

The user initiating the fetch must be logged in.

## 5 Postconditions

After a fetch, the dataset must be saved to the database and associated with the user who initiated the fetch.

## 6 Extension Points

(n/a)
