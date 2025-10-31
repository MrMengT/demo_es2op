@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITEM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_um_item
  as select from I_PurchaseOrderItemAPI01
  association to parent zi_um_head as _head on $projection.PurchaseOrder = _head.PurchaseOrder
{
  key PurchaseOrder,
  key PurchaseOrderItem,
      Material,
      _head
}
