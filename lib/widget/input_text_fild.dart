import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';

class InputTextField extends StatelessWidget {
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final String? hintText;
  final TextEditingController? controller;

  final int? length;

  const InputTextField({
    super.key,
    this.controller,
    this.hintText,
    this.length,
    this.prefixIconData,
    this.suffixIconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        maxLength: length,
        keyboardType: length != null ? TextInputType.number : null,
        decoration: InputDecoration(
          prefixIcon: prefixIconData != null ? Icon(prefixIconData) : null,
          suffixIcon: suffixIconData != null ? Icon(suffixIconData) : null,
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppStyles.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppStyles.white,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppStyles.white,
            ),
          ),
          labelStyle: TextStyle(
            color: AppStyles.black.withOpacity(0.70),
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          hintStyle: const TextStyle(
            color: AppStyles.black,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
