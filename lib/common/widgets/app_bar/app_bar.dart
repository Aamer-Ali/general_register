import 'package:flutter/material.dart';

AppBar buildAppBar({
  required String title,
  IconData? leadingIcon,
  List<Widget>? actionIcons,
  void Function()? onTapActionIcon,
  void Function()? onTapLeadingIcon,
}) {
  return AppBar(
    title: Text(title),
    leading: leadingIcon == null
        ? null
        : InkWell(
            onTap: onTapLeadingIcon,
            child: Icon(leadingIcon),
          ),
    actions: actionIcons,
  );
}
