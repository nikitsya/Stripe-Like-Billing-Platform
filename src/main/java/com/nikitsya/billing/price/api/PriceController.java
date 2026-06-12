package com.nikitsya.billing.price.api;

import com.nikitsya.billing.customer.model.Customer;
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
    public List<Customer> getAllPrices() {
        return priceRepository.findAll();
    }
}
