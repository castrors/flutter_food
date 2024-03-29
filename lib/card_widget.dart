import 'package:flutter/material.dart';
import 'package:flutter_food/product.dart';
import 'package:flutter_food/rating_icon_widget.dart';

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
            Stack(
              fit: StackFit.loose,
              children: [
                Image.network(
                  product.imageUrl,
                  height: 400,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 400,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RatingIconWidget(
                                      ammount: product.rate,
                                      icon: Icon(
                                        Icons.star,
                                        color: Colors.black,
                                      ),
                                    ),
                                    RatingIconWidget(
                                      ammount: product.price,
                                      icon: Icon(
                                        Icons.attach_money,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: FractionalOffset.bottomCenter,
                                  end: FractionalOffset.topCenter,
                                  colors: [
                                Colors.black,
                                Colors.transparent,
                              ])),
                          child: SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                product.name,
                                style:
                                    TextStyle(fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
