package sia.tacocloud.entities;

import lombok.Data;

@Data
public class Address {
    private final String street;
    private final String city;
    private final String state;
    private final String zip;
}
