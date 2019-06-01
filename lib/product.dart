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
      Review(author: 'Ana', comment: 'Muito bom! Recomendo.'),
      Review(author: 'Bruna', comment: 'Achei um cabelo na minha comida, eca!'),
      Review(author: 'Carla', comment: 'É bom, mas achei muito caro'),
    ];

    return [
      Product(
        id: 1,
        name: 'Filé de Tilápia',
        description: 'Tilápia frita deliciosa',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/491/462491/169/612/nakato-sushi-jaguare-prato-b171e.jpg',
        rate: 5,
        price: 3,
        reviews: reviews,
        distance: '0,9 KM',
        restaurant: Restaurant(
          name: 'Nakato Sushi Jaguaré',
          location: 'R. Dr. Cândido Motta Filho, 414',
        ),
      ),
      Product(
        id: 2,
        name: 'Churros com Nutela',
        description: 'Um delicioso churros com nutela, muito bom!',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/257/396257/169/612/banqueta-bar-mini-churros-mini-churros-feitos-na-casa-com-um-delicioso-doce-de-leite-c6a57.jpg',
        rate: 4,
        price: 2,
        reviews: reviews,
        distance: '2 KM',
        restaurant: Restaurant(name: 'Banqueta Bar', location: 'Av. Cotovia, 619 - Moema'),
      ),
      Product(
        id: 3,
        name: 'Hamburguer Australiano',
        description: 'Hamburguer de carne de cangurú ao molho barbecue',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/321/321321/169/612/aus-burger-sugestao-do-chef-f0bc2.jpg',
        rate: 5,
        price: 4,
        reviews: reviews,
        distance: '3 KM',
        restaurant: Restaurant(name: 'AUS BURGER', location: 'Perdizes - Av. Prof. Alfonso Bovero, 637'),
      ),
      Product(
        id: 4,
        name: 'Pizza de Marguerita',
        description: 'Apenas molho de tomate, tomate, mangerição e muita mussarela',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/215/351215/169/612/prestissimo-pizza-vinho-pizza-8a2e8.jpg',
        rate: 4,
        price: 3,
        reviews: reviews,
        distance: '1,5 KM',
        restaurant: Restaurant(name: 'Prestíssimo Pizza & Vinho', location: 'Jardim Paulista - Alameda Joaquim Eugênio de Lima, 1135'),
      ),
      Product(
        id: 5,
        name: 'Costeleta de Cordeiro',
        description: 'Cordeiro ao molho madeira acompanhado de purê de batata',
        imageUrl:
            'https://u.tfstatic.com/restaurant_photos/562/70562/169/612/la-pasta-gialla-moema-prato-28407.jpg',
        rate: 5,
        price: 5,
        reviews: reviews,
        distance: '3 KM',
        restaurant: Restaurant(name: 'La Pasta Gialla', location: 'Moema - Alameda dos Arapanés, 1004'),
      ),
    ];
  }
}
