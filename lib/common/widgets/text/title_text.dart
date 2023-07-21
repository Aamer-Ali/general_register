import 'package:flutter/material.dart';

Widget buildTitleText({
  required BuildContext context,
  required String text,
  double marginTop = 20,
  double opacity = 1,
}) {
  return Container(
    margin: EdgeInsets.only(top: marginTop),
    child: Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(opacity),
          ),
    ),
  );
}
