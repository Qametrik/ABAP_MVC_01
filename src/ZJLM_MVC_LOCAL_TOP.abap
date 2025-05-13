*&---------------------------------------------------------------------*
*&  Include           ZJLM_MVC_LOCAL_TOP
*&---------------------------------------------------------------------*

TABLES spfli.

SELECTION-SCREEN BEGIN OF BLOCK voo WITH FRAME TITLE text-001.
SELECT-OPTIONS: s_emp FOR spfli-carrid,
                s_num FOR spfli-connid.
SELECTION-SCREEN END OF BLOCK voo.
