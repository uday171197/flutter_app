

class CatalogModel {
  static final items = [
    Item(
        id: '1',
        name: 'cube',
        desc: 'this is a cube',
        price: 100,
        color: '#33505a',
        imageUrl:
            'https://rukminim1.flixcart.com/image/416/416/puzzle/h/w/b/toyzy-2-magic-square-cube-original-imadyg5qrfzdfjx7.jpeg?q=70'),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});
}
