import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';

import 'video_call_view.dart';

class VideoCallingView extends StatefulWidget {
  static const String routeName = '/chat/video';

  const VideoCallingView({Key? key}) : super(key: key);

  @override
  State<VideoCallingView> createState() => _VideoCallingViewState();
}

class _VideoCallingViewState extends State<VideoCallingView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 4), () {
        Navigator.pushReplacementNamed(context, VideoCallView.routeName);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _themeData(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Memanggil..'),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            const SizedBox(height: 16),
            Center(
              child: Container(
                height: 128,
                width: 128,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.images.drKartikaApshantiSpJP1.path,
                    ),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'dr. Kartika Apshanti, Sp.JP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).primaryColorDark,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                radius: 28,
                child: Icon(Icons.mic),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  radius: 28,
                  child: Icon(Icons.call),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey,
                  radius: 28,
                  child: Icon(Icons.message),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ThemeData _themeData(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return themeData.copyWith(
      appBarTheme: themeData.appBarTheme.copyWith(
        centerTitle: true,
        elevation: 0.0,
        color: themeData.primaryColor,
        actionsIconTheme: themeData.primaryIconTheme.copyWith(
          color: Colors.white,
        ),
        iconTheme: themeData.primaryIconTheme.copyWith(
          color: Colors.white,
        ),
        titleTextStyle: textTheme.headline5?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}
