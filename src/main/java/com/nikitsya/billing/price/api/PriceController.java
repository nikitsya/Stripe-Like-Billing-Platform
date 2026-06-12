package com.nikitsya.billing.price.api;

import com.nikitsya.billing.price.model.Price;
import com.nikitsya.billing.price.repository.PriceRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/api/v1/prices")
public class PriceController {

    private final PriceRepository priceRepository;

    public PriceController(PriceRepository priceRepository) {
        this.priceRepository = priceRepository;
    }

    @GetMapping
    public List<Price> getAllPrices() {
        return priceRepository.findAll();
    }
}
