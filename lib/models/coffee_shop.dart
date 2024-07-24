import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //hot chocalate
    Coffee(
      name: 'hot chocalate',
      price: "2.9",
      imagePath: "lib/coffee_shop_photos/coffee.png",
    ),

    //espresso
    Coffee(
      name: 'espresso',
      price: "5.1",
      imagePath: "lib/coffee_shop_photos/espresso.png",
    ),

    //lemonade
    Coffee(
      name: 'lemonade',
      price: "4.4",
      imagePath: "lib/coffee_shop_photos/lemonade.png",
    ),

    //milkshake
    Coffee(
      name: 'milkshake',
      price: "5.9",
      imagePath: "lib/coffee_shop_photos/milkshake.png",
    ),

    //tiramisu
    Coffee(
      name: 'tiramisu',
      price: "7.0",
      imagePath: "lib/coffee_shop_photos/tiramisu.png",
    ),

    //cheesecake
    Coffee(
      name: 'cheesecake',
      price: "8.9",
      imagePath: "lib/coffee_shop_photos/cheesecake.png",
    ),

    //cookie
    Coffee(
      name: 'cookie',
      price: "2.5",
      imagePath: "lib/coffee_shop_photos/cookie.png",
    ),
  ];
  //user cart
  List<Coffee> _userCart = [];
  //get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart
  List<Coffee> get userCart => _userCart;
  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
