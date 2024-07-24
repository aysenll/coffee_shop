import 'package:coffee_shop/models/coffee.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:coffee_shop/components/coffee_tile.dart';
//ing.dart';

class CoffeeTile extends StatefulWidget {
  final Coffee coffee;
  final void Function()? onPressed;
  const CoffeeTile({Key? key, required this.coffee, required this.onPressed})
      : super(key: key);

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();
}

class _CoffeeTileState extends State<CoffeeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 241, 185, 211)),
      margin: const EdgeInsets.only(bottom: 11),
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 11),
      child: ListTile(
        title: Text(widget.coffee.name),
        subtitle: Text(widget.coffee.price),
        leading: Image.asset(widget.coffee.imagePath),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}
