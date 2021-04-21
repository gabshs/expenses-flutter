import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextInputType keyboardTipe;
  final Function(String) onSubmitted;
  final TextEditingController controller;

  const AdaptativeTextField(
      {this.label, this.keyboardTipe, this.onSubmitted, this.controller});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CupertinoTextField(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              keyboardType: keyboardTipe,
              controller: controller,
              onSubmitted: onSubmitted,
              placeholder: label,
            ),
          )
        : TextField(
            keyboardType: keyboardTipe,
            controller: controller,
            onSubmitted: onSubmitted,
            decoration: InputDecoration(labelText: label),
          );
  }
}
