import 'package:flutter_food/restaurant.dart';
import 'package:flutter_food/review.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final int rate;
  final double price;
  final String distance;
  final List<Review> reviews;
  final Restaurant restaurant;

  Product(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.rate,
      this.price,
      this.distance,
      this.reviews,
      this.restaurant});

  static List<Product> getProducts() {
    final reviews = [
      Review(author: 'Ana', comment: 'Top'),
      Review(author: 'Bruna', comment: 'Sux'),
      Review(author: 'Carla', comment: 'Mais ou menos'),
    ];

    return [
      Product(
        id: 1,
        name: 'Dogão',
        description: 'Dogão demais',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/257/396257/169/612/banqueta-bar-aperol-spritz-dadinho-de-tapioca-7671c.jpg',
        rate: 5,
        price: 10.90,
        reviews: reviews,
        distance: '10 KM',
        restaurant: Restaurant(name: 'MC Donalds', location: 'Pinheiros'),
      ),
      Product(
        id: 1,
        name: 'Dogão 2',
        description: 'Dogão demais 2',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/257/396257/169/612/banqueta-bar-aperol-spritz-dadinho-de-tapioca-7671c.jpg',
        rate: 5,
        price: 10.90,
        reviews: reviews,
        distance: '10 KM',
        restaurant: Restaurant(name: 'MC Donalds', location: 'Pinheiros'),
      ),
      Product(
        id: 1,
        name: 'Dogão 3',
        description: 'Dogão demais 3',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/257/396257/169/612/banqueta-bar-aperol-spritz-dadinho-de-tapioca-7671c.jpg',
        rate: 5,
        price: 10.90,
        reviews: reviews,
        distance: '10 KM',
        restaurant: Restaurant(name: 'Bobs', location: 'Pinheiros'),
      ),
      Product(
        id: 1,
        name: 'Dogão',
        description: 'Dogão demais',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/257/396257/169/612/banqueta-bar-aperol-spritz-dadinho-de-tapioca-7671c.jpg',
        rate: 5,
        price: 10.90,
        reviews: reviews,
        distance: '10 KM',
        restaurant: Restaurant(name: 'Burger King', location: 'Pinheiros'),
      ),
      Product(
        id: 1,
        name: 'Dogão',
        description: 'Dogão demais',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/257/396257/169/612/banqueta-bar-aperol-spritz-dadinho-de-tapioca-7671c.jpg',
        rate: 5,
        price: 10.90,
        reviews: reviews,
        distance: '10 KM',
        restaurant: Restaurant(name: 'Subway', location: 'Pinheiros'),
      ),
    ];
  }
}
