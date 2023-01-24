import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';

class VideoCallView extends StatefulWidget {
  static const String routeName = '/chat/video/online';

  const VideoCallView({Key? key}) : super(key: key);

  @override
  State<VideoCallView> createState() => _VideoCallViewState();
}

class _VideoCallViewState extends State<VideoCallView> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _themeData(context),
      child: Stack(
        children: [
          Assets.images.videoCallBackground.image(
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black45,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'dr. Kartika Apshanti, Sp.JP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(1, 1),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '01:30',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      shadows: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(1, 1),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Row(
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 24,
            right: 16,
            child: Assets.images.videoCallFloating.image(),
          ),
        ],
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
