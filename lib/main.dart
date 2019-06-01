import 'package:flutter/material.dart';
import 'package:flutter_food/card_widget.dart';
import 'package:flutter_food/detail_widget.dart';
import 'package:flutter_food/product.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = Product.getProducts();
  SwiperController controller = SwiperController();

  @override
  void initState() {
    super.initState();
    controller.index = 0;
  }

  Widget buildActions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
              heroTag: 'negative',
              child: Icon(
                Icons.close,
              ),
              onPressed: () => {
                controller.next()
              },),
              
          FloatingActionButton(
            heroTag: 'positive',
            child: Icon(Icons.check),
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProduct(
                            product: items[controller.index],
                          ),
                    ),
                  ),
                },
          )
        ],
      ),
    );
  }

  Widget buildTinderCards() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Swiper(
        onIndexChanged: (int currentIndex) => {controller.index = currentIndex},
        itemBuilder: (BuildContext context, int index) {
          return CardWidget(product: items[index]);
        },
        itemCount: items.length,
        loop: true,
        control: SwiperControl(iconNext: null, iconPrevious: null),
        itemWidth: 300,
        layout: SwiperLayout.STACK,
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [buildTinderCards()]),
      ),
      floatingActionButton: buildActions(context),
    );
  }
}
