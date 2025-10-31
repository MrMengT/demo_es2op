CLASS lcl_head DEFINITION INHERITING FROM cl_abap_behavior_event_handler.
  PRIVATE SECTION.
    METHODS on_delete FOR ENTITY EVENT delete FOR zi_um_head~deleteEvent.
ENDCLASS.

CLASS lcl_head IMPLEMENTATION.

  METHOD on_delete.

    ASSERT 1 = 2.
*    cl_abap_tx=>save( ).
*
*    lt_event = VALUE #( FOR event_data IN autosavedeleted ( order_number = event_data-ordernumber
*                                                            note = event_data-note ) ).
*
*    INSERT ztrap_demo_event FROM TABLE lt_event.

  ENDMETHOD.
ENDCLASS.
