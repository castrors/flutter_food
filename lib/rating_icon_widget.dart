import 'package:flutter/material.dart';

class RatingIconWidget extends StatelessWidget {
  final int ammount;
  final Icon icon;
  const RatingIconWidget({
    this.ammount, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        for( var i = ammount ; i > 0; i-- ) icon
      ],
    );
  }
}
