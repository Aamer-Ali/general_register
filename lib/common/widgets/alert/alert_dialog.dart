import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/alert/alert_dialog_attributes.dart';

class BuildAlertDialog extends StatelessWidget {
  BuildAlertDialog({super.key, required this.attributes});

  AlertDialogAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(attributes.title.text),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [...attributes.messages.map((e) => Text(e.text))],
      ),
      actions: [
        ...attributes.actions.map(
          (e) => TextButton(
            onPressed: () {
              Navigator.pop(context);
              e.onActionPressed;
            },
            child: Text(e.text),
          ),
        )
      ],
    );
  }
}
