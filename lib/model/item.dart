class Item {
  String imgpath;
  double price;
  String location;
  String name;
  Item({required this.name, required this.imgpath,required this.price,this.location = "main branch"});
}

final List<Item> items = [
  Item(
      name: "product1",
      imgpath: "assets/img/1.w.webp",
      price: 22.99,
      location: "ismail shop"
      ),
  Item(name: "product2", imgpath: "assets/img/2.w.webp", price: 12.99),
  Item(name: "product3", imgpath: "assets/img/3.w.webp", price: 12.99),
  Item(name: "product4", imgpath: "assets/img/4.w.webp", price: 12.99),
  Item(name: "product5", imgpath: "assets/img/5.w.webp", price: 12.99),
  Item(name: "product6", imgpath: "assets/img/6.w.webp", price: 12.99),
  Item(name: "product7", imgpath: "assets/img/7.w.webp", price: 12.99),
  Item(name: "product8", imgpath: "assets/img/8.w.webp", price: 12.99),
];
