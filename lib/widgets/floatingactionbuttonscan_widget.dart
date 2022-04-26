import 'package:flutter/material.dart';

class floatingactionbuttonscanCustom extends StatelessWidget {
  const floatingactionbuttonscanCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.qr_code_scanner),
    );
  }
}
