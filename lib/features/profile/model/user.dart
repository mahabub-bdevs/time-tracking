import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String username,
    required String guard,
    required bool status,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    required Userable userable,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'parent_id') String? parentId,
    required List<String> roles,
    required List<String> permissions,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Userable with _$Userable {
  const factory Userable({
    required String id,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    String? address,
    String? phone,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'cover_picture') String? coverPicture,
    @JsonKey(name: 'profile_url') String? profileUrl,
    @JsonKey(name: 'cover_url') String? coverUrl,
  }) = _Userable;

  factory Userable.fromJson(Map<String, dynamic> json) =>
      _$UserableFromJson(json);
}