import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon,
    this.backgroundColor,
    this.prefixIcon,
    this.controller,
    this.validator,
  });

  final String hintText;
  final bool? isPassword;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final Function(String)? validator;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isObscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      controller: widget.controller,
      validator: (value) => widget.validator!(value!),
      decoration: InputDecoration(
        //-------------------------------------- Borders --------------------------------------
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightGrey,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        // -------------------------------------- Others --------------------------------------
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        hintText: widget.hintText,
        hintStyle: AppStyles.medium14.copyWith(color: AppColors.grey),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword!
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: isObscureText
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off))
            : null,
        filled: true,
        fillColor: widget.backgroundColor ?? const Color(0xFFFDFDFF),
      ),
    );
  }
}
