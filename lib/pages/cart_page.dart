import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:coffee_shop/components/coffee_tile.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {
    // fill out your payment service here
  }

//class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.8),
          child: Column(
            children: [
              const Text(
                ' Your Cart',
                style: TextStyle(fontSize: 15),
              ),

              //list of cart
              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      //get indivual car items
                      Coffee eachCoffee = value.userCart[index];
                      //return coffee tile
                      return CoffeeTile(
                        coffee: eachCoffee,
                        onPressed: () => removeFromCart(eachCoffee),
                        //icon: Icon(Icons.delete),
                      );
                    }),
              ),

              //pay button
              Container(
                padding: const EdgeInsets.all(22),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 75, 186),
                    borderRadius: BorderRadius.circular(11)),
                child: const Center(
                    child: Text(
                  "pay now",
                  style: TextStyle(color: Color.fromARGB(255, 245, 207, 240)),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
