import 'package:flutter/material.dart';
import 'models/produit.dart';
import 'page_details_produit.dart';

class ListProduits extends StatelessWidget {
  ListProduits({super.key});

  final List<Produit> produits = [
    Produit(
      nom: "Ordinateur Portable",
      description: "Laptop puissant pour travail et gaming.",
      prix: 1200.0,
    ),
    Produit(
      nom: "Smartphone",
      description: "Téléphone nouvelle génération avec triple caméra.",
      prix: 900.0,
    ),
    Produit(
      nom: "Casque Bluetooth",
      description: "Casque sans fil avec réduction de bruit.",
      prix: 150.0,
    ),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste de Produits")),

      body: ListView.builder(
        itemCount: produits.length,
        itemBuilder: (context, index) {
          final produit = produits[index];

          return Card(
            elevation: 3,
            margin: EdgeInsets.all(10),

            child: ListTile(
              title: Text(
                produit.nom,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text("${produit.prix} \$"),

              trailing: ElevatedButton(
                child: Text("Voir"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsProduit(
                        produit: produit, 
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
