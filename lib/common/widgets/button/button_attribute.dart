class ButtonAttributes {
  String buttonName;
  void Function() onPressed;
  double? buttonWidth;

  ButtonAttributes({required this.buttonName, required this.onPressed, this.buttonWidth});
}
