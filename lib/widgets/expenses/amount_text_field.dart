import 'package:flutter/material.dart';

class AmountTextField extends StatelessWidget {
  const AmountTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          prefixText: 'CHF ',
          label: Text('Amount'),
        ),
      ),
    );
  }
}
