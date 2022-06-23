import 'package:flutter/material.dart';
import 'package:amazon_node_clone/constants/global_variables.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key, required this.hintName,
  }) : super(key: key);

  final String hintName;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintName,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
      ),
    );
  }
}
