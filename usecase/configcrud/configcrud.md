# Use Case: Save, Retrieve, and Delete Visualization Configuration

## 1 Brief Description

Users will be able to save their visualization options and datasets and retrieve them on subsequent logins.
Users will also be able to delete previously saved configurations.

## 2 Flow of Events

### 2.1 Basic Flow

#### 2.1.1 Save

1. User creates a visualization (see "Create Visualization" UC document).
2. User selects "Save Visualization" on the displayed visualization.
3. Dataset and mode of visualization are associated to user in the database.

#### 2.1.2 Retrieval

1. User selects a saved configuration on his dashboard screen.
2. Visualization is generated again and shown to the user.

#### 2.1.3 Deletion

1. User opens the visualization to delete.
2. User presses the "Delete Visualization" button.
3. The visualization is deleted from the user's list of saved visualizations.

#### 2.1.4 Activity Diagram

![Save Configuration Activity Diagram](configcrud.png)

#### 2.1.5 Database Model

The class `UserVisualization` represents the users' visualizations saved to the database.

![Configuration CRUD Database Model](../../architecture/diags/app_model.png)

#### 2.1.5 Mock-up

![Configuration CRUD Mockup Dashboard](../../mockup/dash_select.png)

![Configuration CRUD Mockup Visualization](../../mockup/viz_view.png)

#### 2.1.6 Narrative

(n/a)

### 2.2 Alternative Flows

1. The user does not have a previously saved visualization associated with his account.
2. The dashboard displays that the user has no saved configurations.

## 3 Special Requirements

(n/a)

## 4 Preconditions

### 4.1 Login

The user has to be logged in to the system.

### 4.2 Existing Visualization

For saving, the user must have created a visualization from an existing dataset.

For retrieval and/or deletion, the user must have saved an existing visualization to his account.

## 5 Postconditions

After saving, there must be a reference to the dataset and mode of visualization associated to the user in the database.

## 6 Extension Points

(n/a)
