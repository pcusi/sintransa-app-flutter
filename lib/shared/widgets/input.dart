import 'package:flutter/material.dart';
import 'package:sintransa_app/shared/constants/ui.dart';

class InputText extends StatefulWidget {
  final String hintText;
  final String labelText;
  final Color color;
  final bool isPassword;
  final Function onChanged;
  final Color cBorder;
  final Color lColor;
  final Color pColor;
  final bool Function(String) validator;

  const InputText({
    Key key,
    this.hintText,
    this.color,
    this.isPassword = false,
    this.onChanged,
    this.cBorder,
    this.lColor,
    this.pColor,
    this.labelText,
    this.validator,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _isValid = false;

  void _validate(String text) {
    if (widget.validator != null) {
      _isValid = widget.validator(text);
      setState(() {});
    }

    if (widget.onChanged != null) {
      widget.onChanged(text);
    }

  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? true : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: UI.cWhite,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Lato',
          color: widget.pColor,
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _isValid ? UI.cPrimaryOne : widget.cBorder,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.cBorder,
            width: 1.0,
          ),
        ),
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontFamily: 'Lato',
          color: widget.lColor,
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
        ),
      ),
      onChanged: _validate,
    );
  }
}
