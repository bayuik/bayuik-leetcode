SELECT customer_id, COUNT(visit_id) AS count_no_trans
FROM Visits v
WHERE NOT EXISTS (
                SELECT visit_id FROM Transactions t
                WHERE t.visit_id = v.visit_id
            )
GROUP BY customer_id