SELECT properties.city as city, count(reservations.id) as total_reservations
FROM properties
JOIN reservations on properties.id = reservations.property_id
GROUP BY properties.city
ORDER BY total_reservations DESC;