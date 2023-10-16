%dw 2.0
output application/json
---
{
    event: payload.event.event_name,
    product: payload.event.product.name,
    feature: payload.event.product.feature,
    zone: payload.event.area.zone,
    // location: payload.event.area.building ++ ", " ++ payload.event.event_address.city,
    location: "$(payload.event.area.building), $(payload.event.event_address.city)",
    when: payload.event.event_start replace "/" with "-",
    until: payload.event.event_end as Date {format: "yyyy.MM.dd"} as String {format: "yyyy-MM-dd"},
    fun_rating: if (payload.event.area.fun_rating > 80) "high" else "low"
}

/* Expected output

{
  "event": "TRAILBLAZER DX 23",
  "product": "MuleSoft",
  "feature": "DataWeave",
  "zone": "Mini Hacks",
  "location": "Moscone West, San Francisco",
  "when": "2023-03-06",
  "until": "2023-03-08",
  "fun_rating": "high"
}

*/