import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.hintText,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    Key? key,
    this.textEditingController,
    this.onTap,
    this.lightTheme = false,
    this.contentPadding,
    this.disableEditing = false,
    this.defaultText,
    this.floatingHintEnabled = true,
    this.prefixIconData, // Added prefix icon data
    this.suffixIconData, // Added suffix icon data
  }) : super(key: key);

  final String hintText;
  final TextCapitalization textCapitalization;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? textEditingController;
  final GestureTapCallback? onTap;
  final bool lightTheme;
  final EdgeInsetsGeometry? contentPadding;
  final bool disableEditing;
  final String? defaultText;
  final bool floatingHintEnabled;
  final IconData? prefixIconData; // Added prefix icon data
  final IconData? suffixIconData; // Added suffix icon data

  @override
  State<StatefulWidget> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _textController;
  late bool _textControllerFromParent;
  late FocusNode _textFocusNode;
  bool isHintVisible = false;

  @override
  void initState() {
    _textFocusNode =
        widget.disableEditing ? AlwaysDisabledFocusNode() : FocusNode();
    _textControllerFromParent = widget.textEditingController != null;
    _textController = widget.textEditingController ?? TextEditingController();
    _textController.text = widget.defaultText ?? '';

    _textController.addListener(_handleTextAndFocusChange);
    _textFocusNode.addListener(_handleTextAndFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    if (!_textControllerFromParent) {
      _textController.dispose();
    }
    _textFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
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
        child: TextField(
          controller: _textController,
          focusNode: _textFocusNode,
          textCapitalization: widget.textCapitalization,
          obscureText: widget.obscureText,
          keyboardType: widget.keyboardType,
          enabled: !widget.disableEditing,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIconData != null
                ? Icon(widget.prefixIconData)
                : null,
            suffixIcon: widget.suffixIconData != null
                ? Icon(widget.suffixIconData)
                : null,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: widget.hintText,
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
          onTap: widget.onTap,
        ),
      ),
    );
  }

  void _handleTextAndFocusChange() {
    setState(() {
      isHintVisible =
          _textFocusNode.hasFocus || _textController.text.isNotEmpty;
    });
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
