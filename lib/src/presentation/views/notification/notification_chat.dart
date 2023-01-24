import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';

class NotificationChat extends StatelessWidget {
  const NotificationChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const BackButton(color: Colors.transparent),
        ),
        body: Container(
          child: Assets.images.waChat.image(
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
