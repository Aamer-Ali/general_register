class AlertDialogAttributes {
  AlertDialogTextAttributes title;
  List<AlertDialogTextAttributes> messages;
  List<AlertDialogActionButtonAttributes> actions;

  AlertDialogAttributes({required this.title, required this.messages, required this.actions});
}

class AlertDialogTextAttributes {
  String text;

  AlertDialogTextAttributes({required this.text});
}

class AlertDialogActionButtonAttributes {
  String text;
  void Function()? onActionPressed;

  AlertDialogActionButtonAttributes({required this.text, required this.onActionPressed});
}
