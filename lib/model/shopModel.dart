import 'package:flutter/material.dart';

import 'clothes.dart';
class ClothesShop {
  //clothes for sale list
  final List<Clothes>_shop=[
    //women clothe
    Clothes(name: "dress", price: "35", imagePath: 'assets/girl1.jpg'),
    //man clothe
    Clothes(name: 'T-shirt', price:'30', imagePath: 'assets/man1.jpg'),
    //kids clothes
    Clothes(name: 'pantes', price:'20', imagePath: 'assets/kid1.jpg'),
  ];

  //user cart
  List<Clothes>_userCart=[];


  //get clothes list
  List<Clothes> get clothesShop =>_shop;

  //get user cart
  List<Clothes> get userCart =>_userCart;

  //add item to cart
  void addItemToCart(Clothes clothes){
    _userCart.add(clothes);
  }


  //remove item from cart
  void removeItemFromCart(Clothes clothes){
    _userCart.remove(clothes);
  }
}