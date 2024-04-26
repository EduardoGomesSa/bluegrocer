import 'package:bluegrocer/src/config/custom_colors.dart';
import 'package:bluegrocer/src/models/cart_item_model.dart';
import 'package:bluegrocer/src/pages/common_widgets/quantity_widget.dart';
import 'package:bluegrocer/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  CartTile({
    super.key,
    required this.cartItem,
  });

  final CartItemModel cartItem;
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
          cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),
        // titulo
        title: Text(
          cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        // total
        subtitle: Text(
          utilsServices.priceToCurrency(cartItem.totalPrice()),
          style: TextStyle(
            color: CustomColors.customSwatchColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Quantidade
        trailing: QuantityWidget(
          value: cartItem.quantity,
          suffixText: cartItem.item.unit,
          result: (quantity) {},
        ),
      ),
    );
  }
}
