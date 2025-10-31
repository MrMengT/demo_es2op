@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HEAD'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_um_head
  provider contract transactional_query
  as projection on zi_um_head
{
  key PurchaseOrder,
      CreationDate,
      CreatedByUser,
      Supplier,
      DocumentCurrency,
      /* Associations */
      _item : redirected to composition child zc_um_item
}
