package com.nikitsya.billing.price.model;

import com.nikitsya.billing.product.model.Product;
import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "prices")
public class Price {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Column(name = "unit_amount_cents")
    private Integer unitAmountCents;

    private String currency;

    @Column(name = "billing_interval")
    private String billingInterval;

    private Boolean active;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    public Price() {
    }

    public Long getId() {
        return id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getUnitAmountCents() {
        return unitAmountCents;
    }

    public void setUnitAmountCents(Integer unitAmountCents) {
        this.unitAmountCents = unitAmountCents;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getBillingInterval() {
        return billingInterval;
    }

    public void setBillingInterval(String billingInterval) {
        this.billingInterval = billingInterval;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}
