
REPORT ZPO_TRACKING_SYSTEM.
" Program to display purchase order details using PO number

" Accept the purchase order number from the user
PARAMETERS P_EBELN TYPE EKKO-EBELN.

" Define a structure to store purchase order header and item details
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
       END OF TY_PO.

" Create an internal table and work area using TY_PO
DATA: IT_PO TYPE TABLE OF TY_PO,
      WA_PO TYPE TY_PO.

" Fetch purchase order header data from EKKO
" Join EKPO to retrieve the corresponding item details
" Match both tables using the purchase order number
" Store the selected records in the internal table IT_PO
SELECT A~EBELN
       A~LIFNR
       A~BEDAT
       B~EBELP
       B~MATNR
       B~WERKS
       B~MENGE
       B~MEINS
       B~NETPR
  FROM EKKO AS A
  INNER JOIN EKPO AS B
  ON A~EBELN = B~EBELN
  INTO TABLE IT_PO
  WHERE A~EBELN = P_EBELN.

" Check whether the SELECT statement retrieved any records
IF SY-SUBRC = 0.

  " Display column headings for the purchase order report
  WRITE: / 'PO Number',
           18 'Supplier',
           32 'PO Date',
           45 'Item',
           55 'Material',
           75 'Quantity',
           90 'Unit',
           98 'Plant',
           108 'Net Price'.

  " Draw a horizontal line below the headings
  ULINE.

  " Read each record from the internal table into the work area
  LOOP AT IT_PO INTO WA_PO.

    " Display the purchase order details in separate columns
    WRITE: / WA_PO-EBELN,
             18 WA_PO-LIFNR,
             32 WA_PO-BEDAT,
             45 WA_PO-EBELP,
             55 WA_PO-MATNR,
             75 WA_PO-MENGE,
             90 WA_PO-MEINS,
             98 WA_PO-WERKS,
             108 WA_PO-NETPR.

  " Process the next purchase order item
  ENDLOOP.

ELSE.

  " Display an information message when no matching PO is found
  MESSAGE 'No purchase order found for the entered number'
    TYPE 'I'.

ENDIF.
" End of the purchase order tracking report
