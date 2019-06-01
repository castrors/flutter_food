import 'package:flutter/material.dart';
import 'package:flutter_food/product.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailProduct extends StatelessWidget {
  final Product product;

  const DetailProduct({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(product.name)),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.shopping_cart), onPressed: () => {
          _launchURL(product.name)
        },),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.network(product.imageUrl),
                ListTile(
                  leading: Icon(Icons.fastfood),
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

  _launchURL(String query) async {
  var url = 'https://www.ifood.com.br/busca?q=$query';
  url = Uri.encodeFull(url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  Widget getReviews() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 16,),
          Text('Últimas avaliações', style: TextStyle(fontSize: 20)),
          SizedBox(height: 8,),
          ListView.builder(
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
        ],
      ),
    );
  }
}
