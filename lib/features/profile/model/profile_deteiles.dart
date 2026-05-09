import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_deteiles.freezed.dart';
part 'profile_deteiles.g.dart';

@freezed
class ProfileDetails with _$ProfileDetails {
  const factory ProfileDetails({
    required String id,
    @JsonKey(name: 'userable_id') required String userableId,
    @JsonKey(name: 'userable_type') required String userableType,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String guard,
    required bool status,
    required String username,
    @JsonKey(name: 'pin_code') required String pinCode,
    @JsonKey(name: 'employee_number') required String employeeNumber,
    @JsonKey(name: 'security_level') required int securityLevel,
    required Userable userable,
    required Position position,
    required List<Role> roles,
    required List<String> permissions,
  }) = _ProfileDetails;

  factory ProfileDetails.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailsFromJson(json);
}

@freezed
class Userable with _$Userable {
  const factory Userable({
    required String id,
    required String phone,
    @JsonKey(name: 'profile_url') required String profileUrl,
    @JsonKey(name: 'cover_url') required String coverUrl,
    required Wage wage,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'cover_picture') String? coverPicture,
    String? address,
  }) = _Userable;

  factory Userable.fromJson(Map<String, dynamic> json) =>
      _$UserableFromJson(json);
}

@freezed
class Wage with _$Wage {
  const factory Wage({
    required String id,
    required String rate,
    @JsonKey(name: 'hourly_cost') required String hourlyCost,
    required String type,
    @JsonKey(name: 'expected_hour_per_week') required String expectedHourPerWeek,
    @JsonKey(name: 'labor_burden') required String laborBurden,
  }) = _Wage;

  factory Wage.fromJson(Map<String, dynamic> json) => _$WageFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    required String id,
    required String name,
    required String code,
    @JsonKey(name: 'is_editable') required int isEditable,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    required int id,
    required String name,
    @JsonKey(name: 'guard_name') required String guardName,
    @JsonKey(name: 'is_editable') required bool isEditable,
    required List<Permission> permissions,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class Permission with _$Permission {
  const factory Permission({
    required int id,
    required String name,
    required String module,
    required String group,
    required String type,
    required int position,
    @JsonKey(name: 'guard_name') required String guardName,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);
}