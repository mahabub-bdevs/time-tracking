// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_deteiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDetailsImpl _$$ProfileDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDetailsImpl(
      id: json['id'] as String,
      userableId: json['userable_id'] as String,
      userableType: json['userable_type'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      guard: json['guard'] as String,
      status: json['status'] as bool,
      username: json['username'] as String,
      pinCode: json['pin_code'] as String,
      employeeNumber: json['employee_number'] as String,
      securityLevel: (json['security_level'] as num).toInt(),
      userable: Userable.fromJson(json['userable'] as Map<String, dynamic>),
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      roles: (json['roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProfileDetailsImplToJson(
  _$ProfileDetailsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userable_id': instance.userableId,
  'userable_type': instance.userableType,
  'email': instance.email,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'guard': instance.guard,
  'status': instance.status,
  'username': instance.username,
  'pin_code': instance.pinCode,
  'employee_number': instance.employeeNumber,
  'security_level': instance.securityLevel,
  'userable': instance.userable,
  'position': instance.position,
  'roles': instance.roles,
  'permissions': instance.permissions,
};

_$UserableImpl _$$UserableImplFromJson(Map<String, dynamic> json) =>
    _$UserableImpl(
      id: json['id'] as String,
      phone: json['phone'] as String,
      profileUrl: json['profile_url'] as String,
      coverUrl: json['cover_url'] as String,
      wage: Wage.fromJson(json['wage'] as Map<String, dynamic>),
      profilePicture: json['profile_picture'] as String?,
      coverPicture: json['cover_picture'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$UserableImplToJson(_$UserableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'profile_url': instance.profileUrl,
      'cover_url': instance.coverUrl,
      'wage': instance.wage,
      'profile_picture': instance.profilePicture,
      'cover_picture': instance.coverPicture,
      'address': instance.address,
    };

_$WageImpl _$$WageImplFromJson(Map<String, dynamic> json) => _$WageImpl(
  id: json['id'] as String,
  rate: json['rate'] as String,
  hourlyCost: json['hourly_cost'] as String,
  type: json['type'] as String,
  expectedHourPerWeek: json['expected_hour_per_week'] as String,
  laborBurden: json['labor_burden'] as String,
);

Map<String, dynamic> _$$WageImplToJson(_$WageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'hourly_cost': instance.hourlyCost,
      'type': instance.type,
      'expected_hour_per_week': instance.expectedHourPerWeek,
      'labor_burden': instance.laborBurden,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      isEditable: (json['is_editable'] as num).toInt(),
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'is_editable': instance.isEditable,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  guardName: json['guard_name'] as String,
  isEditable: json['is_editable'] as bool,
  permissions: (json['permissions'] as List<dynamic>)
      .map((e) => Permission.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guard_name': instance.guardName,
      'is_editable': instance.isEditable,
      'permissions': instance.permissions,
    };

_$PermissionImpl _$$PermissionImplFromJson(Map<String, dynamic> json) =>
    _$PermissionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      module: json['module'] as String,
      group: json['group'] as String,
      type: json['type'] as String,
      position: (json['position'] as num).toInt(),
      guardName: json['guard_name'] as String,
    );

Map<String, dynamic> _$$PermissionImplToJson(_$PermissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'module': instance.module,
      'group': instance.group,
      'type': instance.type,
      'position': instance.position,
      'guard_name': instance.guardName,
    };
