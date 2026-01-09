// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductItem {
  final String? id;
  final int? productId;
  final String? name;
  final int? price;
  final int? quantity;
  final String? unit;
  final String? image;
  final String? category;

  ProductItem({
    this.id,
    this.productId,
    this.name,
    this.price,
    this.quantity,
    this.unit,
    this.image,
    this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productId': productId,
      'name': name,
      'price': price,
      'quantity': quantity,
      'unit': unit,
      'image': image,
      'category': category,
    };
  }

  factory ProductItem.fromMap(Map<String, dynamic> map) {
    return ProductItem(
      id: map['id'] != null ? map['id'] as String : null,
      productId: map['productId'] != null ? map['productId'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      price: map['price'] != null ? map['price'] as int : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      unit: map['unit'] != null ? map['unit'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      category: map['category'] != null ? map['category'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductItem.fromJson(String source) =>
      ProductItem.fromMap(json.decode(source) as Map<String, dynamic>);
}
