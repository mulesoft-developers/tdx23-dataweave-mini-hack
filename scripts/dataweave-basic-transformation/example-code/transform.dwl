%dw 2.0
output application/json

var load = if (payload.order.quantity > 10) "heavy" else "light"

fun normalize(date) = (date) replace "/" with "-" replace "." with "-"
---
{
    id: payload.order.order_id,
    product: upper(payload.order.product.name),
    orderedby: payload.order.ordered_by,
    billingto: payload.order.billing_address.address ++ ', ' ++ payload.order.billing_address.city,
    shippingto: payload.order.shipping_address.address ++ ', ' ++ payload.order.shipping_address.city,
    orderedon: normalize(payload.order.ordered_on),
    shippedon: normalize(payload.order.shipped_on),
    weight: load
}
