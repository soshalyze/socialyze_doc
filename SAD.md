# Software Architecture Document

## 1. Introduction

### 1.1 Purpose

This document provides a comprehensive architectural overview of the system,
using a number of different architectural views to depict different aspects of the system.
It is intended to capture and convey the significant architectural decisions which have been made on the system.

### 1.2 Scope

The scope of this SAD is to show the architecture of the Socialyze project. Affected are the class structure, the use cases and the data representation.

### 1.3 References

- [GitHub](https://github.com/soshalyze)
- [Blog](https://socialyze807275475.wordpress.com/)
- [Overall Use case diagram](https://github.com/soshalyze/socialyze_doc/blob/master/usecase/use_case_diagram.png)
- [Software Requirements Specification](SRS.MD)
- [UC Create Account](markdown_CreateAccount.md)
- [UC Login](markdown_Login.md)
- [UC Retrieve Data from Server](markdown_ChooseVisualizationType.md)
- [UC Choose Visualization](markdown_RetrrieveDataFromServer.md)
- [UC Select Dataset](markdown_SelectDataset.md)

## 2. Architectural Representation

Socialyze uses the MVT Pattern from Django for its architecture design.

MVT Diagram:

![MVT Pattern](https://github.com/soshalyze/socialyze_doc/blob/master/img_blog/Django_MVT-1-683x1024.jpg)

## 3. Architectural Goals and Constraints

### 3.1 Server-Side

Socialyze will be hosted on the Heroku deployment platform.
The production app will be located at [https://soshalyze.herokuapp.com/](https://soshalyze.herokuapp.com),
while a developer version for testing and integrating changes will be located at [https://socialyze-staging.herokuapp.com/](https://socialyze-staging.herokuapp.com/).
These apps track the `main` and `develop` branches of the [Socialyze GitHub Repository](https://github.com/soshalyze/socialyze), respectively.

### 3.2 Client-Side

For access to the Socialyze webapp, clients will require a reasonably up-to-date webbrowser.
All other requirements lie on the server side.

### 3.3 CI/CD Pipeline

Continuous integration, testing, and deployment is managed via [Travis CI](https://travis-ci.com/github/soshalyze/socialyze).

### 3.4 Database

The app uses a PostgreSQL database, although potential other RDBMS systems are reasonably easy to migrate to.
For less intensive development purposes, Django in particular supports `sqlite` without further dependencies.
Other alternatives include MariaDB and MySQL.
New database connections are configurable using the `dj_database_url` package, which allows a new DB connection to be substituted into the system by setting a new `DATABASE_URL` environment variable.

### 3.5 Social Media API Communication

Python libraries `praw` and `tweepy` handle the API calls to Reddit and Twitter, respectively.
Modules `reddit_comm` and `twitter_comm` provide the interface to retrieve posts from either network and save them to the application database.

### 3.6 Visualization

The visualization of datasets is handled via individual [Plotly Dash sub-applications](https://dash.plotly.com/).
These are integrated into the frontend templates using the `django-plotly-dash` python package.
Initial parameters are passed to the sub-applications via the template.
User interaction is managed entirely by the Dash applications themselves, saving visualizations is a communication between the app and the app database.

## 4. Use-Case View

The following use cases define the core functionality of the app:

- Retrieve Data from Server
- Choose a Visualization Type and Parameters
- Filter Datasets within the Visualization
- Save and Retrieve Visualizations
- Export Visualizations
  
![Use Case Diagram](https://github.com/soshalyze/socialyze_doc/blob/master/usecase/use_case_diagram.png)

### 4.1 Retrieve Data From Server

*Brief Description*: Logged-in users are able to trigger the retrieval of content and associated metadata (submission date, karma/like count, etc.) for a given social media user handle. The retrieved data is stored in the app database.

See [UC Document: Data Retrieval](#UCDOCRETRIEVEDATAHERE#).

### 4.2 Choose Visualization Type and Parameters

*Brief Description*: Logged-in users may select from an assortment of visualization modes and submit their retrieved datasets for visualization.

See [UC Document: Choose Visualization](#UCDOCCHOOSEVIZHERE#).

### 4.3 Filter Datasets

*Brief Description*: After creating a visualization, a user may filter the data by predefined parameters, interactively changing the visualization.

See [UC Document: Filter Datasets](#UCDOCFILTERDATAHERE#).

### 4.4 Save and Retrieve Visualizations

*Brief Description*: Users may save visualizations after creating them. The associated parameters and modalities are saved to the app database, where the user may retrieve them at a later date or subsequent login.

See [UC Document: Save and Retrieve Visualizations](#UCDOCSAVEVIZHERE#).

### 4.5 Export Visualizations

*Brief Description*: Users may export their visualizations in Portable Network Graphic (PNG) format and download them together with a CSV of the visualization's associated dataset.

See [UC Document: Export Visualizations](#UCDOCEXPORTVIZHERE#).

## 5. Logical View

The application as a whole can be split up into three subsystems: user management, data retrieval, and data visualization.

![Logical Module View](#LOGICALVIEWHERE#)

### 5.1 User Management Subsystem

The application `django.users.auth` provides the necessary functionality for user registration and authentication.
Registration and Login views are implemented in the `users` package.
The interface provided by the `auth` package is then used in the `app` subsystem that provides the main functionality of the application.
Generally, in order to use the app, a user must be registered and logged in.

### 5.2 Data Retrieval Subsystem

The package `comm` handles communication between Socialyze and the social media networks (currently Reddit and Twitter).
`reddit_comm` and/or `twitter_comm` are triggered when a user submits the corresponding `fetch` form.
The retrieved datasets are then written to the application database.

### 5.3 Data Visualization Subsystem

The package `dash_apps` contains the implementations of the various data visualization modes.
Using parameters passed to it from `app`'s forms/views, it creates and initializes a Dash app by retrieving the relevant datasets from the application database.

## 6. Process View

### 6.1 User Registration and Login

### 6.2 User Data Fetch Process

### 6.3 User Visualization Creation

## 7. Deployment View

n/a

## 8. Implementation View

n/a

## 9. Data View

We're using the PostgreSQL database to store our data.

## 10. Size and Performance

tbd

## 11. Quality

We use PyCharm as our IDE and Django as our webframework.
