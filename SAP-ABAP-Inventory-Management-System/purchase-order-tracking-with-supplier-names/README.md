# SAP ABAP Purchase Order Tracking with Supplier Names

## Project Overview

This project is a beginner level SAP ABAP project which will help enhance the existing purchase order tracking report by displaying the relevant supplier names along with the desired purchase order and item details.

### SAP Tables used

EKKO table contains the purchase order header information
EKPO table contains the purchase order item information
LFA1 table contains the supplier master data

## Features
The end result of this project will be,

Getting the relevant supplier names from the LFA1 table based on the input purchase order number and supplier number.
Displaying the purchase order header and item details along with the supplier names retrieved from the above step in an abap list report.
Making use of the three SAP tables EKKO, EKPO, and LFA1 connected together via INNER JOINs to display the necessary purchase order details.
Displaying a message in case of no records found.

## ABAP Concepts involved
Following are the concepts involved in developing this program,

PARAMETERS to get user input
TYPES and DATA declaration
OPEN SQL SELECT query making use of multiple INNER JOINs
Internal tables and work area
LOOP AT to loop through the data
WRITE statement to display purchase order details and message
SY-SUBRC to check if any data was found

The name of the program is simply called as,

ZPO_TRACKING_SYSTEM

## SAP ERP Details
This program was developed in,

SAP ECC 6.0
Using SAP GUI
SE38 ABAP editor

## Enhancements
Future enhancements can include,

Making the parameters optional
Adding more fields to search by including date fields
Displaying data in a more presentable format like ALV
More fields related to suppliers like the address etc.

## Author

Vishwanth Mandapu