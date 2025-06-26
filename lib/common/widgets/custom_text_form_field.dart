import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? padding;
  final int? maxLength;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? obscureText;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  const CustomTextFormField({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.controller,
    this.textCapitalization,
    this.keyboardType,
    this.maxLength,
    this.textInputAction,
    this.suffixIcon,
    this.obscureText,
    this.validator, this.helperText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greenlightTwo),
  );

  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: TextFormField(
        onChanged: (value){
          if (value.length == 1){
            setState(() {
              _helperText = null ;
            });
          } else if(value.isEmpty){
            setState(() {
              _helperText = widget.helperText;
            });
          }
        },
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
        textInputAction: widget.textInputAction,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          helperMaxLines: 3,
          helperText: _helperText,
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          labelText: widget.labelText?.toUpperCase(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: AppTextStyles.inputLabelText,
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}
