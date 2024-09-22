import 'package:admin/utility/extensions.dart';
import 'package:flutter/material.dart';
import '../../../widgets/profile_card.dart';
import '../../../widgets/search_field.dart';

class OrderHeader extends StatelessWidget {
  const OrderHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Orders",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Spacer(flex: 2),
        Expanded(child: SearchField(
          onChange: (val) {
            context.dataProvider.filterOrder(val);
          },
        )),
        ProfileCard()
      ],
    );
  }
}


