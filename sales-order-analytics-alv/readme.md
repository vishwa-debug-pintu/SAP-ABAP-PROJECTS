# Sales Order Analytics ALV Report

## Project Overview

This is an ABAP Reporting project in SAP which pulls header data of sales order from SAP standard table VBAK and displays the output using ALV Grid .

User inputs can be provided by entering one or more sales order numbers.

## Technology Used

SAP ECC 6.0

ABAP

ALV Grid

Function Module - REUSE_ALV_GRID_DISPLAY

SAP Table - VBAK

## Features :

Filter sales order based on selection screen.

Sales Order Number.

Sales Order Creation Date.

Sales Order Type.

Sales Organisation.

Distribution Channel.

Division.

Customer Account Numbers.

Customising the column headers and the order in the ALV.

Bold the required columns.

Display message if no Sales Orders are found.

Error Handling in ALV.

## SAP Table :

Table Description

VBAK Sales Document Header

## Program Name:

Z_ALV_SALES_ANALYTICS

## Execution Steps:

Launch SAP GUI.

Go to Transaction SE38.

Enter Program Name Z_ALV_SALES_ANALYTICS.

Execute.

Enter Sales Order number/range in selection screen.

View output in ALV Grid.

## Project Screenshot :

Screenshot of the report will be added once the program is tested in SAP GUI.

![Sales Order Analytics ALV Report Output](images/sales-order-alv-output.png)

## What I learnt:

Creating Selection Screens in ABAP using SELECT-OPTIONS.

Using OPEN SQL to fetch data.

Internal Tables.

Field Catalogue.

Displaying output in ALV Grid.

Basic Error handling.

## Further Improvements:

Adding filters for the date of the sales order.

Display Customer Names.

Add Totals & Calculated Sales Metrics.

Add Navigation to view the details of the sales order.

Improve formatting of Columns.

## Author

Vishwanth Mandapu