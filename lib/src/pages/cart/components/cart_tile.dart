import 'package:bluegrocer/src/config/custom_colors.dart';
import 'package:bluegrocer/src/models/cart_item_model.dart';
import 'package:bluegrocer/src/pages/common_widgets/quantity_widget.dart';
import 'package:bluegrocer/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class CartTile extends StatefulWidget {
  const CartTile({
    super.key,
    required this.cartItem,
    required this.remove,
  });

  final CartItemModel cartItem;
  final Function(CartItemModel) remove;

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // imagem
        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),
        // titulo
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        // total
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: TextStyle(
            color: CustomColors.customSwatchColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Quantidade
        trailing: QuantityWidget(
          value: widget.cartItem.quantity,
          suffixText: widget.cartItem.item.unit,
          result: (quantity) {
            setState(() {
              widget.cartItem.quantity = quantity;

              if(quantity == 0){
                // Remover item do carrinho
                widget.remove(widget.cartItem);
              }
            });
          },
          isRemovable: true,
        ),
      ),
    );
  }
}
