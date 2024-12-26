import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../services/product_service.dart';


class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late Future<List<Product>> _futureProducts;

  @override
  void initState() {
    super.initState();
    _futureProducts = ProductService().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
      ),
      body: FutureBuilder<List<Product>>(
        future: _futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  leading: const Icon(Icons.shopping_bag),
                  title: Text(product.name),
                  subtitle: Text('Precio: \$${product.price.toStringAsFixed(2)}'),
                  onTap: () {
                    print('${product.name} seleccionado');
                  },
                );
              },
            );
          } else {
            return const Center(child: Text('No hay productos disponibles'));
          }
        },
      ),
    );
  }
}
