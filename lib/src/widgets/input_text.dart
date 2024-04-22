import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icono;
  final bool obsecure;
  final TextInputType keyboard;
  final void Function(String data) onChanged;
  final String Function(String data) validator;

  const InputText({
    super.key,
   this.label='',
   this.hint='',
   required this.icono,
   this.obsecure=false,
   required this.onChanged,
   required this.validator,
   this.keyboard = TextInputType.text,
  });

@override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboard,
        obscureText: obsecure,
        validator: (value) => validator(value ?? ''),
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 25.0),
            suffixIcon: this.icono,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
              )
        ),
      ),
    );
  }
  }