package com.nikitsya.billing.customer.api;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record CreateCustomerRequest(Long id, @NotBlank String name, @NotBlank @Email String email) {
}
