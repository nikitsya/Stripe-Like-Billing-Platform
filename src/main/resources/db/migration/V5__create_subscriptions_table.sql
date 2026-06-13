CREATE TABLE subscriptions
(
    id                   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    customer_id          BIGINT      NOT NULL,
    price_id             BIGINT      NOT NULL,

    status               VARCHAR(30) NOT NULL,

    current_period_start TIMESTAMP   NOT NULL,
    current_period_end   TIMESTAMP   NOT NULL,

    cancel_at_period_end BOOLEAN     NOT NULL DEFAULT FALSE,
    cancelled_at         TIMESTAMP,

    created_at           TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at           TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_subscriptions_customer
        FOREIGN KEY (customer_id)
            REFERENCES customers (id),

    CONSTRAINT fk_subscriptions_price
        FOREIGN KEY (price_id)
            REFERENCES prices (id),

    CONSTRAINT chk_subscription_status
        CHECK (status IN ('ACTIVE', 'CANCELLED', 'PAST_DUE', 'INCOMPLETE')),

    CONSTRAINT chk_subscription_period
        CHECK (current_period_end > current_period_start)
);