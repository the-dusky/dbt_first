SELECT 
	orders.created_at as orderDate, 
	orders.shipping_address__latitude as latitude, 
	orders.shipping_address__longitude as longitude,
	orders.shipping_address__country as country,
	orders.shipping_address__province as state_province,
	order_lines.sku as sku,
	order_lines.quantity as qty,
	order_lines.price,
	order_lines.total_discount
FROM 
	belair_athletics_shopify.orders as orders 
	LEFT JOIN belair_athletics_shopify.orders__line_items as order_lines 
		on orders.id = order_lines._sdc_source_key_id