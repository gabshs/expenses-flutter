import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const AdaptativeButton({this.label, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(color: Theme.of(context).textTheme.button.color),
            ),
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
          );
  }
}
