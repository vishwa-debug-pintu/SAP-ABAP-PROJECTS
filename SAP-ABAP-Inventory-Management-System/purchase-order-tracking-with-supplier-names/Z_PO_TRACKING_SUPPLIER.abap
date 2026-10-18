REPORT ZPO_TRACKING_SYSTEM.

" Program to display purchase order details using PO number

" Accept the purchase order number and supplier number from the user
PARAMETERS: P_EBELN TYPE EKKO-EBELN,
            P_LIFNR TYPE LFA1-LIFNR.

" Define a structure to store purchase order header, item, and supplier details
TYPES: BEGIN OF TY_PO,
         EBELN TYPE EKKO-EBELN, " Purchase Order Number
         LIFNR TYPE EKKO-LIFNR, " Supplier Number
         BEDAT TYPE EKKO-BEDAT, " Purchase Order Date
         EBELP TYPE EKPO-EBELP, " Purchase Order Item Number
         MATNR TYPE EKPO-MATNR, " Material Number
         WERKS TYPE EKPO-WERKS, " Plant
         MENGE TYPE EKPO-MENGE, " Order Quantity
         MEINS TYPE EKPO-MEINS, " Unit of Measure
         NETPR TYPE EKPO-NETPR, " Net Price
         NAME1 TYPE LFA1-NAME1, " Supplier Name
       END OF TY_PO.

" Create an internal table and work area using TY_PO
DATA: IT_PO TYPE TABLE OF TY_PO,
      WA_PO TYPE TY_PO.

" Fetch purchase order header, item, and supplier information
" EKKO contains purchase order header information
" EKPO contains purchase order item information
" LFA1 contains supplier master information
SELECT A~EBELN
       A~LIFNR
       A~BEDAT
       B~EBELP
       B~MATNR
       B~WERKS
       B~MENGE
       B~MEINS
       B~NETPR
       C~NAME1

  FROM EKKO AS A

  INNER JOIN EKPO AS B
    ON A~EBELN = B~EBELN

  INNER JOIN LFA1 AS C
    ON A~LIFNR = C~LIFNR

  INTO TABLE IT_PO

  WHERE A~EBELN = P_EBELN
    AND A~LIFNR = P_LIFNR.

" Check whether the SELECT statement retrieved any records
IF SY-SUBRC = 0.

  " Display column headings for the purchase order report
  WRITE: / 'PO Number',
           18 'Supplier',
           32 'Supplier Name',
           58 'PO Date',
           75 'Item',
           82 'Material',
           102 'Quantity',
           115 'Unit',
           123 'Plant',
           133 'Net Price'.

  " Draw a horizontal line below the headings
  ULINE.

  " Read each record from the internal table into the work area
  LOOP AT IT_PO INTO WA_PO.

    " Display the purchase order details
    WRITE: / WA_PO-EBELN,
             18 WA_PO-LIFNR,
             32 WA_PO-NAME1,
             58 WA_PO-BEDAT,
             75 WA_PO-EBELP,
             82 WA_PO-MATNR,
             102 WA_PO-MENGE,
             115 WA_PO-MEINS,
             123 WA_PO-WERKS,
             133 WA_PO-NETPR.

  ENDLOOP.

ELSE.

  " Display an information message when no matching PO is found
  MESSAGE 'No purchase order found for the entered number'
    TYPE 'I'.

ENDIF.