import 'package:flutter/material.dart';
import 'page_liste_produits.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Atelier Produits',
 home: ListProduits(),
 );
 }
}