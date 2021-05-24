# Test Plan: Socialyze

## Table of Contents

- [Test Plan: Socialyze](#test-plan-socialyze)
  - [Table of Contents](#table-of-contents)
  - [1. Introduction](#1-introduction)
    - [1.1 Purpose](#11-purpose)
    - [1.2 Scope](#12-scope)
    - [1.3 Intended Audience](#13-intended-audience)
    - [1.4 Document Terminology and Acronyms](#14-document-terminology-and-acronyms)
    - [1.5  References](#15--references)
    - [1.6 Document Structure](#16-document-structure)
  - [2. Evaluation Mission and Test Motivation](#2-evaluation-mission-and-test-motivation)
    - [2.1 Background](#21-background)
    - [2.2 Evaluation Mission](#22-evaluation-mission)
    - [2.3 Test Motivators](#23-test-motivators)
  - [3. Target Test Items](#3-target-test-items)
  - [4. Outline of Planned Tests](#4-outline-of-planned-tests)
    - [4.1 Outline of Test Inclusions](#41-outline-of-test-inclusions)
    - [4.2 Outline of Other Candidates for Potential Inclusion](#42-outline-of-other-candidates-for-potential-inclusion)
    - [4.3 Outline of Test Exclusions](#43-outline-of-test-exclusions)
  - [5. Test Approach](#5-test-approach)
    - [5.1 Initial Test-Idea Catalogs and Other Reference Sources](#51-initial-test-idea-catalogs-and-other-reference-sources)
    - [5.2 Testing Techniques and Types](#52-testing-techniques-and-types)
      - [5.2.1 Data and Database Integrity Testing](#521-data-and-database-integrity-testing)
      - [5.2.2 Functional Testing](#522-functional-testing)
      - [5.2.3 Business Cycle Testing](#523-business-cycle-testing)
      - [5.2.4 User Interface Testing](#524-user-interface-testing)
      - [5.2.5 Performance Profiling](#525-performance-profiling)
      - [5.2.6 Load Testing](#526-load-testing)
      - [5.2.7 Stress Testing](#527-stress-testing)
      - [5.2.8 Volume Testing](#528-volume-testing)
      - [5.2.9 Security and Access Control Testing](#529-security-and-access-control-testing)
      - [5.2.10 Failover and Recovery Testing](#5210-failover-and-recovery-testing)
      - [5.2.11 Configuration Testing](#5211-configuration-testing)
      - [5.2.12 Installation Testing](#5212-installation-testing)
  - [6. Entry and Exit Criteria](#6-entry-and-exit-criteria)
    - [6.1 Test Plan](#61-test-plan)
      - [6.1.1 Test Plan Entry Criteria](#611-test-plan-entry-criteria)
      - [6.1.2 Test Plan Exit Criteria](#612-test-plan-exit-criteria)
      - [6.1.3 Suspension and Resumption Criteria](#613-suspension-and-resumption-criteria)
    - [6.2 Test Cycles](#62-test-cycles)
        - [6.2.1 Test Cycle Entry Criteria](#621-test-cycle-entry-criteria)
        - [6.2.2 Test Cycle Exit Criteria](#622-test-cycle-exit-criteria)
        - [6.2.3 Test Cycle Abnormal Termination](#623-test-cycle-abnormal-termination)
  - [7. Deliverables](#7-deliverables)
  - [7.1 Test Evaluation Summaries](#71-test-evaluation-summaries)
  - [7.2 Reporting on Test Coverage](#72-reporting-on-test-coverage)
  - [7.3 Perceived Quality Reports](#73-perceived-quality-reports)
  - [7.4 Incident Logs and Change Requests](#74-incident-logs-and-change-requests)
  - [7.5 Smoke Test Suite and Supporting Test Scripts](#75-smoke-test-suite-and-supporting-test-scripts)
  - [7.6 Additional Work Products](#76-additional-work-products)
    - [7.6.1 Detailed Test Results](#761-detailed-test-results)
    - [7.6.2 Additional Automated Functional Test Scripts](#762-additional-automated-functional-test-scripts)
    - [7.6.3 Test Guidelines](#763-test-guidelines)
    - [7.6.4 Traceability Matrices](#764-traceability-matrices)
  - [8. Testing Workflow](#8-testing-workflow)
  - [9. Environmental Needs](#9-environmental-needs)
    - [9.1 Base System Hardware](#91-base-system-hardware)
    - [9.2 Base Software Elements in the Test Environment](#92-base-software-elements-in-the-test-environment)
    - [9.3 Productivity and Support Tools](#93-productivity-and-support-tools)
    - [9.4 Test Environment Configurations](#94-test-environment-configurations)
  - [10. Responsibilities, Staffing, and Training Needs](#10-responsibilities-staffing-and-training-needs)
    - [10.1 People and Roles](#101-people-and-roles)
    - [10.2 Staffing and Training Needs](#102-staffing-and-training-needs)
  - [11. Iteration Milestones](#11-iteration-milestones)
  - [12. Risks, Dependencies, Assumptions, and Constraints](#12-risks-dependencies-assumptions-and-constraints)
  - [13. Management Process and Procedures](#13-management-process-and-procedures)

## 1. Introduction

### 1.1 Purpose

The purpose of the Test Plan is to gather all of the information necessary to plan and control the test effort for a given iteration. It describes the approach to testing the software.
This Test Plan for Socialyze supports the following objectives:

- Identifies the items that should be targeted by the tests.
- Identifies the motivation for and ideas behind the test areas to be covered.
- Outlines the testing approach that will be used.
- Identifies the required resources and provides an estimate of the test efforts.

### 1.2 Scope

This test plan will address unit and integration tests for the Socialyze software project.
Django's integrated testing functionality provides the basis for test development and execution.
Unit testing is managed with Django's `UnitTest` module.
Integrated testing consists of API tests using Django's lightweight `Client` subsystem and UI workflow tests with the `Selenium` webdriver module.

Tests will focus first and foremost on verifying functionality and usability requirements.
As performance is highly dependent on the interplay between external data providers and the app, as well as the number of concurrent users, performance testing will not be a part of the scope of this test plan.

### 1.3 Intended Audience

This test plan is intended for use by the Socialyze team and future users or maintainers of the Socialyze project.

### 1.4 Document Terminology and Acronyms

| Abbr | Abbreviation                        |
|------|-------------------------------------|
| API  | Application Programmable Interface  |
| CI   | Continuous Integration              |
| CD   | Continuous Delivery/Deployment      |
| n/a  | not applicable                      |
| SRS  | Software Requirements Specification |
| tbd  | to be determined                    |
| UI   | User Interface                      |
| VC   | Version Control                     |
| TDD  | Test Driven Development             |

### 1.5  References


| Title                                                                   | Date       |
| ------------------------------------------------------------------------|:----------:|
| [Blog]()                                                                | Oct. 2018  |
| [GitHub Repository]()                                                   | Oct. 2018  |
| [UC1 XX](../use_cases/UC1_XX.md)                                        | Oct. 2018  |
| [UC2 XX](../use_cases/UC2_XX.md)                                        | Oct. 2018  |
| [UC3 XX](../use_cases/UC3_XX.md)                                        | Oct. 2018  |
| [Test Plan](./TestPlan.md)                                              | Apr. 2019  |
| [SRS](../SoftwareRequirementsSpecification.md)                          | Oct. 2018  |
| [SAD](../SoftwareArchitectureDocument.md)                               | Oct. 2018  |

### 1.6 Document Structure

The document initially provides an overview of testing motivations and goals.
Following the overview, we will provide a broad overview of test items and techniques.
Then we enumerate the software components to be tested and their test modes.
We also list the components and aspects of the system that will not be tested currently.
Finally, we will identify the specific suites and software components used in testing, their output, and the integration of the test process into the broader development cycle.

## 2. Evaluation Mission and Test Motivation

### 2.1 Background

Testing for Socialyze primarily ensures compliance with the software specifications.
During a given development iteration, testing also helps to prevent introduction of breaking changes into production code.
Code written in a development branch must first pass unit and integration tests in order to be allowed into staging deployment.

### 2.2 Evaluation Mission

Testing serves primarily to ensure proper functionality of both individual software modules and their interactions.
This process is automated for smaller components to reduce the individual time spent manually testing and ensure consistency over development iterations.
Additionally, the automated process helps establish a baseline of functionality that new code must adhere to for acceptance into the productive environment.

Tests will change over iterations, as requirements may also evolve during development.
However, automated testing will always serve as an alert system to possible bugs and design errors during development.

### 2.3 Test Motivators

The primary motivation for testing is detecting faults in our implementations of the software requirements.
A secondary motivator is the filtering of faulty code, as explained above.

## 3. Target Test Items

- System-internal interfaces, such as the interface between views and forms (UI and API testing).
- External libraries such as Dash, Plotly, PRAW, and Tweepy.
- Interfacing between external libraries and internal code.
- Interfacing between internal code and the software's database.

## 4. Outline of Planned Tests

Automated testing will consist of Django unit tests and integration tests using Selenium.
Once automated tests are passed, the complete software will undergo manual acceptance testing in its deployed stage on the Heroku platform.

### 4.1 Outline of Test Inclusions

*Frontend: Django Template and JavaScript User Interface*:

- UI testing of views and forms using Selenium

*Backend: Django with various Python extensions*:

- Unit testing of social media communications modules (Reddit/PRAW and Twitter/Tweepy)
- Integration testing of workflows from dataset fetching to visualization
- API testing to ensure proper backend-frontend interaction (using Django's lightweight `Client`)
- Manual testing of Plotly/Dash visualizations

External libraries will not undergo testing where there is no interfacing with internal components.
However, several external libraries are necessary to complete unit tests of internal modules.

### 4.2 Outline of Other Candidates for Potential Inclusion

Eventually, there may be a test script to automatically create Dash apps for manual testing during development.
However, currently Dash apps must be tested by going through a complete user workflow manually.

### 4.3 Outline of Test Exclusions

There is currently no feasible way to automatically test Dash applications integrated into Django.
The existing Dash test framework does not support Django-integrated Dash apps and is generally very limited in its capabilities.
This limitation can be mitigated by filtering out large parts of the Dash-internal code into separate functions and creating unit tests for these.
However, interactions between user and Dash app must still be tested manually.

## 5. Test Approach

### 5.1 Initial Test-Idea Catalogs and Other Reference Sources

- Testing with Django
- UI testing with Selenium
- Faker documentation
- PRAW documentation
- Tweepy documentation
- Behavior-driven development with Django and Behave

### 5.2 Testing Techniques and Types

#### 5.2.1 Data and Database Integrity Testing

|                       | Description                                                         |
|-----------------------|---------------------------------------------------------------------|
|Technique Objective    | Test interaction of database with social media communication and data visualization modules. |
|Technique              | Invoke data fetch and visualization procedures and verify the information present in the database. |
|Oracles                | Presence and consistency of information can be verified using the functionality of the Django ORM. |
|Required Tools         | Django unit test framework and functional database system (either Python-internal SQLite or the PostgreSQL system used in production). |
|Success Criteria       | Database tests cover all Socialyze-internal database relations. |
|Special Considerations |  |

#### 5.2.2 Functional Testing

|                       | Description                                                         |
|-----------------------|---------------------------------------------------------------------|
|Technique Objective    | Exercise backend functionality, including data entry, processing, and retrieval, evaluating target behavior. |
|Technique              | Exercise data input interfaces with different datasets, evaluating the outputs and comparing them to expected results. |
|Oracles                | Django unit tests: use the `assert` functionality to test pass or fail conditions. Selenium: check for page elements that are only present on successful completion of the workflow. |
|Required Tools         | Django test framework, `selenium` package, and a webdriver for headless browser execution via Selenium commands (`gecko` or `chromium` drivers, see References). |
|Success Criteria       | Tests cover all significant paths of execution and deliver the expected results. |
|Special Considerations | We limit testing to whichever browser is currently installed on the user's system (Firefox in the CI pipeline). Functions are basic enough to be the same on every browser. |

#### 5.2.3 Business Cycle Testing

|                       | Description                                                         |
|-----------------------|---------------------------------------------------------------------|
|Technique Objective    | Generate randomized fake datasets to fill in for user data. Generated data serves as input for visualizations. |
|Technique              | Use Python's `Faker` module to generate arbitrary amounts of fake data, write them to database, then execute visualization generation on the generated datasets. |
|Oracles                | Save generated visualizations to file for later viewing. |
|Required Tools         | `Faker`-based data generation module, applied to the object relational model for social media data. |
|Success Criteria       | Every visualization has a test that outputs a file containing its graph based on the generated data. |
|Special Considerations | `Faker` data represents a reasonable approximation of social media data, but may be missing some real-world edge cases. |

#### 5.2.4 User Interface Testing

|                       | Description                                                         |
|-----------------------|---------------------------------------------------------------------|
|Technique Objective    | Test functionality of user interface elements, ensuring they trigger the appropriate processes in the backend. |
|Technique              | Use Python's `selenium` module within Django's test framework to write tests covering the major workflows in the Socialyze app. |
|Oracles                | Selenium allows the test developer to check for the presence of web UI elements on success or failure, which provides a method to automatically assert pass or fail conditions. |
|Required Tools         | Selenium requires an installed webbrowser and an associated webdriver in the PATH variable of the executing machine. |
|Success Criteria       | Selenium reaches the expected outcomes for every input specified over every workflow path. |
|Special Considerations | UI testing with Selenium cannot automatically test Dash apps, which will instead be tested manually. |

#### 5.2.5 Performance Profiling

Due to Socialyze's aforementioned dependency on various external factors (see Section 1.2), performance profiling is outside of the scope of this test plan.

#### 5.2.6 Load Testing

n/a, see above

#### 5.2.7 Stress Testing

n/a, see above

#### 5.2.8 Volume Testing

Volume testing is outside of the scope of this test plan. Static data volume is limited by the Heroku database limitations.

#### 5.2.9 Security and Access Control Testing

User data security is handled by Django's authentication system.
Aside from site user data (i. e. e-mail addresses and full names of users), all information on Socialyze is public social media data and as such is not subject to specific security or access control requirements.

#### 5.2.10 Failover and Recovery Testing

n/a

#### 5.2.11 Configuration Testing

Configuration is primarily dependent on the webbrowser used.
However, Socialyze uses very basic functionality which should work with any modern webbrowser.
Therefore, configuration testing is omitted for this test plan.

#### 5.2.12 Installation Testing

|                       | Description                                                         |
|-----------------------|---------------------------------------------------------------------|
|Technique Objective    | Ensure the installation procedure includes all necessary components for running the software on a given deployment platform. |
|Technique              | Develop automated install scripts for all software dependencies to use on various deployment platforms. |
|Oracles                | An installation test is successful if the functional test suite confirms functionality of all major software components. |
|Required Tools         | Command-line scripting for both Windows and Linux. |
|Success Criteria       | Local deployments on both Windows and Linux are supported. |
|Special Considerations | Deployment would be significantly easier if there is no dependency on external RDBMS, so automated deployment scripts use SQLite rather than the PostgreSQL used on Heroku. |

## 6. Entry and Exit Criteria

### 6.1 Test Plan

#### 6.1.1 Test Plan Entry Criteria

- Basic functionality is implemented so that initial tests can be developed.
- Use case activities are sufficiently defined to fix test pass and fail conditions.

#### 6.1.2 Test Plan Exit Criteria

- All tests are passing.
- Major workflow code is covered by tests.

#### 6.1.3 Suspension and Resumption Criteria

Suspend testing on development of new use cases, until sufficient functionality is implemented.

### 6.2 Test Cycles

##### 6.2.1 Test Cycle Entry Criteria

n/a

##### 6.2.2 Test Cycle Exit Criteria

n/a

##### 6.2.3 Test Cycle Abnormal Termination

n/a

## 7. Deliverables

## 7.1 Test Evaluation Summaries

n/a

## 7.2 Reporting on Test Coverage

Test coverage reports are automatically generated by [Codecov](https://codecov.io/) on build pipeline success.
The application automatically generates coverage reports on each branch and commit for which reporting is activated.
Coverage is visible per file, module, or the entire application.
Codecov offers a range of visualizations for test coverage as well.

## 7.3 Perceived Quality Reports

n/a

## 7.4 Incident Logs and Change Requests

Change requests will be tracked in the project's YouTrack.

## 7.5 Smoke Test Suite and Supporting Test Scripts

User interface and functionality tests defined in Socialyze's `app` module define the basic smoke test suite.
This suite of tests can be executed by running `python manage.py test app`.

## 7.6 Additional Work Products

n/a

### 7.6.1 Detailed Test Results

n/a

### 7.6.2 Additional Automated Functional Test Scripts

- Dash app generator

### 7.6.3 Test Guidelines

n/a

### 7.6.4 Traceability Matrices

n/a

## 8. Testing Workflow

Basic smoke tests should be continuously run during development to assure basic functionality does not break.
Newly developed features or newly implemented use cases should provide basic unit tests to uphold existing test coverage.

## 9. Environmental Needs

Tests should generally be executable on every general-purpose OS with a Python 3 installation.

### 9.1 Base System Hardware

The following table sets forth the system resources for the test effort presented in this Test Plan.

| Resource                                      | Quantity | Name and Type |
|-----------------------------------------------|----------|---------------|
| Database Server                               |          |               |
| - Network or Subnet                           |          | TBD           |
| - Server Name                                 |          | TBD           |
| - Database Name                               |          | TBD           |
| Client Test PCs                               |          |               |
| - Include special configuration requirements  |          | TBD           |
| Test Repository                               |          |               |
| - Network or Subnet                           |          | TBD           |
| - Server Name                                 |          | TBD           |
| Test Development PCs                          |          | TBD           |

### 9.2 Base Software Elements in the Test Environment

The following base software elements are required in the test environment for this Test Plan.

| Software Element Name |  Type and Other Notes                        |
|-----------------------|----------------------------------------------|
| Pycharm Professional  | Test Runner / IDE                            |
| Django Test Framework | Unit testing library                         |
| Selenium              | UI and integration testing library           |
| Django Client         | API testing library                          |
| Cucumber              | human readable test definitions              |

### 9.3 Productivity and Support Tools

The following tools will be employed to support the test process for this Test Plan.

| Tool Category or Type             | Tool Brand Name | Vendor or In-house | Version |
|-----------------------------------|-----------------|--------------------|---------|
| Test Management                   | PyCharm         | JetBrains          | 2021.2  |
| Defect Tracking                   | YouTrack        | JetBrains          |         |
| Test Coverate Monitor or Profiler | Codecov.io      | Codecov            |         |
| Project Management                | YouTrack        | JetBrains          |         |

### 9.4 Test Environment Configurations

The following Test Environment Configurations need to be provided and supported for this project.

| Configuration Name         | Description                                 | Implemented in Physical Configuration |
|----------------------------|---------------------------------------------|---------------------------------------|
| Average user configuration | Firefox or Chromium-based browser on any OS | implemented                           |

## 10. Responsibilities, Staffing, and Training Needs

### 10.1 People and Roles

This table shows the staffing assumptions for the test effort.

| Human Resources                          |                                                                         |                                                                                                                                                                                                                                                                                   |
|------------------------------------------|-------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Role                                     | Minimum Resources Recommended (number of full-time roles allocated)     | Specific Responsbilities or Comments                                                                                                                                                                                                                                              |
| Test Manager                             |                                                                         | Provides management oversight. Responsibilities include: planning and logistics agree mission identify motivators acquire appropriate resources present management reporting advocate the interests of test evaluate effectiveness of test effort                                 |
| Test Analyst                             |                                                                         | Identifies and defines the specific tests to be conducted. Responsibilities include: identify test ideas define test details determine test results document change requests evaluate product quality                                                                             |
| Test Designer                            |                                                                         | Defines the technical approach to the implementation of the test effort. Responsibilities include: define test approace define test automation architecture verify test techniques define testability elements structure test implementation                                      |
| Tester                                   |                                                                         | Implements and executes the tests. Responsibilities include: implement tests and test suites execute test suites log results analyze and recover from test failures document incidents                                                                                            |
| Test System Administrator                |                                                                         | Ensurs test environment and assets are managed and maintained. Responsibilities include: administer test management system install and support access to, and recovery of, test environment configurations and test labs                                                          |
| Database Administrator, Database Manager |                                                                         | Ensures test data (database) environment and assets are managed andmaintained. Responsibilities include: support the administration of test data and test beds (database)                                                                                                         |
| Designer                                 |                                                                         | Identifies and defines the operations, attributes, and associations of the test classes. Responsibilities include: defines the test classes required to support testability requirements as defined by the test team                                                              |
| Implementer                              |                                                                         | Implements and unit tests the test classes and test packages. Responsibilities include: creates the test components required to support testability requirements as defined by the designer                                                                                       |

### 10.2 Staffing and Training Needs

This section outlines how to approach staffing and training the test roles for the project.

## 11. Iteration Milestones

We want to keep over 80% code coverage.

## 12. Risks, Dependencies, Assumptions, and Constraints

| Risk                                    | Mitigation Strategy                                           | Contingency (Risk is realized)                                                                              |
|-----------------------------------------|---------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| Prerequisite Entry Criteria is not met. |  Tester  will define the prerequisites that must be met before Load Testing can start.  Customer  will endeavor to meet prerequisites indicated by  Tester .          | meet outstanding prerequisites consider Load Test Failure                                                   |
| Test data proves to be inadequate.      |  Customer  will ensure a full set of suitable and protected test data is available. br/  Tester  will indicate what is required and will verify suitability of test data. | redefine test data review Test Plan and modify Components (that is, scripts) consider Load Test Failure |
| Database requires a refresh.            |  System Administrator  will endeavor to ensure that the Database is regularly refreshed as required by the  Tester .                                                      | restore data and restart clear Database                                                                     |

## 13. Management Process and Procedures

n/a