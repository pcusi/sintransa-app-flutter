import 'package:flutter/material.dart';
import 'package:sintransa_app/shared/constants/icons.dart';
import 'package:sintransa_app/shared/constants/ui.dart';

import 'icon.dart';

class BackSearch extends StatelessWidget {
  final VoidCallback goBack;
  final VoidCallback goSearch;
  final bool showSearch;
  const BackSearch({
    Key key,
    this.goBack,
    this.goSearch,
    this.showSearch = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.0),
        Container(
          height: 56.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OwnIcon(
                icon: SintransaIcon.back,
                iColor: UI.cGrayEight,
                onTap: this.goBack,
              ),
              showSearch ? OwnIcon(
                icon: SintransaIcon.search,
                iColor: UI.cGrayEight,
                onTap: this.goSearch,
              ) : Container()
            ],
          ),
        ),
      ],
    );
  }
}
