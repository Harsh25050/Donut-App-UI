import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  final List donutOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/Images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/Images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/Images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/Images/chocolate_donut.png"],
  ];

  final List _cartItems = [];

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(donutOnSale[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
