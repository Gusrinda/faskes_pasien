import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseMaterialPage extends StatelessWidget with DismissKeyboard {
  const BaseMaterialPage({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          dismiss(context: context);
        },
        child: child,
      ),
    );
  }
}

mixin DismissKeyboard on StatelessWidget {
  void dismiss({BuildContext? context}) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (context != null) {
      FocusScope.of(context).unfocus();
    }
  }
}
