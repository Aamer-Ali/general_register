import 'package:flutter/cupertino.dart';
import 'package:general_register/features/authentication/domain/entities/user_info_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel extends UserInfoEntity {
  final String? displayName;
  final String? email;
  final String? phoneNumber;
  final String? photoURL;
  final String? uid;

  UserInfoModel({
    required this.displayName,
    required this.email,
    required this.phoneNumber,
    required this.photoURL,
    required this.uid,
  }) : super(
            displayName: displayName,
            email: email,
            phoneNumber: phoneNumber,
            photoURL: phoneNumber);

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}
