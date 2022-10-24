import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<String?> getRetryConfirmation(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Login Error"),
        content: const Text(
          "An error occurred during your login. "
          "Please try again in a few moments.",
        ),
        actions: [
          TextButton(
            child: const Text("Cancel"),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: const Text("Try Again"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}
