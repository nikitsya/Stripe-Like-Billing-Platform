package com.nikitsya.billing.price.repository;

import com.nikitsya.billing.price.model.Price;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PriceRepository extends JpaRepository<Price, Long> {
    List<Price> getAllPrices();
}
