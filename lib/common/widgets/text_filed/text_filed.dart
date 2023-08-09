import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/text_filed/text_field_attributes.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({super.key, required this.attributes});

  final TextFieldAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(

        validator: attributes.functionOnValidated,
        controller: attributes.controller,
        onChanged: (value) => attributes.functionOnChange ?? (value),
        autocorrect: false,
        obscureText: attributes.obscureText,
        decoration: InputDecoration(
          prefixIcon: attributes.icon == null ? null : Icon(attributes.icon),
          labelText: attributes.labelText,
          hintText: attributes.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}