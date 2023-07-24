import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';

class RangSliderAttributes {
  TextAttributes? labelTextAttributes;
  TextAttributes? errorTextAttributes;
  double maxValue;
  int division;
  RangeValues currentRangeValues;
  RangeLabels labels;
  // String? errorMessage;
  void Function(RangeValues) onChanged;

  RangSliderAttributes({
    required this.maxValue,
    required this.division,
    required this.currentRangeValues,
    required this.labels,
    this.errorTextAttributes,
    this.labelTextAttributes,
    required this.onChanged,
  });
}
