Sales Order Management Report

Overview
An SAP ABAP Program that will display details about Sales Order Headers and Items.

Features
The ability to select Sales Orders using SELECT-OPTIONS.
An INNER JOIN has been used to display Sales Order and Item Details.
Displaying Sales order number, date created, order type, item number, material, quantity and net price.
Using LOOP AT to display records. A classical output has been implemented.
Headers have been displayed using TOP-OF-PAGE.
A footer has been implemented using END-OF-PAGE.

SAP Systems Used
SAP ECC 6.0
ABAP Workbench (SE38)

SAP Tables Used
VBAK – Sales Document Header Data
VBAP – Sales Document Item Data

ABAP Concepts Used
SELECT-OPTIONS
TYPES
DATA
Open SQL SELECT
INNER JOIN
Internal tables and Work Areas
SY-SUBRC
WRITE
TOP-OF-PAGE
END-OF-PAGE

Program Name
Z_SALES_ORDER_REPORT

Note:
This project was just to understand how to build a classical ABAP report. Please test your program in SAP before running it with business data.