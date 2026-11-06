# SAP Purchase Order Lifecycle & Monitoring Dashboard

## Project Overview

The **Purchase Order Lifecycle & Monitoring Dashboard** is an SAP ABAP project developed using SAP ECC 6.0. It demonstrates different types of Classical ALV Reports to display and analyze purchase order information.

The project includes three ALV reporting techniques:

1. Standard ALV Report
2. Hierarchical Sequential ALV Report
3. Block ALV Report

The objective is to understand how purchase order header and item details can be retrieved, organized, and displayed using Classical ALV Function Modules.

## Project Structure

```text
PO-Lifecycle-Monitoring-ALV/

ZPO_STANDARD_ALV.abap
ZPO_HIERARCHICAL_ALV.abap
ZPO_BLOCK_ALV.abap
README.md

Images/
 standard-alv.png
 hierarchical-alv.png
 block-alv.png
```

## SAP Tables Used

| Table Name | Description           | Important Fields                  |
| ---------- | --------------------- | --------------------------------- |
| EKKO       | Purchase Order Header | EBELN, BEDAT, LIFNR, BUKRS        |
| EKPO       | Purchase Order Item   | EBELN, EBELP, MATNR, MENGE, NETPR |
| LFA1       | Vendor Master         | LIFNR, NAME1                      |
| MAKT       | Material Description  | MATNR, MAKTX                      |

## 1. Standard ALV Report

**Program Name:** `ZPO_STANDARD_ALV`

Displays purchase order information in a standard ALV Grid format.

**Features:**

- Displays purchase order header and item details.
- Retrieves vendor information using LFA1.
- Uses an ALV Field Catalog to configure columns.
- Uses column positioning and formatting.
- Uses `REUSE_ALV_GRID_DISPLAY`.

**Output Screenshot:**



## 2. Hierarchical Sequential ALV Report

**Program Name:** `ZPO_HIERARCHICAL_ALV`

Displays purchase order header records and their corresponding item records in a hierarchical format.

**Features:**

- Displays purchase order header information.
- Displays related item details under each purchase order.
- Uses EKKO and EKPO tables.
- Uses an ALV Field Catalog for header and item columns.
- Uses `SLIS_KEYINFO_ALV` to establish the relationship between header and item data.
- Uses `REUSE_ALV_HIERSEQ_LIST_DISPLAY`.

**Output Screenshot:**



## 3. Block ALV Report

**Program Name:** `ZPO_BLOCK_ALV`

Displays multiple ALV blocks in a single report output.

**Features:**

- Displays different sets of purchase order information in separate ALV blocks.
- Uses individual field catalogs for each block.
- Displays table-specific information.
- Uses Classical ALV Block List Function Modules.

**Function Modules Used:**

- `REUSE_ALV_BLOCK_LIST_INIT`
- `REUSE_ALV_BLOCK_LIST_APPEND`
- `REUSE_ALV_BLOCK_LIST_DISPLAY`

**Output Screenshot:**



## ABAP Concepts Practiced

- Classical Reports
- Internal Tables and Work Areas
- SELECT-OPTIONS
- Open SQL
- INNER JOIN
- FOR ALL ENTRIES
- ALV Field Catalog
- Column Positioning (`COL_POS`)
- ALV Icons
- Standard ALV
- Hierarchical Sequential ALV
- Block ALV
- Classical ALV Function Modules

## Development Environment

| Tool                 | Details       |
| -------------------- | ------------- |
| SAP System           | SAP ECC 6.0   |
| Programming Language | ABAP          |
| Development Tool     | SAP GUI       |
| ABAP Editor          | SE38          |
| Reporting Technology | Classical ALV |

## Learning Outcome

Through this project, I gained practical experience in developing different types of Classical ALV Reports, working with SAP database tables, creating field catalogs, and displaying structured purchase order information.

---

**Project Category:** SAP ABAP | Classical ALV Reporting

**Author:** Vishwanth Mandapu
