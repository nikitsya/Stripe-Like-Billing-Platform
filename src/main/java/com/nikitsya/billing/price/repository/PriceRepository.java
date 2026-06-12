package com.nikitsya.billing.price.repository;

import com.nikitsya.billing.price.model.Price;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PriceRepository extends JpaRepository<Price, Long> {
}
