@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HEAD'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_um_head
  as select from I_PurchaseOrderAPI01 as head
  association [0..1] to I_Supplier as _supplier on $projection.Supplier = _supplier.Supplier
  composition [0..*] of zi_um_item as _item
{
  key head.PurchaseOrder,
      head.CreationDate,
      head.CreatedByUser,
      head.Supplier,
      head.DocumentCurrency,

      _item
}
