REPORT ZPO_TRACKING_SYSTEM.

PARAMETERS P_EBELN TYPE EKKO-EBELN.

TYPES: BEGIN OF TY_PO,
         EBELN TYPE EKKO-EBELN,
         LIFNR TYPE EKKO-LIFNR,
         BEDAT TYPE EKKO-BEDAT,
         EBELP TYPE EKPO-EBELP,
         MATNR TYPE EKPO-MATNR,
         WERKS TYPE EKPO-WERKS,
         MENGE TYPE EKPO-MENGE,
         MEINS TYPE EKPO-MEINS,
         NETPR TYPE EKPO-NETPR,
       END OF TY_PO.

DATA: IT_PO TYPE TABLE OF TY_PO,
      WA_PO TYPE TY_PO.

SELECT A~EBELN
       A~LIFNR
       A~BEDAT
       B~EBELP
       B~WERKS
       B~MENGE
       B~MEINS
       B~NETPR
  FROM EKKO AS A
  INNER JOIN EKPO AS B
  ON A~EBELN = B~EBELN
  INTO TABLE IT_PO
  WHERE A~EBELN = P_EBELN.

IF SY-SUBRC = 0.

  WRITE: / 'PO Number',
           18 'Supplier',
           32 'PO Date',
           45 'Item',
           55 'Material',
           75 'Quantity',
           90 'Unit',
           98 'Plant',
           108 'Net Price'.

  ULINE.

  LOOP AT IT_PO INTO WA_PO.

    WRITE: / WA_PO-EBELN,
             18 WA_PO-LIFNR,
             32 WA_PO-BEDAT,
             45 WA_PO-EBELP,
             55 WA_PO-MATNR,
             75 WA_PO-MENGE,
             90 WA_PO-MEINS,
             98 WA_PO-WERKS,
             108 WA_PO-NETPR.

  ENDLOOP.

ELSE.

  MESSAGE 'No purchase order found for the entered number'
    TYPE 'I'.

ENDIF.