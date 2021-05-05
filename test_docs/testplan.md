# Test plan

## 1.	Introduction
### 1.1	Purpose
With this testplan we want to secure the quality of our software.
We want to make sure that we implement test to most important parts of our software.
In this testplan stands the informations how we want to plan and monitor our different tests.
With the testplan for **Socialyze** we want to describe the following parts:
- The monitoring of the important software parts for tests. 
- The different test technolgies we use.


### 1.2	Scope
In this document the Unittests of the software are describt. 

### 1.3	Intended Audience
The Intended Audience for the document is the Socialyze project team.

### 1.4	Document Terminology and Acronyms
- **n/a**	not applicable
- **tbd**	to be determined

### 1.5	 References
| Reference        | 
| ------------- |
| tbd | 

## 2.	Evaluation Mission and Test Motivation
### 2.1	Background
With the testing code we reduce the appearence of unexcepted errors.
Also we want to detected diiferent kind of bugs before the final user report it.
### 2.2	Evaluation Mission
The mission is the detection and the tracking of the bugs in development environment.
### 2.3	Test Motivators
The testing motivators are:
- Quality
- Use-Cases
- Requirements

One other point is the working in a stable environment, with a only a small amount of errors.

## 3.	Target Test Items
We identifies some different parts of our software for testing.

Parts for testing:
- The connection to the social media sites (Fetch Use-Case)
- The write and read functions for the data base (Database-Functions)
- The visualization interface for the user (Visualize Use-Case)
- The Inputhandling from the HTML-Forms

## 4.	Outline of Planned Tests
### 4.1	Outline of Test Inclusions
tbd
### 4.2	Outline of Other Candidates for Potential Inclusion
Some other candidates are performing testing and the testing of security aspects.
### 4.3 Outline of Test Exclusions
n/a

## 5.	Test Approach
### 5.1 Initital Test-Idea Catalogs and Other Reference Sources
**n/a**
### 5.2	Testing Techniques and Types
#### 5.2.1 Connection to Social Media Sites
|| |
|---|---|
|Technique Objective  	|The connection to the sites must run|
|Technique 		|Unit Tests|
|Oracles 		|A connection to the sites can be established|
|Required Tools 	|Django - UnitTests|
|Success Criteria	| Passing the tests|
|Special Considerations	|-|

#### 5.2.2 Write/Read Database Functions
|| |
|---|---|
|Technique Objective  	| Every interaction with database should deliver the expected result|
|Technique 		|Unit Tests|
|Oracles 		|The database delivers the expected data|
|Required Tools 	|Django - UnitTests|
|Success Criteria	|Passing the tests|
|Special Considerations	|-|

#### 5.2.3 Visualization Interface
tbd

#### 5.2.4 Input handling from HTML-Forms 
|| |
|---|---|
|Technique Objective  	|The Forms should threw an error if the input is incorrect|
|Technique 		|Unit Tests|
|Oracles 		|The input of the forms is checked|
|Required Tools 	|Django - UnitTests|
|Success Criteria	|Passing the tests|
|Special Considerations	|-|

## 6.	Entry and Exit Criteria
### 6.1	Test Plan
#### 6.1.1	Test Plan Entry Criteria
Pushing new commits to github will trigger the CI/CD pipeline with heroku.
#### 6.1.2	Test Plan Exit Criteria
When all tests pass without throwing an exception.
#### 6.1.3 Suspension and Resumption Criteria
n/a

## 7.	Deliverables
### 7.1	Test Evaluation Summaries
tbd
### 7.2	Reporting on Test Coverage
tbd

### 7.3	Perceived Quality Reports
n/a
### 7.4	Incident Logs and Change Requests
n/a
### 7.5	Smoke Test Suite and Supporting Test Scripts
n/a
### 7.6	Additional Work Products
#### 7.6.1	Detailed Test Results
tbd

#### 7.6.2	Additional Automated Functional Test Scripts
**n/a**
#### 7.6.3	Test Guidelines
The test should be easy to understand to avoid testing failures.
On the other hand the test should include especially complex and critical function in the software code.
#### 7.6.4	Traceability Matrices
**n/a**

## 8.	Testing Workflow
Developers should execute tests locally before pushing source code. When pushing to branches, the tests are executed automatically.
## 9.	Environmental Needs
This section presents the non-human resources required for the Test Plan.
### 9.1	Base System Hardware
tbd

### 9.2	Base Software Elements in the Test Environment
tbd
### 9.3	Productivity and Support Tools
tbd

### 9.4	Test Environment Configurations
n/a 

## 10.	Responsibilities, Staffing, and Training Needs
### 10.1	People and Roles
tbd

### 10.2	Staffing and Training Needs
**n/a**
## 11.	Iteration Milestones
tbd

## 12.	Risks, Dependencies, Assumptions, and Constraints
tbd
## 13. Management Process and Procedures
**n/a**
