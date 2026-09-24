-- 1. Display all tickets with customer and agent information

SELECT
    t.ticket_id,
    c.customer_name,
    a.first_name || ' ' || a.last_name AS agent_name,
    t.category,
    t.priority,
    t.status
FROM tickets t
JOIN customers c
    ON t.customer_id = c.customer_id
LEFT JOIN agents a
    ON t.agent_id = a.agent_id
ORDER BY t.ticket_id;


-- 2. Count how many tickets each agent has handled

SELECT
    a.first_name || ' ' || a.last_name AS agent_name,
    COUNT(t.ticket_id) AS tickets_handled
FROM agents a
LEFT JOIN tickets t
    ON a.agent_id = t.agent_id
GROUP BY a.agent_id, a.first_name, a.last_name
ORDER BY tickets_handled DESC;


-- 3. Find all open high-priority tickets

SELECT
    ticket_id,
    category,
    priority,
    status,
    created_at
FROM tickets
WHERE priority = 'High'
AND status = 'Open';


-- 4. Count tickets by category

SELECT
    category,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY category
ORDER BY total_tickets DESC;


-- 5. Calculate average resolution time for resolved tickets

SELECT
    ROUND(
        AVG(
            EXTRACT(EPOCH FROM (resolved_at - created_at)) / 3600
        )::numeric,
        2
    ) AS average_resolution_hours
FROM tickets
WHERE resolved_at IS NOT NULL;


-- 6. Show resolved ticket totals by agent

SELECT
    a.first_name || ' ' || a.last_name AS agent_name,
    COUNT(t.ticket_id) AS resolved_tickets
FROM agents a
JOIN tickets t
    ON a.agent_id = t.agent_id
WHERE t.status = 'Resolved'
GROUP BY a.agent_id, a.first_name, a.last_name
ORDER BY resolved_tickets DESC;


-- 7. Calculate open tickets by priority

SELECT
    priority,
    COUNT(*) AS open_tickets
FROM tickets
WHERE status = 'Open'
GROUP BY priority
ORDER BY open_tickets DESC;
