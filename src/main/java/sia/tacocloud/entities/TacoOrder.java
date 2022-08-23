package sia.tacocloud.entities;

import lombok.Data;

import java.util.List;

@Data
public class TacoOrder {
    private String deliveryName;
    private Address deliveryAddress;
    private CreditCard deliveryCreditCard;
    private List<Taco> tacos;

    public void addTaco(Taco taco) {
        this.tacos.add(taco);
    }
}
