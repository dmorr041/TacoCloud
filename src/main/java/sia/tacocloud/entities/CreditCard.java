package sia.tacocloud.entities;

import lombok.Data;

@Data
public class CreditCard {
    private final String number;
    private final String expiration;
    private final String CVV;
}
