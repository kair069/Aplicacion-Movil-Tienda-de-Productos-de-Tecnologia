// import 'package:flutter/material.dart';
// import '../widgets/product_card.dart';
// import 'product_list.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Inicio'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text(
//                 'Menú Lateral',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//             ListTile(
//               title: const Text('Lista de Productos'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const ProductListPage(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: const EdgeInsets.all(10),
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         children: const [
//           ProductCard(
//             title: 'Electrónicos',
//             imageUrl: 'https://via.placeholder.com/200',
//           ),
//           ProductCard(
//             title: 'Ropa',
//             imageUrl: 'https://via.placeholder.com/200',
//           ),
//           ProductCard(
//             title: 'Hogar',
//             imageUrl: 'https://via.placeholder.com/200',
//           ),
//           ProductCard(
//             title: 'Deportes',
//             imageUrl: 'https://via.placeholder.com/200',
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const ProductListPage(),
//             ),
//           );
//         },
//         child: const Icon(Icons.list),
//       ),
//     );
//   }
// }

///////////////////////
// import 'package:flutter/material.dart';
// import '../widgets/product_card.dart';
// import 'product_list.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Inicio'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text(
//                 'Menú Lateral',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//             ListTile(
//               title: const Text('Lista de Productos'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const ProductListPage(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: const EdgeInsets.all(10),
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         children: const [
//           ProductCard(
//             title: 'Electrónicos',
//             imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
//           ),
//           ProductCard(
//             title: 'Ropa',
//             imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
//           ),
//           ProductCard(
//             title: 'Hogar',
//             imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
//           ),
//           ProductCard(
//             title: 'Deportes',
//             imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const ProductListPage(),
//             ),
//           );
//         },
//         child: const Icon(Icons.list),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import 'product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Colors.teal, // Color de la barra de navegación
      ),
      drawer: Drawer(
        child: Material(
          color: Colors.blueGrey[800], // Color de fondo del menú lateral
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal, // Color de la cabecera
                ),
                child: Text(
                  'Menú Lateral',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Lista de items con iconos
              ListTile(
                leading: const Icon(Icons.list, color: Colors.white),
                title: const Text(
                  'Lista de Productos',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.category, color: Colors.white),
                title: const Text(
                  'Categorías',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Aquí puedes agregar una acción para otra página o sección
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  'Configuración',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Aquí puedes agregar una acción para otra página o sección
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: const [
          ProductCard(
            title: 'Electrónicos',
            imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
          ),
          ProductCard(
            title: 'Ropa',
            imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
          ),
          ProductCard(
            title: 'Hogar',
            imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
          ),
          ProductCard(
            title: 'Deportes',
            imageUrl: 'https://intelcorp.scene7.com/is/image/intelcorp/mini-pc-product-image-transparent-background:1920-1080?wid=576&hei=324&fmt=webp-alpha',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductListPage(),
            ),
          );
        },
        backgroundColor: Colors.teal, // Botón de acción flotante de color profesional
        child: const Icon(Icons.list),
      ),
    );
  }
}
