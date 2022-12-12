SELECT
	om.id AS '주문번호',
	od.product_id AS '제품번호',
	pm.product_name,
	pm.product_price,
	od.order_stock,
	om.user_id,
	um.name
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id)
	LEFT OUTER JOIN product_mst pm ON(pm.id = od.product_id)
	LEFT OUTER JOIN user_mst um ON(um.id = om.user_id)
ORDER BY
	od.id;
	
SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_image_mst ni ON(ni.notice_id = nm.id);
	
SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON (ud.id = um.id);
	
SELECT
	*
FROM
	user_dtl;
	
SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	LEFT OUTER JOIN user_mst um ON (um.id = om.user_id);

SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN order_mst om on (om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id);



























