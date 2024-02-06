import 'package:flutter/material.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/utils/app_styles.dart';

// ignore: must_be_immutable
class CustomDropdown extends StatefulWidget {
  String selectedValue;
  final double width;
  final double height;
  final List<String> values;
  final List<String> labels;
  Function(String?)? onchangedF;

  // Add the property for managing BoxShadow
  bool hasBoxShadow;

  CustomDropdown({
    Key? key,
    required this.selectedValue,
    required this.width,
    required this.height,
    required this.values,
    required this.labels,
    required this.onchangedF,
    // Provide a default value for hasBoxShadow
    this.hasBoxShadow = true,
  }) : super(key: key);

  // Add a method to update hasBoxShadow
  void updateBoxShadow(bool value) {
    hasBoxShadow = value;
  }

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: widget.width,
        height: widget.height,
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: widget.selectedValue,
            menuMaxHeight: 300,
            dropdownColor: Colors.white,
            elevation: 3,
            style: TextStyle(
                color: AppStyles.black.withOpacity(0.70), fontSize: 15),
            onChanged: widget.onchangedF,
            icon: const Icon(
              Icons.expand_more,
              color: AppColors.textcolor,
            ),
            items: List.generate(
              widget.values.length,
              (index) {
                return DropdownMenuItem<String>(
                  value: widget.values[index],
                  child: Text(
                    widget.labels[index],
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 15.0,
                          color: AppStyles.black.withOpacity(0.70),
                        ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
