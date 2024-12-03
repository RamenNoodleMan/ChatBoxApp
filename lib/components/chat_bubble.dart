import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themes/theme_provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({super.key,
  required this.message,
  required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
    Provider.of<ThemeProvider>(context, listen: false).isDarkMode;

    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser
        ? (isDarkMode? Colors.green: Colors.grey)
            : (isDarkMode ? Colors.blueGrey: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12)
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Text(message,

      style: TextStyle(
      color: isCurrentUser ? Colors.white:
      (isDarkMode ? Colors.white : Colors.black))
    ),
    );
  }
}
