# Socialyze - Software Requirements Specification

## Table of Contents

-   [Socialyze - Software Requirements Specification](#socialyze---software-requirements-specification)

    -   [Table of Contents](#table-of-contents)

    -   [1. Introduction](#1-introduction)

        -   [1.1 Purpose](#11-purpose)
        -   [1.2 Scope](#12-scope)
        -   [1.3 Definitions, Acronyms and Abbreviations](#13-definitions-acronyms-and-abbreviations)
        -   [1.4 References](#14-references)
        -   [1.5 Overview](#15-overview)

    -   [2. Overall Description](#2-overall-description)

        -   [2.1 Vision](#21-vision)

    -   [2.2 Product perspective](#22-product-perspective)

        -   [2.3 User characteristics](#23-user-characteristics)
        -   [2.4 Dependencies](#24-dependencies)

    -   [3. Specific Requirements](#3-specific-requirements)

        -   [3.1 Functionality - Backend](#31-functionality--data-backend)

        -   [3.2 Functionality - Frontend](#32-functionality--user-interface)

            -   [3.2.1 User system](#321-user-system)
            -   [3.2.3 Flashcard boxes](#323-flashcard-boxes)
            -   [3.2.4 Flashcards](#324-flashcards)
            -   [3.2.5 Statistics](#325-statistics)

        -   [3.3 Usability](#33-usability)

        -   [3.4 Reliability](#34-reliability)

            -   [3.4.1 Availability](#341-availability)
            -   [3.4.2 MTBF, MTTR](#342-mtbf-mttr)
            -   [3.4.3 Accuracy](#343-accuracy)
            -   [3.4.4 Bug classes](#344-bug-classes)

        -   [3.5 Performance](#35-performance)

            -   [3.5.1 Response time](#351-response-time)
            -   [3.5.2 Throughput](#352-throughput)
            -   [3.5.3 Capacity](#353-capacity)
            -   [3.5.4 Resource utilization](#354-resource-utilization)

        -   [3.6 Supportability](#36-supportability)

        -   [3.7 Design Constraints](#37-design-constraints)

            -   [3.7.1 Development tools](#371-development-tools)
            -   [3.7.2 Spring Boot](#372-spring-boot)
            -   [3.7.3 ReactJS](#373-reactjs)
            -   [3.7.4 Supported Platforms](#374-supported-platforms)

        -   [3.8 Online User Documentation and Help System Requirements](#38-online-user-documentation-and-help-system-requirements)

        -   [3.9 Purchased Components](#39-purchased-components)

        -   [3.10 Interfaces](#310-interfaces)

            -   [3.10.1 User Interfaces](#3101-user-interfaces)
            -   [3.10.2 Hardware Interfaces](#3102-hardware-interfaces)
            -   [3.10.3 Software Interfaces](#3103-software-interfaces)
            -   [3.10.4 Communications Interfaces](#3104-communications-interfaces)

        -   [3.11 Licensing Requirements](#311-licensing-requirements)

        -   [3.12 Legal, Copyright and other Notices](#312-legal-copyright-and-other-notices)

        -   [3.13 Applicable Standards](#313-applicable-standards)

    -   [4. Supporting Information](#4-supporting-information)

## 1. Introduction

### 1.1 Purpose

This Software Requirements Specification (SRS) was created to collect and organize the requirements for the Socialyze website. 
The SRS describes all specifications for the application "Socialyze". 
It includes an overview about this project and its vision, detailed information about the planned features and boundary conditions of the development process. Also it describes the behavior and use cases of our software artifact.

### 1.2 Scope

This application will be an information visualization web application where users can create custom visualizations of social network trends, user networks, and other public information. 
Users will be able to choose from a selection of websites and datasets to create visualizations in order to better study or portray social media trends and topics. The site will offer an interactive graphical interface over which the users can select datasets and types of visualizations (bar graphs, diagrams, network graphs). Modifications to the visualization's settings will be immediately visible to the user. If possible (and relevant), the visualized datasets will show live updates.
The exact details will be worked out in future.

### 1.3 Definitions, Acronyms and Abbreviations

| Term     |                                     |
| -------- | ----------------------------------- |
| **SRS**  | Software Requirements Specification |
| **JSON** | JavaScript Object Notation          |
| **API**  | Application Programming Interface   |
| **MTBF** | Mean Time Between Failures          |
| **MTTR** | Mean Time To Repair                 |
| **DTO**  | Data Transfer Object                |
| **HTTP** | Hypertext Transfer Protocol         |
| **FAQ**  | Frequently Asked Questions          |
| **REST** | Representational State Transfer     |
| **n/a**  | not applicable                      |
| **tbd**  | to be determined                    |

tbd

### 1.4 References

| Title                                                                                                 | Date       |
| ----------------------------------------------------------------------------------------------------- | ---------- |
| [Blog](https://flashcardcommunity.wordpress.com/)                                                     | 17/10/2018 |
| [GitHub](https://github.com/phoenixfeder/fc-com/)                                                     | 17/10/2018 |
| [Spring Boot](https://spring.io/projects/spring-boot)                                                 | 19/10/2018 |
| [ReactJS](https://reactjs.org/)                                                                       | 19/10/2018 |
| [Use Case Diagram](https://github.com/phoenixfeder/fc-com/blob/master/FlashCardCommunityUseCases.png) | 21/10/2018 |

tbd

### 1.5 Overview

The following chapter provides an overview of this project with vision, the functionality of the result and an Overall Use Case Diagram. The third chapter (Requirements Specification) delivers more details about the specific requirements in terms of functionality, usability and design parameters. In order to achieve a high level of specification in defining the requirements, all functions presented in the diagram are separated into subsections of section "3.1 Functionality". And last there is chapter four with supporting information.



## 2. Overall Description

### 2.1 Vision

Socialyze will offer its users an online interface that allows them to extract data from their social media profiles by entering their user data or connecting the app to their social media accounts.
Users can then create visualizations from these datasets that allow them to gain insights into their social media activities.
For example, a Reddit user will be able to create a ranking of their most posted to or commented on subreddits, a word cloud of their comments,
or correlate the number of upvotes on a post or comment with the subreddit the content was posted on.

The app will consist of a web presence created in Python's *Django* framework.
The site will allow users to save their social media datasets to a server-side database.
From there, the data can be reused on subsequent visits.
Users will be able to choose one or more datasets and a compatible visualization, which the app will then create and display.
From there, a user will have the option to export the visualization and save a local copy.

## 2.2 Product Perspective

Socialyze is a webapp, i.e. an online presence accessed by users via a web browser.
It will include the following features:

* **User accounts** - Users will be able to create an account on the site.
  Users may then add various social media identities (providers tbd) to their account.
  Depending on the accounts added, users will then have access to various datasets mined from their social media presence.
* **Visualization toolbox** - A user will be able to select datasets from his social media presence and visualization types
  (e.g. bar graphs, time-series graphs, pie charts).
  The app will then create a visualization conforming to the user's specifications.
* **Database** - User datasets scraped or collected from the social network API will be stored in the app's database,
  where users will be able to access them on subsequent logins.
* **Export** - Users will be able to export and save the visualizations they create in common file formats (PNG, PDF).
* **Data filtering** - Users will be able to filter datasets by certain criteria, such as their age or content.

### 2.3 User Characteristics

The user needs a modern graphical web browser and access to the internet in order to use Socialyze.
While a fundamental understanding of information visualization is certainly useful,
the goal of the app is to provide an interface that enables lay users to create interesting visualizations.
Additionally, the user will need to supply one or more social media identities.
Therefore, in order to meaningfully use the application, a user must have at least one account on a social media site supported by Socialyze.

### 2.4 Dependencies

Socialyze is heavily dependent on the social media sites it draws its datasets from.
In particular, this means that the app is very dependent on the APIs it uses to query data from social media sites.
If a site does not supply a certain data point (e.g. a channel's exact subscriber count on YouTube, as of September 2019),
then the data point cannot be made available to users.
Since a certain amount of data will almost surely be obtained through webscraping,
the app's functionality will also be impacted by possible overhauls or redesign efforts on part of its data source pages.

On the user side, the app is dependent on the type of web browser used.
A browser that does not support HTML5 will struggle to correctly display the content of Socialyze.
Socialyze is, for obvious reasons, incompatible with a text-based webbrowser.
For development purposes, the team will limit itself to developing the app for use with the current versions of three widely used webbrowsers:
Mozilla Firefox, Google Chrome, and Microsoft Edge (as of 18/10/2020).

## 3. Specific Requirements

### 3.1 Functionality � Data Backend

#### 3.1.1 Read data given over API endpoints

#### 3.1.2 Parse data

#### 3.1.3 Provide data

### 3.2 Functionality � User Interface

#### 3.2.1 User system

#### 3.2.3 Flashcard boxes

#### 3.2.4 Flashcards

#### 3.2.5 Statistics

### 3.3 Usability

### 3.4 Reliability

#### 3.4.1 Availability

#### 3.4.2 MTBF, MTTR

#### 3.4.3 Accuracy

#### 3.4.4 Bug classes

### 3.5 Performance

#### 3.5.1 Response time

#### 3.5.2 Throughput

#### 3.5.3 Capacity

#### 3.5.4 Resource utilization

### 3.6 Supportability

### 3.7 Design Constraints

#### 3.7.1 Development tools

#### 3.7.2 Spring Boot

#### 3.7.3 ReactJS

#### 3.7.4 Supported Platforms

### 3.8 Online User Documentation and Help System Requirements

### 3.9 Purchased Components

### 3.10 Interfaces

#### 3.10.1 User Interfaces

#### 3.10.2 Hardware Interfaces

#### 3.10.3 Software Interfaces

#### 3.10.4 Communications Interfaces

### 3.11 Licensing Requirements

### 3.12 Legal, Copyright and other Notices

### 3.13 Applicable Standards

## 4. Supporting Information
