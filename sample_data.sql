INSERT INTO agents (first_name, last_name, team)
VALUES
('Jordan', 'Lee', 'Escalations'),
('Taylor', 'Morgan', 'Customer Care'),
('Casey', 'Rivera', 'Escalations');

INSERT INTO customers (customer_name, email)
VALUES
('Alex Johnson', 'alex@example.com'),
('Morgan Smith', 'morgan@example.com'),
('Jamie Brown', 'jamie@example.com'),
('Riley Davis', 'riley@example.com');

INSERT INTO tickets
(customer_id, agent_id, category, priority, status, created_at, resolved_at)
VALUES
(1, 1, 'Delivery', 'High', 'Resolved',
 '2026-08-01 09:00:00', '2026-08-01 14:30:00'),

(2, 2, 'Billing', 'Medium', 'Resolved',
 '2026-08-02 10:15:00', '2026-08-03 11:00:00'),

(3, 1, 'Installation', 'High', 'Open',
 '2026-08-04 08:30:00', NULL),

(4, 3, 'Product Issue', 'Low', 'Resolved',
 '2026-08-05 12:00:00', '2026-08-05 15:45:00'),

(1, 3, 'Billing', 'High', 'Resolved',
 '2026-08-06 09:45:00', '2026-08-06 13:30:00'),

(2, 1, 'Delivery', 'Medium', 'Open',
 '2026-08-07 14:00:00', NULL);
