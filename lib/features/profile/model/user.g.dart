// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  email: json['email'] as String,
  username: json['username'] as String,
  guard: json['guard'] as String,
  status: json['status'] as bool,
  emailVerifiedAt: json['email_verified_at'] as String?,
  userable: Userable.fromJson(json['userable'] as Map<String, dynamic>),
  userType: json['user_type'] as String?,
  parentId: json['parent_id'] as String?,
  roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
  permissions: (json['permissions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'username': instance.username,
      'guard': instance.guard,
      'status': instance.status,
      'email_verified_at': instance.emailVerifiedAt,
      'userable': instance.userable,
      'user_type': instance.userType,
      'parent_id': instance.parentId,
      'roles': instance.roles,
      'permissions': instance.permissions,
    };

_$UserableImpl _$$UserableImplFromJson(Map<String, dynamic> json) =>
    _$UserableImpl(
      id: json['id'] as String,
      profilePicture: json['profile_picture'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'] as String?,
      coverPicture: json['cover_picture'] as String?,
      profileUrl: json['profile_url'] as String?,
      coverUrl: json['cover_url'] as String?,
    );

Map<String, dynamic> _$$UserableImplToJson(_$UserableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_picture': instance.profilePicture,
      'address': instance.address,
      'phone': instance.phone,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'cover_picture': instance.coverPicture,
      'profile_url': instance.profileUrl,
      'cover_url': instance.coverUrl,
    };
