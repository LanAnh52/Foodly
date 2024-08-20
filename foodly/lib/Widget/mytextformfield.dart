import 'package:flutter/material.dart';

class TextFiledInput extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final IconData icon;
  final bool iconPass;
  final VoidCallback? onPressed; //hien Pass

  const TextFiledInput({
    super.key, 
    required this.textEditingController, 
    this.isPass = false, 
    this.iconPass = false, 
    required this.hintText, 
    required this.icon, 
    required this.label, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField( 
      obscureText: isPass,
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black45,
          fontSize: 16,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black45,
          fontSize: 18
        ),
        prefixIcon: Icon(
          icon, 
          color: Colors.black45
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15, 
          horizontal: 20
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: const Color(0xFFedf0f8),
        enabledBorder: OutlineInputBorder (
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder (
          borderSide: const BorderSide(
            width: 2, 
            color: Colors.green),
          borderRadius: BorderRadius.circular(30),
        ),
        suffixIcon: iconPass? 
          IconButton (
            onPressed: onPressed,
            icon: Icon(
              isPass? Icons.visibility_off : Icons.visibility,
            )
          )  
        : null, 
      ),
      ),
    );
  }
}