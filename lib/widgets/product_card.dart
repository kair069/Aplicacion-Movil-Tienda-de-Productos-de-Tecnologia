import 'package:flutter/material.dart';
import '../pages/product_list.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ProductCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductListPage()),
        );
      },
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: Colors.black.withOpacity(0.3), // Sombra más suave
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              // Imagen del producto con bordes redondeados
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              // Espacio y diseño del título
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[800], // Color de texto más suave
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Botón estilizado con icono
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductListPage()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward, color: Colors.blue),
                  label: const Text(
                    'Ver Productos',
                    style: TextStyle(color: Colors.blue),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
