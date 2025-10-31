@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITEM'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zc_um_item
  as projection on zi_um_item
{
  key PurchaseOrder,
  key PurchaseOrderItem,
      Material,
      /* Associations */
      _head : redirected to parent zc_um_head
}
