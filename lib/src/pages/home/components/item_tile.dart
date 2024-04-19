import 'package:bluegrocer/src/config/custom_colors.dart';
import 'package:bluegrocer/src/models/item_model.dart';
import 'package:bluegrocer/src/services/utils_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemTile extends StatelessWidget {
  ItemTile({
    super.key,
    required this.item,
  });

  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 1,
          shadowColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // image
                Expanded(
                  child: Image.asset(item.imgUrl),
                ),
                // nome
                Text(
                  item.itemName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // preço - unidade
                Row(
                  children: [
                    Text(
                      utilsServices.priceToCurrency(item.price),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: CustomColors.customSwatchColor,
                      ),
                    ),
                    Text(
                      '/${item.unit}',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: (){},
            child: Container(
              height: 40,
              width: 35,
              decoration: BoxDecoration(
                color: CustomColors.customSwatchColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20)
                )
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
