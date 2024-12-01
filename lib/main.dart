import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:clothes_app/clothes.dart';
import 'clothes_card.dart';

void main() {
  runApp(const MaterialApp(
    home: ClothesList(),
  ));
}

class ClothesList extends StatefulWidget {
  const ClothesList({super.key});

  @override
  State<ClothesList> createState() => _ClothesListState();
}


class _ClothesListState extends State<ClothesList> {


  List<Clothes> clothes = [
    Clothes(name: 'Soft Oversized Coat',
        pictureUrl: 'https://static.zara.net/assets/public/0232/f5d1/2cea4192809d/a4dcbe136b69/03046299800-e1/03046299800-e1.jpg?ts=1726585961829&w=316',
        description: 'Oversized coat with a lapel collar and long sleeves finished with a tab and button. Featuring front welt pockets and double-breasted button fastening.',
        price: 3990.0),
    Clothes(name: 'Animal Print Stiletto Boots',
        pictureUrl: 'https://static.zara.net/assets/public/b092/c1c3/2fbc4d36ae09/9341867a4763/12109410195-e1/12109410195-e1.jpg?ts=1727163099997&w=316',
        description: 'Animal print ankle boots. Stiletto heel. Zip fastening. Pointed toe.',
        price: 2590.0),
    Clothes(name: 'Buttoned Wool Cardigan',
        pictureUrl: 'https://static.zara.net/assets/public/ae8b/ec6a/6b874c0298dd/163cc556591e/03920183803-000-ult6/03920183803-000-ult6.jpg?ts=1732875648145&w=297',
        description: 'Cardigan in spun wool fabric. V-neck and long sleeves. Ribbed trims. Button-up front.',
        price: 3990.0),
    Clothes(name: 'Stripped Flowing Shirt',
        pictureUrl: 'https://static.zara.net/assets/public/cef8/28ad/493f4dec82b9/4d96f9427891/06986008800-000-ult6/06986008800-000-ult6.jpg?ts=1732808089159&w=297',
        description: 'Relaxed fit shirt made from a viscose blend fabric. Featuring a spread collar, long sleeves with buttoned cuffs and a button-up front.',
        price: 3990.0),
    Clothes(name: 'Cargo Trousers',
        pictureUrl: 'https://static.zara.net/assets/public/f5d1/a5b5/f6294337b48b/a2d0f63703c3/00108302800-e1/00108302800-e1.jpg?ts=1727001793972&w=316',
        description: 'Relaxed fit trousers featuring an elasticated waistband with adjustable drawstring, front pockets, back welt pockets, patch pockets with flaps on the legs, a faded effect and cuffed elasticated hems.',
        price: 1990.0),
    Clothes(name: 'Bomber Jacket (Green)',
        pictureUrl: 'https://static.zara.net/assets/public/d32b/17ac/f63e43348119/ab64b4f55aee/05854854505-e1/05854854505-e1.jpg?ts=1723533237442&w=316',
        description: 'Lightweight jacket made of technical fabric. High neck and long sleeves. Hip welt pockets. Inside pocket detail. Ribbed trims. Front zip fastening.',
        price: 3290.0),
    Clothes(name: 'Travel Suitcase',
        pictureUrl: 'https://static.zara.net/assets/public/03b4/0041/54d94c8a82b9/d9e0e18b2a34/13108420400-e1/13108420400-e1.jpg?ts=1724855746057&w=316',
        description: 'Travel suitcase. Made of a combination of materials. Main compartment with zip closure. Spacious interior with a flat auxiliary pocket and zip closure. Front zip pocket. Side shoe pocket. Adjustable and detachable shoulder strap.',
        price: 2990.0)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F0E1), // Light cream background for coziness
      appBar: AppBar(
        title: Text('211238'),
        centerTitle: true,
        backgroundColor: Color(0xFF5C3A29), // Warm brown for the app bar
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0), // Add some spacing
            child: ItemCard(
                item: clothes[index]), // Ensure ItemCard is cozy too
          );
        },
      ),
    );
  }
}