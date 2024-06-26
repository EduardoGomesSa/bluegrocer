// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bluegrocer/src/models/item_model.dart';

class CartItemModel {
  ItemModel item;
  int quantity;

  CartItemModel({
    required this.item,
    required this.quantity,
  });
  
  double totalPrice() => item.price * quantity;
}
