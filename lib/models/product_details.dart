class ProductDetails {
  static final product = Product(
      id: '1',
      imageUrl: [],
      productName: 'Cube',
      startBid: 1,
      highestBid: 10,
      endTime: DateTime.now(),
      lastsellInfo: '4 day Ago by "ABC seller"',
      desc:
          'This is a procuact my by this company , It will increase your strenth');
}

class Product {
  final String id;
  final List imageUrl;
  final String productName;
  final int startBid;
  final int highestBid;
  final DateTime endTime;
  final String lastsellInfo;
  final String desc;

  Product(
      {required this.id,
      required this.imageUrl,
      required this.productName,
      required this.startBid,
      required this.highestBid,
      required this.endTime,
      required this.lastsellInfo,
      required this.desc});
}
