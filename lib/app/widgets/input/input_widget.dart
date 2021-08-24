import 'package:flutter/material.dart';
import 'package:meditation/app/constant/colors.dart';
import 'package:meditation/app/constant/constants.dart';

/// custom text input field widget
class InputField extends StatefulWidget {
  const InputField(
      {this.label,
      this.hintText,
      this.obscureText = false,
      this.textInputType = TextInputType.text,
      this.icon,
      this.validator,
      this.onFieldSubmitted,
      this.onChanged,
      this.controller,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.borderRadius = 0,
      this.color = Colors.transparent});

  final IconData? icon;
  final String? hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final validator;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final String? label;
  final controller;
  final autovalidateMode;
  final double borderRadius;
  final Color color;

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  ///toggle status for passsword eye
  bool showPassword = false;

  /// toggle status for password field
  bool shownPassword = false;

  @override
  void initState() {
    super.initState();
    shownPassword = widget.obscureText;
  }

  /// toggle password view
  void togglePassword() {
    setState(() {
      showPassword = !showPassword;
      shownPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      margin: new EdgeInsets.symmetric(
        horizontal: Constants.defaultPadding,
        vertical: Constants.defaultPadding / 2,
      ),

      child: TextFormField(
        controller: widget.controller ?? null,
        autovalidateMode: widget.autovalidateMode,
        decoration: new InputDecoration(
          fillColor: widget.color,
          contentPadding: widget.icon != null
              ? EdgeInsets.fromLTRB(20, 0, 20, 0)
              : EdgeInsets.fromLTRB(20, 0, 20, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: AppColors.GREY),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: AppColors.GREY),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: const BorderSide(color: AppColors.GREY),
          ),
          prefixIcon: widget.icon != null ? new Icon(widget.icon) : null,
          labelText: widget.label ?? null,
          hintText: widget.hintText ?? null,
          hintStyle: TextStyle(
            color: AppColors.GREY,
            fontSize: Constants.defaultFontSize,
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () => togglePassword(),
                  icon: Icon(
                    showPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.GREY,
                  ),
                  splashRadius: 0.1,
                )
              : null,
        ),
        validator: widget.validator ?? null,
        onFieldSubmitted: widget.onFieldSubmitted ?? null,
        onChanged: widget.onChanged ?? null,
        obscureText: shownPassword,
        keyboardType: widget.textInputType,
      ),
    );
  }
}
