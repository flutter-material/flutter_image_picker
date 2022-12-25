import 'dart:typed_data';

import 'package:flutter/material.dart';

class show_image extends StatefulWidget {
  show_image({required this.bytesImage});
  final Uint8List bytesImage;

  @override
  State<show_image> createState() => _show_imageState();
}

class _show_imageState extends State<show_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image.memory(
          widget.bytesImage,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
