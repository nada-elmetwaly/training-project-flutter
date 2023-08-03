

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:training_project/model/shoppingModel.dart';

class ApiProvider {
  ShoppingModel? shoppingModel;

  Future<ShoppingModel?> readShop() async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc('id')
        .get().then((value) =>
    {
      shoppingModel = ShoppingModel.fromMap(value.data()!),
      print(shoppingModel!.name),

    });
    return shoppingModel;
  }
}