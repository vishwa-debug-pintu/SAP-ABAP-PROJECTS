REPORT Z_SALES_ORDER_REPORT
LINE-COUNT 10(1).

TABLES : VBAK,vbap.
* Selection screen

SELECT-OPTIONS S_VBELN FOR VBAK-VBELN.

* Structure for sales order and item data
TYPES: BEGIN OF TY_TABLE,
         VBELN  TYPE VBAK-VBELN,
         ERDAT  TYPE VBAK-ERDAT,
         AUART  TYPE VBAK-AUART,
         POSNR  TYPE VBAP-POSNR,
         MATNR  TYPE VBAP-MATNR,
         KWMENG TYPE VBAP-KWMENG,
         NETPR  TYPE VBAP-NETPR,
       END OF TY_TABLE.


DATA: IT_TABLE TYPE TABLE OF TY_TABLE,
      WA_TABLE TYPE TY_TABLE.
* Fetch sales order and item data
SELECT A~VBELN
       A~ERDAT
       A~AUART
       B~POSNR
       B~MATNR
       B~KWMENG
       B~NETPR
  FROM VBAK AS A
  INNER JOIN VBAP AS B
  ON A~VBELN = B~VBELN
  INTO TABLE IT_TABLE
  WHERE A~VBELN IN S_VBELN.

IF SY-SUBRC = 0.


  WRITE:/'Sales Number',
         15'created on',
  28'order type',
  41'Item No',
  51'Material',
  73'Quantity',
  88'Net price'.
  LOOP AT IT_TABLE INTO WA_TABLE.
    WRITE:/ WA_TABLE-VBELN,
            15 WA_TABLE-ERDAT,
            28 WA_TABLE-AUART,
            41 WA_TABLE-POSNR,
            51 WA_TABLE-MATNR,
            62 WA_TABLE-KWMENG,
            80 WA_TABLE-NETPR.


  ENDLOOP.
ELSE.
  MESSAGE 'Enter correct Sales order number ' TYPE 'I'.
ENDIF.
* to display at top of the page
top-OF-PAGE.
 write:/30 'Sales Order Report'.
 skip 1.

* Footer at the bottom of each list page
 end-of-PAGE.
 write:/30 'end of Sales Order Report'.