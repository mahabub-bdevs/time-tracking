// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get guard => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  Userable get userable => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    String email,
    String username,
    String guard,
    bool status,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    Userable userable,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'parent_id') String? parentId,
    List<String> roles,
    List<String> permissions,
  });

  $UserableCopyWith<$Res> get userable;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? username = null,
    Object? guard = null,
    Object? status = null,
    Object? emailVerifiedAt = freezed,
    Object? userable = null,
    Object? userType = freezed,
    Object? parentId = freezed,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            guard: null == guard
                ? _value.guard
                : guard // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as bool,
            emailVerifiedAt: freezed == emailVerifiedAt
                ? _value.emailVerifiedAt
                : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            userable: null == userable
                ? _value.userable
                : userable // ignore: cast_nullable_to_non_nullable
                      as Userable,
            userType: freezed == userType
                ? _value.userType
                : userType // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            roles: null == roles
                ? _value.roles
                : roles // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            permissions: null == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserableCopyWith<$Res> get userable {
    return $UserableCopyWith<$Res>(_value.userable, (value) {
      return _then(_value.copyWith(userable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    String email,
    String username,
    String guard,
    bool status,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    Userable userable,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'parent_id') String? parentId,
    List<String> roles,
    List<String> permissions,
  });

  @override
  $UserableCopyWith<$Res> get userable;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? username = null,
    Object? guard = null,
    Object? status = null,
    Object? emailVerifiedAt = freezed,
    Object? userable = null,
    Object? userType = freezed,
    Object? parentId = freezed,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(
      _$UserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        guard: null == guard
            ? _value.guard
            : guard // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
        emailVerifiedAt: freezed == emailVerifiedAt
            ? _value.emailVerifiedAt
            : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        userable: null == userable
            ? _value.userable
            : userable // ignore: cast_nullable_to_non_nullable
                  as Userable,
        userType: freezed == userType
            ? _value.userType
            : userType // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        roles: null == roles
            ? _value._roles
            : roles // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        permissions: null == permissions
            ? _value._permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') required this.lastName,
    required this.email,
    required this.username,
    required this.guard,
    required this.status,
    @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
    required this.userable,
    @JsonKey(name: 'user_type') this.userType,
    @JsonKey(name: 'parent_id') this.parentId,
    required final List<String> roles,
    required final List<String> permissions,
  }) : _roles = roles,
       _permissions = permissions;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String email;
  @override
  final String username;
  @override
  final String guard;
  @override
  final bool status;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  final Userable userable;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final List<String> _permissions;
  @override
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, username: $username, guard: $guard, status: $status, emailVerifiedAt: $emailVerifiedAt, userable: $userable, userType: $userType, parentId: $parentId, roles: $roles, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.guard, guard) || other.guard == guard) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.userable, userable) ||
                other.userable == userable) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality().equals(
              other._permissions,
              _permissions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstName,
    lastName,
    email,
    username,
    guard,
    status,
    emailVerifiedAt,
    userable,
    userType,
    parentId,
    const DeepCollectionEquality().hash(_roles),
    const DeepCollectionEquality().hash(_permissions),
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final String id,
    @JsonKey(name: 'first_name') required final String firstName,
    @JsonKey(name: 'last_name') required final String lastName,
    required final String email,
    required final String username,
    required final String guard,
    required final bool status,
    @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
    required final Userable userable,
    @JsonKey(name: 'user_type') final String? userType,
    @JsonKey(name: 'parent_id') final String? parentId,
    required final List<String> roles,
    required final List<String> permissions,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get email;
  @override
  String get username;
  @override
  String get guard;
  @override
  bool get status;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  Userable get userable;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  List<String> get roles;
  @override
  List<String> get permissions;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Userable _$UserableFromJson(Map<String, dynamic> json) {
  return _Userable.fromJson(json);
}

/// @nodoc
mixin _$Userable {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_picture')
  String? get coverPicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_url')
  String? get profileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_url')
  String? get coverUrl => throw _privateConstructorUsedError;

  /// Serializes this Userable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserableCopyWith<Userable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserableCopyWith<$Res> {
  factory $UserableCopyWith(Userable value, $Res Function(Userable) then) =
      _$UserableCopyWithImpl<$Res, Userable>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    String? address,
    String? phone,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'cover_picture') String? coverPicture,
    @JsonKey(name: 'profile_url') String? profileUrl,
    @JsonKey(name: 'cover_url') String? coverUrl,
  });
}

