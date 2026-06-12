package com.nikitsya.billing.price.repository;

import com.nikitsya.billing.customer.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PriceRepository extends JpaRepository<Customer, Long> {
}
