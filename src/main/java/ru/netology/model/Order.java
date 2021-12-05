package ru.netology.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(columnDefinition = "timestamp default now()", nullable = false)
    private Date date;

    @ManyToOne()
    private Customer customer;

    @Column(nullable = false)
    private String productName;

    @Column(nullable = false)
    @Min(0)
    private int amount;
}