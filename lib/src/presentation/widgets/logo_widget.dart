import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class FastkesLogo extends StatelessWidget {
  const FastkesLogo({Key? key, this.width = 153}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: Assets.logo.fastkes.keyName,
        child: Assets.logo.fastkes.image(width: width),
      ),
    );
  }
}
