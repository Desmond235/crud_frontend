class Product {
  final String name;
  final String price;
  final String desc;

  Product({
    required this.name,
    required this.price,
    required this.desc,
  });

  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
     name: json['name'],
     price: json['price'],
     desc: json['desc'],
    );
  }
}
