import 'package:admin/utility/extensions.dart';
import 'package:flutter/material.dart';
import '../../../widgets/profile_card.dart';
import '../../../widgets/search_field.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Spacer(flex: 1),
        Expanded(
            child: SearchField(
          onChange: (val) {
            context.dataProvider.filterProduct(val);
          },
        )),
        ProfileCard()
      ],
    );
  }
}




