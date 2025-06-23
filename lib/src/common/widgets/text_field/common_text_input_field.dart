import 'package:flutter/material.dart';
import 'package:yumio/src/app/contants/app_colors.dart';

class CommonTextInputField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Color? backgroundColor;
  final double? borderRadius;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool? showSuffixIcon;
  final Widget? suffixIcon;

  const CommonTextInputField({
    super.key,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.backgroundColor,
    this.borderRadius,
    this.onChanged,
    this.onTap,
    this.showSuffixIcon = false,
    this.suffixIcon,
  });

  @override
  State<CommonTextInputField> createState() => CommonTextInputFieldState();
}

class CommonTextInputFieldState extends State<CommonTextInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        onTap: widget.onTap,
        style: TextStyle(
          color: AppColors.textTertiary,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
        cursorColor: AppColors.primary,
        cursorHeight: 18,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.backgroundColor ?? AppColors.transparent,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.grey2,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 12.5,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.inputBorder),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.inputBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.inputBorder),
          ),
          suffixIcon:
              widget.showSuffixIcon! ? widget.suffixIcon ?? SizedBox() : null,
          suffixIconConstraints: BoxConstraints(maxHeight: 35),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
