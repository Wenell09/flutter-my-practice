class Product {
  String? id;
  String? name;
  String? created;

  Product({this.id, this.name, this.created});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['created'] = created;
    return data;
  }
}
