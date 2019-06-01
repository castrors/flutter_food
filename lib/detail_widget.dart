import 'package:flutter/material.dart';
import 'package:flutter_food/product.dart';

class DetailProduct extends StatelessWidget {
  final Product product;

  const DetailProduct({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detail Product')),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.network(product.imageUrl),
                ListTile(
                  leading: Icon(Icons.casino),
                  title: Text(product.name),
                  subtitle: Text(product.description),
                ),
                ListTile(
                  leading: Icon(Icons.place),
                  title: Text(product.restaurant.name),
                  subtitle: Text(product.restaurant.location),
                ),
                getReviews(),
              ],
            ),
          ),
        ));
  }

  Widget getReviews() {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: ListTile(
            leading: Icon(Icons.people),
            title: Text('${product.reviews[index].author} diz:'),
            subtitle: Text('${product.reviews[index].comment}'),
          ));
        },
        shrinkWrap: true,
        itemCount: product.reviews.length,
      ),
    );
  }
}
