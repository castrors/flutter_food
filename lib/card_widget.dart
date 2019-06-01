import 'package:flutter/material.dart';
import 'package:flutter_food/product.dart';

class CardWidget extends StatelessWidget {
  final Product product;
  const CardWidget({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.monetization_on,
                ),
                Text(product.distance)
              ],
            ),
            Image.network(
                product.imageUrl,
                height: 400,
                fit: BoxFit.fitHeight,),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
