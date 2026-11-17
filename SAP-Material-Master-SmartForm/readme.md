# SAP Smart Form – Material Labels

## Project Overview
This project demonstrates the development of a custom SAP Smart Form in SAP ECC 6.0 to generate material labels using material master data.

The Smart Form retrieves material information from the SAP material master table and displays it in a structured label format.

## Project Details
- **Project Name:** Material Label Generation using Smart Forms
- **Smart Form Name:** `ZF_FORM_5`
- **SAP Version:** SAP ECC 6.0
- **Module:** SAP ABAP
- **Main Table:** MARA

## Features
- Fetches material details from the MARA table.
- Generates multiple material labels based on user input.
- Displays material information in a structured format.
- Uses Smart Form table nodes to organize output.
- Supports print preview.

## Input Parameters
| Parameter | Description |
|---|---|
| P_MATNR | Material Number |
| P_NOL | Number of Labels |

## SAP Objects Used
| Object | Purpose |
|---|---|
| `ZF_FORM_5` | Custom Smart Form |
| `MARA` | Material Master Data |
| `SE38` | ABAP Report Development |
| `SMAR
TFORMS` | Smart Form Development |

## Project Structure
ZF_FORM_5/
ZF_FORM_5.xml
README.md
 images/
 smartform-output.png
 smartform.png
-output.png


## Screenshots

### 1. Smart Form Layout
![Smart Form Layout](images/smartform-layout.png)

### 2. Table Configuration
![Smart Form Table Configuration](images/smartform-table.png)

### 3. Smart Form Output
![Smart Form Output](images/smartform-output.png)

## Learning Outcomes
- Understanding SAP Smart Forms.
- Working with Smart Form windows and table nodes.
- Passing data from an ABAP report to a Smart Form.
- Retrieving material master data using Open SQL.
- Generating and previewing formatted print output.

## Technologies Used
- SAP ECC 6.0
- ABAP
- SAP Smart Forms
- SAP GUI
- Visual Studio Code
- Git and GitHub

## Author
**Vishwanth Mandapu**