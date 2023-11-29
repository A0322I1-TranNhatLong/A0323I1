package com.example.ugn_dung_quan_li_san_pham.service;

import com.example.ugn_dung_quan_li_san_pham.model.Product;
import com.example.ugn_dung_quan_li_san_pham.repository.IProductRepository;
import com.example.ugn_dung_quan_li_san_pham.repository.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    private static final IProductRepository PRODUCT_REPOSITORY = new ProductRepositoryImpl();

    @Override
    public List<Product> findAll() {
        return PRODUCT_REPOSITORY.findAll();
    }

    @Override
    public void save(Product product) {
        PRODUCT_REPOSITORY.save(product);
    }

    @Override
    public void remove(int id) {
        PRODUCT_REPOSITORY.remove(id);
    }

    @Override
    public void update(int id, Product product) {
        PRODUCT_REPOSITORY.update(id, product);
    }

    @Override
    public Product findById(int id) {
        return PRODUCT_REPOSITORY.findById(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return PRODUCT_REPOSITORY.findByName(name);
    }
}
