class ShoppingModel{
  String? id;
  String? name;
  String? price;
  String? imagePath;
  ShoppingModel({this.id,this.name,this.price,this.imagePath});

  factory ShoppingModel.fromMap(Map<String, dynamic> json) => ShoppingModel(
    id: json["id"] == null? null :json["id"],
    name: json["name"] == null? null :json["name"],
    price: json["price"] == null? null :json["price"],
    imagePath: json["imagePath"] == null? null :json["imagePath"],

  );

  Map<String,dynamic> tojson()=>{
    'id':id,
    'name':name,
    'price':price,
    'imagePath':imagePath,

  };
}
