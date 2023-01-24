import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
