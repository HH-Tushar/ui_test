class ProductsModel{
  final String name;
  final int price;
  final int oldPrice;
  final String imagePath;
  ProductsModel({required this.name,required this.price, required this.oldPrice,required this.imagePath});
}
List<ProductsModel> productsList=[
  ProductsModel(name: 'Green Apple', price: 100, oldPrice: 120, imagePath: 'asset/veg/apple.png'),
  ProductsModel(name: 'Broccoli', price: 111, oldPrice: 112, imagePath: 'asset/veg/broccoli-1238250_640.png'),
  ProductsModel(name: 'Green Capsicum', price: 120, oldPrice: 152, imagePath: 'asset/veg/green.png'),
  ProductsModel(name: 'Yellow Capsicum', price: 110, oldPrice: 161, imagePath: 'asset/veg/yellow.png'),
  ProductsModel(name: 'Red Capsicum', price: 48, oldPrice: 89, imagePath: 'asset/veg/rer.png'),
  ProductsModel(name: 'Pomegranate', price: 85, oldPrice: 100, imagePath: 'asset/veg/Pomegranate.png'),
  ProductsModel(name: 'Broccoli', price: 70, oldPrice: 120, imagePath: 'asset/veg/broccoli-1238250_640.png'),
];