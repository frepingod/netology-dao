package ru.netology.repository;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
@AllArgsConstructor
public class DaoRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public List<String> getProductName(String name) {
        return entityManager.createQuery("select o.productName " +
                        "from Customer c " +
                        "left join Order o " +
                        "on c.id = o.customer.id " +
                        "where lower(c.name) = lower(:name)")
                .setParameter("name", name)
                .getResultList();
    }
}