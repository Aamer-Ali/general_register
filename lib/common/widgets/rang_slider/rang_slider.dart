import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/rang_slider/rang_slider_attributes.dart';
import 'package:general_register/common/widgets/text/error_text.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class BuildRangeSlider extends StatelessWidget {
  final RangSliderAttributes attributes;

  const BuildRangeSlider({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        attributes.labelTextAttributes == null
            ? Container()
            : BuildSimpleText(attributes: attributes.labelTextAttributes!),
        RangeSlider(
          // min: attributes.minValue,
          max: attributes.maxValue,
          divisions: attributes.division,
          values: attributes.currentRangeValues,
          onChanged: attributes.onChanged,
          labels: RangeLabels(
            attributes.currentRangeValues.start.round().toString(),
            attributes.currentRangeValues.end.round().toString(),
          ),
        ),
        Visibility(
            visible: attributes.errorTextAttributes == null ? false : true,
            child: BuildErrorText(attributes: attributes.errorTextAttributes ?? TextAttributes(text: "")))
      ],
    );
  }
}
