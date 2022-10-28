import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextfield extends StatefulWidget {
  /// Class controller
  final TextEditingController controller;

  /// Change textfield current state when the data changes
  final void Function(String)? onChanged;

  /// Form validation
  final String? Function(String?)? validator;

  /// Apply mask to the text
  final List<TextInputFormatter>? inputFormatters;

  /// Show some text inside of textFormField
  final Widget? label;

  /// Set if the field is password or not
  final bool isPassword;

  const AppTextfield(
      {Key? key,
      required this.controller,
      this.onChanged,
      this.validator,
      this.inputFormatters,
      this.label,
      this.isPassword = false})
      : super(key: key);

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: widget.validator,
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: obscureText
                      ? Icon(
                          Icons.visibility_off,
                          color: Colors.deepOrangeAccent,
                        )
                      : Icon(
                          Icons.visibility,
                          color: Colors.deepOrangeAccent,
                        ),
                  onPressed: () {
                    setState(() => obscureText = !obscureText);
                  },
                )
              : SizedBox(),
          label: widget.label,
          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrangeAccent),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
