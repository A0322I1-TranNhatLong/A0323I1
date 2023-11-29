package com.example.ugn_dung_quan_li_san_pham.repository;

import com.example.ugn_dung_quan_li_san_pham.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();

    void save(Product product);

    void remove(int id);

    void update(int id, Product product);

    Product findById(int id);

    List<Product> findByName(String name);
}