/// @nodoc
class _$UserableCopyWithImpl<$Res, $Val extends Userable>
    implements $UserableCopyWith<$Res> {
  _$UserableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profilePicture = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? coverPicture = freezed,
    Object? profileUrl = freezed,
    Object? coverUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            profilePicture: freezed == profilePicture
                ? _value.profilePicture
                : profilePicture // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPicture: freezed == coverPicture
                ? _value.coverPicture
                : coverPicture // ignore: cast_nullable_to_non_nullable
                      as String?,
            profileUrl: freezed == profileUrl
                ? _value.profileUrl
                : profileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverUrl: freezed == coverUrl
                ? _value.coverUrl
                : coverUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserableImplCopyWith<$Res>
    implements $UserableCopyWith<$Res> {
  factory _$$UserableImplCopyWith(
    _$UserableImpl value,
    $Res Function(_$UserableImpl) then,
  ) = __$$UserableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    String? address,
    String? phone,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'cover_picture') String? coverPicture,
    @JsonKey(name: 'profile_url') String? profileUrl,
    @JsonKey(name: 'cover_url') String? coverUrl,
  });
}

/// @nodoc
class __$$UserableImplCopyWithImpl<$Res>
    extends _$UserableCopyWithImpl<$Res, _$UserableImpl>
    implements _$$UserableImplCopyWith<$Res> {
  __$$UserableImplCopyWithImpl(
    _$UserableImpl _value,
    $Res Function(_$UserableImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profilePicture = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? coverPicture = freezed,
    Object? profileUrl = freezed,
    Object? coverUrl = freezed,
  }) {
    return _then(
      _$UserableImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        profilePicture: freezed == profilePicture
            ? _value.profilePicture
            : profilePicture // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPicture: freezed == coverPicture
            ? _value.coverPicture
            : coverPicture // ignore: cast_nullable_to_non_nullable
                  as String?,
        profileUrl: freezed == profileUrl
            ? _value.profileUrl
            : profileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverUrl: freezed == coverUrl
            ? _value.coverUrl
            : coverUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserableImpl implements _Userable {
  const _$UserableImpl({
    required this.id,
    @JsonKey(name: 'profile_picture') this.profilePicture,
    this.address,
    this.phone,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    @JsonKey(name: 'deleted_at') this.deletedAt,
    @JsonKey(name: 'cover_picture') this.coverPicture,
    @JsonKey(name: 'profile_url') this.profileUrl,
    @JsonKey(name: 'cover_url') this.coverUrl,
  });

  factory _$UserableImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserableImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'cover_picture')
  final String? coverPicture;
  @override
  @JsonKey(name: 'profile_url')
  final String? profileUrl;
  @override
  @JsonKey(name: 'cover_url')
  final String? coverUrl;

  @override
  String toString() {
    return 'Userable(id: $id, profilePicture: $profilePicture, address: $address, phone: $phone, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, coverPicture: $coverPicture, profileUrl: $profileUrl, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.coverPicture, coverPicture) ||
                other.coverPicture == coverPicture) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    profilePicture,
    address,
    phone,
    createdAt,
    updatedAt,
    deletedAt,
    coverPicture,
    profileUrl,
    coverUrl,
  );

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserableImplCopyWith<_$UserableImpl> get copyWith =>
      __$$UserableImplCopyWithImpl<_$UserableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserableImplToJson(this);
  }
}

abstract class _Userable implements Userable {
  const factory _Userable({
    required final String id,
    @JsonKey(name: 'profile_picture') final String? profilePicture,
    final String? address,
    final String? phone,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'updated_at') required final String updatedAt,
    @JsonKey(name: 'deleted_at') final String? deletedAt,
    @JsonKey(name: 'cover_picture') final String? coverPicture,
    @JsonKey(name: 'profile_url') final String? profileUrl,
    @JsonKey(name: 'cover_url') final String? coverUrl,
  }) = _$UserableImpl;

  factory _Userable.fromJson(Map<String, dynamic> json) =
      _$UserableImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'cover_picture')
  String? get coverPicture;
  @override
  @JsonKey(name: 'profile_url')
  String? get profileUrl;
  @override
  @JsonKey(name: 'cover_url')
  String? get coverUrl;

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserableImplCopyWith<_$UserableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
