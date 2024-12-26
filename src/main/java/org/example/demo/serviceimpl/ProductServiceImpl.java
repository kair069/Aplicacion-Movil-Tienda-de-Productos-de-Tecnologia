package org.example.demo.serviceimpl;

import org.example.demo.entidades.Product;
import org.example.demo.repository.ProductRepository;
import org.example.demo.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {
    private final ProductRepository productRepository;

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public Optional<Product> getProductById(Long id) {
        return productRepository.findById(id);
    }

    @Override
    public Product saveProduct(Product product) {
        return productRepository.save(product);
    }

    @Override
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    @Override
    public Product updateProduct(Long id, Product productDetails) {
        // Buscar el producto por su ID
        Product existingProduct = productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found with id: " + id));

        // Actualizar los campos del producto existente
        existingProduct.setName(productDetails.getName());
        existingProduct.setPrice(productDetails.getPrice());

        // Guardar el producto actualizado
        return productRepository.save(existingProduct);
    }
}
