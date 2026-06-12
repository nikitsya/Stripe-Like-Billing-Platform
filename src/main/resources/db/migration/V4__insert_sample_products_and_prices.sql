INSERT INTO products (name, description, active)
VALUES ('Basic Plan', 'Basic monthly billing plan for small customers', true),
       ('Pro Plan', 'Pro billing plan with more features', true),
       ('Enterprise Plan', 'Custom billing plan for larger customers', true),
       ('One-time Setup Fee', 'One-time onboarding fee for new customers', true);

INSERT INTO prices (product_id, unit_amount_cents, currency, billing_interval, active)
VALUES ((SELECT id FROM products WHERE name = 'Basic Plan'), 999, 'EUR', 'MONTHLY', true),
       ((SELECT id FROM products WHERE name = 'Basic Plan'), 9990, 'EUR', 'YEARLY', true),
       ((SELECT id FROM products WHERE name = 'Pro Plan'), 1999, 'EUR', 'MONTHLY', true),
       ((SELECT id FROM products WHERE name = 'Pro Plan'), 19990, 'EUR', 'YEARLY', true),
       ((SELECT id FROM products WHERE name = 'Enterprise Plan'), 9999, 'EUR', 'MONTHLY', true),
       ((SELECT id FROM products WHERE name = 'Enterprise Plan'), 99990, 'EUR', 'YEARLY', true),
       ((SELECT id FROM products WHERE name = 'One-time Setup Fee'), 4999, 'EUR', 'ONE_TIME', true);