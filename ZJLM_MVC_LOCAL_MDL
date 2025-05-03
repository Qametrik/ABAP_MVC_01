*&---------------------------------------------------------------------*
*&  Include           ZJLM_MVC_LOCAL_MDL
*&---------------------------------------------------------------------*

CLASS lcl_model DEFINITION.

  PUBLIC SECTION.

    DATA it_index TYPE lvc_t_row .

    METHODS m_executar
      RETURNING value(r_relatorio) TYPE spfli_tab.

    METHODS m_handle_user_command
          FOR EVENT user_command OF cl_gui_alv_grid
          IMPORTING
            e_ucomm .

    METHODS m_handle_toolbar
      FOR EVENT toolbar OF cl_gui_alv_grid
      IMPORTING
        e_object .

    METHODS m_handle_click
      FOR EVENT hotspot_click OF cl_gui_alv_grid
      IMPORTING
        es_row_no
        e_column_id
        e_row_id .

    METHODS m_handle_data_changed
      FOR EVENT data_changed OF cl_gui_alv_grid
      IMPORTING
        er_data_changed
        e_ucomm .

    METHODS m_set_voo
      IMPORTING i_voo TYPE typ_r_connid.

    METHODS m_set_companhia
      IMPORTING i_companhia TYPE typ_r_carrid.

  PRIVATE SECTION.

    DATA r_companhia TYPE typ_r_carrid.
    DATA r_voo TYPE typ_r_connid.

    METHODS m_get_relatorio
      RETURNING value(r_relatorio) TYPE spfli_tab.

ENDCLASS.                    "lcl_control DEFINITION

*----------------------------------------------------------------------*
*       CLASS lcl_control IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_model IMPLEMENTATION.

  METHOD m_set_voo.

    r_voo = i_voo.

  ENDMETHOD.                    "m_set_voo

  METHOD m_set_companhia.

    r_companhia = i_companhia.

  ENDMETHOD.                    "m_set_companhia

  METHOD m_executar.

    r_relatorio = m_get_relatorio( ).

  ENDMETHOD.                    "m_executar

  METHOD m_get_relatorio.

    SELECT *
      FROM spfli
      INTO TABLE r_relatorio
          WHERE carrid IN r_companhia
          AND   connid IN r_voo.

    IF sy-subrc IS INITIAL.
      SORT r_relatorio BY carrid.
    ENDIF.

  ENDMETHOD.                    "m_get_relatorio

  METHOD m_handle_user_command.

*    CASE e_ucomm.
*      WHEN 'ENVIAR'.
*        m_reenvio( ).
*      WHEN 'REPLAY'.
*        m_replay( ).
*      WHEN OTHERS.
*    ENDCASE.

  ENDMETHOD.                    "m_handle_user_command

  METHOD m_handle_toolbar.
    CONSTANTS: c_separator TYPE i VALUE 3.

    DATA: wal_toolbar  TYPE stb_button.

    CLEAR wal_toolbar.
    wal_toolbar-function   = 'REPLAY'.
    wal_toolbar-icon       = icon_price.
    wal_toolbar-quickinfo  = 'Executar Baixa'(003).
    wal_toolbar-text       = 'Replay'(004).
    wal_toolbar-disabled   = ' '.
    APPEND wal_toolbar TO e_object->mt_toolbar.

    wal_toolbar-butn_type = c_separator.
    APPEND wal_toolbar TO e_object->mt_toolbar.

    CLEAR wal_toolbar.
  ENDMETHOD.                    "m_handle_toolbar
  METHOD m_handle_click.
  ENDMETHOD.                    "m_handle_click
  METHOD m_handle_data_changed.
  ENDMETHOD.                    "m_handle_data_changed

ENDCLASS.                    "lcl_model IMPLEMENTATION
