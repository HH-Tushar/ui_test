class CategoryModel{
final   String  name;
  final String imagePath;
   String ? description;
   CategoryModel({required this.imagePath,required this.name,this.description});
}

List<CategoryModel> topList=[
  CategoryModel(imagePath: "asset/product_catagory/market.png",name: "All"),
  CategoryModel(imagePath: "asset/product_catagory/fruits.png",name: "Fruits"),
  CategoryModel(imagePath: "asset/product_catagory/vegetables.png",name: "Vegetable"),
  CategoryModel(imagePath: "asset/product_catagory/fish.png",name: "Fish"),
];
List<CategoryModel> bodyList=[
  CategoryModel(imagePath: "asset/product_catagory/Image 7.png",name: "Fruits and Vegetables",description:commonDescription),
  CategoryModel(imagePath: "asset/product_catagory/Image 8.png",name: "Grocery and Staples",description:commonDescription),
  CategoryModel(imagePath: "asset/product_catagory/Image 9.png",name: "Household Needs",description:commonDescription),
  CategoryModel(imagePath: "asset/product_catagory/Image 10.png",name: "Mans and Womens Wear",description:commonDescription),
  CategoryModel(imagePath: "asset/product_catagory/Image 11.png",name: "Foot ware",description:commonDescription),
];

 String commonDescription="Lorem ipsum diord sit amit, sjjrk aosjet constectia adiposimg sot";