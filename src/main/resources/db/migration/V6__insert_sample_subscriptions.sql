INSERT INTO subscriptions (customer_id,
                           price_id,
                           status,
                           current_period_start,
                           current_period_end,
                           cancel_at_period_end,
                           cancelled_at)
VALUES ((SELECT id FROM customers WHERE email = 'nikita@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Pro Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 month',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'arthur@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Pro Plan'
           AND pr.billing_interval = 'YEARLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 year',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'hanna@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Enterprise Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 month',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'ilaria@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Basic Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 month',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'emma@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Basic Plan'
           AND pr.billing_interval = 'YEARLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 year',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'ivan@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Pro Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'PAST_DUE',
        CURRENT_TIMESTAMP - INTERVAL '1 month',
        CURRENT_TIMESTAMP + INTERVAL '1 day',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'olga@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Enterprise Plan'
           AND pr.billing_interval = 'YEARLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 year',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'oliver@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Basic Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'CANCELLED',
        CURRENT_TIMESTAMP - INTERVAL '2 months',
        CURRENT_TIMESTAMP - INTERVAL '1 month',
        false,
        CURRENT_TIMESTAMP - INTERVAL '1 month'),
       ((SELECT id FROM customers WHERE email = 'olivia@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Pro Plan'
           AND pr.billing_interval = 'YEARLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 year',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'anna@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Basic Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'INCOMPLETE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 month',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'victoria@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Enterprise Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 month',
        false,
        NULL),
       ((SELECT id FROM customers WHERE email = 'rachel@gmail.com'),
        (SELECT pr.id
         FROM prices pr
                  JOIN products p ON pr.product_id = p.id
         WHERE p.name = 'Pro Plan'
           AND pr.billing_interval = 'MONTHLY'),
        'ACTIVE',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP + INTERVAL '1 month',
        true,
        CURRENT_TIMESTAMP);