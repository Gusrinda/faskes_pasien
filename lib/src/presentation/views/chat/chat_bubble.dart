import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:pasien/src/core/config/theme_colors.dart';

import '../resep/resep_view.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    this.me = false,
    required this.message,
    required this.time,
  }) : super(key: key);

  final bool me;
  final String message;
  final TimeOfDay time;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final spacer = constraints.maxWidth * 0.15;
        final margin = me
            ? const EdgeInsets.fromLTRB(4, 8, 16, 8)
            : const EdgeInsets.fromLTRB(16, 8, 4, 8);
        const radius = Radius.circular(20);
        final decoration = BoxDecoration(
          color: me ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: me
              ? const BorderRadius.only(
                  topLeft: radius,
                  topRight: radius,
                  bottomLeft: radius,
                )
              : const BorderRadius.only(
                  topLeft: radius,
                  topRight: radius,
                  bottomRight: radius,
                ),
        );
        final child = Linkify(
          onOpen: (link) {
            Navigator.pushNamed(context, ResepView.routeName);
          },
          text: message,
          style: TextStyle(color: me ? Colors.white : null, fontSize: 13),
        );
        final timestamp = Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            time.description,
            style: const TextStyle(
              color: ThemeColors.greyCaption,
              fontSize: 11,
            ),
          ),
        );

        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (me) ...{
              SizedBox(width: spacer),
              timestamp,
            },
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: margin,
                decoration: decoration,
                child: child,
              ),
            ),
            if (!me) ...{
              timestamp,
              SizedBox(width: spacer),
            },
          ],
        );
      },
    );
  }
}

extension on TimeOfDay {
  String get description {
    String addLeadingZeroIfNeeded(int value) {
      if (value < 10) {
        return '0$value';
      }
      return value.toString();
    }

    final String hourLabel = addLeadingZeroIfNeeded(hour);
    final String minuteLabel = addLeadingZeroIfNeeded(minute);

    return '$hourLabel:$minuteLabel';
  }
}
