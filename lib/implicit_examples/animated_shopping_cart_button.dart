import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  
 bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width:isExpanded ? 250 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color:isExpanded ?Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(isExpanded ? 30: 10.0),
            ),
            child: isExpanded ?Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                Text("Added To Cart!!",style: TextStyle(color: Colors.white),)
              ],
            ) :const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
