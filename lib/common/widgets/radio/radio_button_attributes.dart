class RadioButtonAttributes {
  int currentSelectedIndex;
  List<RadioButtonValueAttribute> valueAttributes;
  void Function(RadioButtonValueAttribute?)? onChanged;

  RadioButtonAttributes({required this.valueAttributes, required this.currentSelectedIndex, this.onChanged});
}

class RadioButtonValueAttribute {
  String label;
  int value;

  RadioButtonValueAttribute({required this.label, required this.value});
}
