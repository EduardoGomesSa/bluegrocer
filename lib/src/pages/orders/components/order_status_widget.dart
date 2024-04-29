import 'package:bluegrocer/src/config/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget({
    super.key,
    required this.isOverdue,
    required this.status,
  });

  final String status;
  final bool isOverdue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _StatusDot(
          isActive: true,
          title: 'Teste de pagamento',
        ),
        _StatusDot(
          isActive: false,
          title: 'Pagamento efetuado',
        ),
      ],
    );
  }
}

class _StatusDot extends StatelessWidget {
  const _StatusDot({
    required this.isActive,
    required this.title,
  });

  final bool isActive;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // dot
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: CustomColors.customSwatchColor,
            ),
            color:
                isActive ? CustomColors.customSwatchColor : Colors.transparent,
          ),
          child: isActive
              ? const Icon(
                  Icons.check,
                  size: 13,
                  color: Colors.white,
                )
              : const SizedBox.shrink(),
        ),

        const SizedBox(width: 5,),
        // texto
        Expanded(child: Text(title)),
      ],
    );
  }
}
