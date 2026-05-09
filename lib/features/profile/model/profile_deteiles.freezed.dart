// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_deteiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProfileDetails _$ProfileDetailsFromJson(Map<String, dynamic> json) {
  return _ProfileDetails.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetails {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userable_id')
  String get userableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userable_type')
  String get userableType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get guard => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_number')
  String get employeeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'security_level')
  int get securityLevel => throw _privateConstructorUsedError;
  Userable get userable => throw _privateConstructorUsedError;
  Position get position => throw _privateConstructorUsedError;
  List<Role> get roles => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;

  /// Serializes this ProfileDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDetailsCopyWith<ProfileDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailsCopyWith<$Res> {
  factory $ProfileDetailsCopyWith(
    ProfileDetails value,
    $Res Function(ProfileDetails) then,
  ) = _$ProfileDetailsCopyWithImpl<$Res, ProfileDetails>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'userable_id') String userableId,
    @JsonKey(name: 'userable_type') String userableType,
    String email,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    String guard,
    bool status,
    String username,
    @JsonKey(name: 'pin_code') String pinCode,
    @JsonKey(name: 'employee_number') String employeeNumber,
    @JsonKey(name: 'security_level') int securityLevel,
    Userable userable,
    Position position,
    List<Role> roles,
    List<String> permissions,
  });

  $UserableCopyWith<$Res> get userable;
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$ProfileDetailsCopyWithImpl<$Res, $Val extends ProfileDetails>
    implements $ProfileDetailsCopyWith<$Res> {
  _$ProfileDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userableId = null,
    Object? userableType = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? guard = null,
    Object? status = null,
    Object? username = null,
    Object? pinCode = null,
    Object? employeeNumber = null,
    Object? securityLevel = null,
    Object? userable = null,
    Object? position = null,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userableId: null == userableId
                ? _value.userableId
                : userableId // ignore: cast_nullable_to_non_nullable
                      as String,
            userableType: null == userableType
                ? _value.userableType
                : userableType // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            guard: null == guard
                ? _value.guard
                : guard // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as bool,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            pinCode: null == pinCode
                ? _value.pinCode
                : pinCode // ignore: cast_nullable_to_non_nullable
                      as String,
            employeeNumber: null == employeeNumber
                ? _value.employeeNumber
                : employeeNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            securityLevel: null == securityLevel
                ? _value.securityLevel
                : securityLevel // ignore: cast_nullable_to_non_nullable
                      as int,
            userable: null == userable
                ? _value.userable
                : userable // ignore: cast_nullable_to_non_nullable
                      as Userable,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as Position,
            roles: null == roles
                ? _value.roles
                : roles // ignore: cast_nullable_to_non_nullable
                      as List<Role>,
            permissions: null == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserableCopyWith<$Res> get userable {
    return $UserableCopyWith<$Res>(_value.userable, (value) {
      return _then(_value.copyWith(userable: value) as $Val);
    });
  }

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDetailsImplCopyWith<$Res>
    implements $ProfileDetailsCopyWith<$Res> {
  factory _$$ProfileDetailsImplCopyWith(
    _$ProfileDetailsImpl value,
    $Res Function(_$ProfileDetailsImpl) then,
  ) = __$$ProfileDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'userable_id') String userableId,
    @JsonKey(name: 'userable_type') String userableType,
    String email,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    String guard,
    bool status,
    String username,
    @JsonKey(name: 'pin_code') String pinCode,
    @JsonKey(name: 'employee_number') String employeeNumber,
    @JsonKey(name: 'security_level') int securityLevel,
    Userable userable,
    Position position,
    List<Role> roles,
    List<String> permissions,
  });

  @override
  $UserableCopyWith<$Res> get userable;
  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$ProfileDetailsImplCopyWithImpl<$Res>
    extends _$ProfileDetailsCopyWithImpl<$Res, _$ProfileDetailsImpl>
    implements _$$ProfileDetailsImplCopyWith<$Res> {
  __$$ProfileDetailsImplCopyWithImpl(
    _$ProfileDetailsImpl _value,
    $Res Function(_$ProfileDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userableId = null,
    Object? userableType = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? guard = null,
    Object? status = null,
    Object? username = null,
    Object? pinCode = null,
    Object? employeeNumber = null,
    Object? securityLevel = null,
    Object? userable = null,
    Object? position = null,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(
      _$ProfileDetailsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userableId: null == userableId
            ? _value.userableId
            : userableId // ignore: cast_nullable_to_non_nullable
                  as String,
        userableType: null == userableType
            ? _value.userableType
            : userableType // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        guard: null == guard
            ? _value.guard
            : guard // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        pinCode: null == pinCode
            ? _value.pinCode
            : pinCode // ignore: cast_nullable_to_non_nullable
                  as String,
        employeeNumber: null == employeeNumber
            ? _value.employeeNumber
            : employeeNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        securityLevel: null == securityLevel
            ? _value.securityLevel
            : securityLevel // ignore: cast_nullable_to_non_nullable
                  as int,
        userable: null == userable
            ? _value.userable
            : userable // ignore: cast_nullable_to_non_nullable
                  as Userable,
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as Position,
        roles: null == roles
            ? _value._roles
            : roles // ignore: cast_nullable_to_non_nullable
                  as List<Role>,
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
class _$ProfileDetailsImpl implements _ProfileDetails {
  const _$ProfileDetailsImpl({
    required this.id,
    @JsonKey(name: 'userable_id') required this.userableId,
    @JsonKey(name: 'userable_type') required this.userableType,
    required this.email,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') required this.lastName,
    required this.guard,
    required this.status,
    required this.username,
    @JsonKey(name: 'pin_code') required this.pinCode,
    @JsonKey(name: 'employee_number') required this.employeeNumber,
    @JsonKey(name: 'security_level') required this.securityLevel,
    required this.userable,
    required this.position,
    required final List<Role> roles,
    required final List<String> permissions,
  }) : _roles = roles,
       _permissions = permissions;

  factory _$ProfileDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDetailsImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'userable_id')
  final String userableId;
  @override
  @JsonKey(name: 'userable_type')
  final String userableType;
  @override
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String guard;
  @override
  final bool status;
  @override
  final String username;
  @override
  @JsonKey(name: 'pin_code')
  final String pinCode;
  @override
  @JsonKey(name: 'employee_number')
  final String employeeNumber;
  @override
  @JsonKey(name: 'security_level')
  final int securityLevel;
  @override
  final Userable userable;
  @override
  final Position position;
  final List<Role> _roles;
  @override
  List<Role> get roles {
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
    return 'ProfileDetails(id: $id, userableId: $userableId, userableType: $userableType, email: $email, firstName: $firstName, lastName: $lastName, guard: $guard, status: $status, username: $username, pinCode: $pinCode, employeeNumber: $employeeNumber, securityLevel: $securityLevel, userable: $userable, position: $position, roles: $roles, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userableId, userableId) ||
                other.userableId == userableId) &&
            (identical(other.userableType, userableType) ||
                other.userableType == userableType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.guard, guard) || other.guard == guard) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.securityLevel, securityLevel) ||
                other.securityLevel == securityLevel) &&
            (identical(other.userable, userable) ||
                other.userable == userable) &&
            (identical(other.position, position) ||
                other.position == position) &&
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
    userableId,
    userableType,
    email,
    firstName,
    lastName,
    guard,
    status,
    username,
    pinCode,
    employeeNumber,
    securityLevel,
    userable,
    position,
    const DeepCollectionEquality().hash(_roles),
    const DeepCollectionEquality().hash(_permissions),
  );

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailsImplCopyWith<_$ProfileDetailsImpl> get copyWith =>
      __$$ProfileDetailsImplCopyWithImpl<_$ProfileDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDetailsImplToJson(this);
  }
}

abstract class _ProfileDetails implements ProfileDetails {
  const factory _ProfileDetails({
    required final String id,
    @JsonKey(name: 'userable_id') required final String userableId,
    @JsonKey(name: 'userable_type') required final String userableType,
    required final String email,
    @JsonKey(name: 'first_name') required final String firstName,
    @JsonKey(name: 'last_name') required final String lastName,
    required final String guard,
    required final bool status,
    required final String username,
    @JsonKey(name: 'pin_code') required final String pinCode,
    @JsonKey(name: 'employee_number') required final String employeeNumber,
    @JsonKey(name: 'security_level') required final int securityLevel,
    required final Userable userable,
    required final Position position,
    required final List<Role> roles,
    required final List<String> permissions,
  }) = _$ProfileDetailsImpl;

  factory _ProfileDetails.fromJson(Map<String, dynamic> json) =
      _$ProfileDetailsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'userable_id')
  String get userableId;
  @override
  @JsonKey(name: 'userable_type')
  String get userableType;
  @override
  String get email;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get guard;
  @override
  bool get status;
  @override
  String get username;
  @override
  @JsonKey(name: 'pin_code')
  String get pinCode;
  @override
  @JsonKey(name: 'employee_number')
  String get employeeNumber;
  @override
  @JsonKey(name: 'security_level')
  int get securityLevel;
  @override
  Userable get userable;
  @override
  Position get position;
  @override
  List<Role> get roles;
  @override
  List<String> get permissions;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDetailsImplCopyWith<_$ProfileDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Userable _$UserableFromJson(Map<String, dynamic> json) {
  return _Userable.fromJson(json);
}

/// @nodoc
mixin _$Userable {
  String get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_url')
  String get profileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_url')
  String get coverUrl => throw _privateConstructorUsedError;
  Wage get wage => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_picture')
  String? get coverPicture => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

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
    String phone,
    @JsonKey(name: 'profile_url') String profileUrl,
    @JsonKey(name: 'cover_url') String coverUrl,
    Wage wage,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'cover_picture') String? coverPicture,
    String? address,
  });

  $WageCopyWith<$Res> get wage;
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
    Object? phone = null,
    Object? profileUrl = null,
    Object? coverUrl = null,
    Object? wage = null,
    Object? profilePicture = freezed,
    Object? coverPicture = freezed,
    Object? address = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            profileUrl: null == profileUrl
                ? _value.profileUrl
                : profileUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            coverUrl: null == coverUrl
                ? _value.coverUrl
                : coverUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            wage: null == wage
                ? _value.wage
                : wage // ignore: cast_nullable_to_non_nullable
                      as Wage,
            profilePicture: freezed == profilePicture
                ? _value.profilePicture
                : profilePicture // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPicture: freezed == coverPicture
                ? _value.coverPicture
                : coverPicture // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WageCopyWith<$Res> get wage {
    return $WageCopyWith<$Res>(_value.wage, (value) {
      return _then(_value.copyWith(wage: value) as $Val);
    });
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
    String phone,
    @JsonKey(name: 'profile_url') String profileUrl,
    @JsonKey(name: 'cover_url') String coverUrl,
    Wage wage,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'cover_picture') String? coverPicture,
    String? address,
  });

  @override
  $WageCopyWith<$Res> get wage;
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
    Object? phone = null,
    Object? profileUrl = null,
    Object? coverUrl = null,
    Object? wage = null,
    Object? profilePicture = freezed,
    Object? coverPicture = freezed,
    Object? address = freezed,
  }) {
    return _then(
      _$UserableImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        profileUrl: null == profileUrl
            ? _value.profileUrl
            : profileUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        coverUrl: null == coverUrl
            ? _value.coverUrl
            : coverUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        wage: null == wage
            ? _value.wage
            : wage // ignore: cast_nullable_to_non_nullable
                  as Wage,
        profilePicture: freezed == profilePicture
            ? _value.profilePicture
            : profilePicture // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPicture: freezed == coverPicture
            ? _value.coverPicture
            : coverPicture // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
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
    required this.phone,
    @JsonKey(name: 'profile_url') required this.profileUrl,
    @JsonKey(name: 'cover_url') required this.coverUrl,
    required this.wage,
    @JsonKey(name: 'profile_picture') this.profilePicture,
    @JsonKey(name: 'cover_picture') this.coverPicture,
    this.address,
  });

  factory _$UserableImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserableImplFromJson(json);

  @override
  final String id;
  @override
  final String phone;
  @override
  @JsonKey(name: 'profile_url')
  final String profileUrl;
  @override
  @JsonKey(name: 'cover_url')
  final String coverUrl;
  @override
  final Wage wage;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  @JsonKey(name: 'cover_picture')
  final String? coverPicture;
  @override
  final String? address;

  @override
  String toString() {
    return 'Userable(id: $id, phone: $phone, profileUrl: $profileUrl, coverUrl: $coverUrl, wage: $wage, profilePicture: $profilePicture, coverPicture: $coverPicture, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.wage, wage) || other.wage == wage) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.coverPicture, coverPicture) ||
                other.coverPicture == coverPicture) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    phone,
    profileUrl,
    coverUrl,
    wage,
    profilePicture,
    coverPicture,
    address,
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
    required final String phone,
    @JsonKey(name: 'profile_url') required final String profileUrl,
    @JsonKey(name: 'cover_url') required final String coverUrl,
    required final Wage wage,
    @JsonKey(name: 'profile_picture') final String? profilePicture,
    @JsonKey(name: 'cover_picture') final String? coverPicture,
    final String? address,
  }) = _$UserableImpl;

  factory _Userable.fromJson(Map<String, dynamic> json) =
      _$UserableImpl.fromJson;

  @override
  String get id;
  @override
  String get phone;
  @override
  @JsonKey(name: 'profile_url')
  String get profileUrl;
  @override
  @JsonKey(name: 'cover_url')
  String get coverUrl;
  @override
  Wage get wage;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(name: 'cover_picture')
  String? get coverPicture;
  @override
  String? get address;

  /// Create a copy of Userable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserableImplCopyWith<_$UserableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wage _$WageFromJson(Map<String, dynamic> json) {
  return _Wage.fromJson(json);
}

/// @nodoc
mixin _$Wage {
  String get id => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_cost')
  String get hourlyCost => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_hour_per_week')
  String get expectedHourPerWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'labor_burden')
  String get laborBurden => throw _privateConstructorUsedError;

  /// Serializes this Wage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WageCopyWith<Wage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WageCopyWith<$Res> {
  factory $WageCopyWith(Wage value, $Res Function(Wage) then) =
      _$WageCopyWithImpl<$Res, Wage>;
  @useResult
  $Res call({
    String id,
    String rate,
    @JsonKey(name: 'hourly_cost') String hourlyCost,
    String type,
    @JsonKey(name: 'expected_hour_per_week') String expectedHourPerWeek,
    @JsonKey(name: 'labor_burden') String laborBurden,
  });
}

/// @nodoc
class _$WageCopyWithImpl<$Res, $Val extends Wage>
    implements $WageCopyWith<$Res> {
  _$WageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? hourlyCost = null,
    Object? type = null,
    Object? expectedHourPerWeek = null,
    Object? laborBurden = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            rate: null == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                      as String,
            hourlyCost: null == hourlyCost
                ? _value.hourlyCost
                : hourlyCost // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            expectedHourPerWeek: null == expectedHourPerWeek
                ? _value.expectedHourPerWeek
                : expectedHourPerWeek // ignore: cast_nullable_to_non_nullable
                      as String,
            laborBurden: null == laborBurden
                ? _value.laborBurden
                : laborBurden // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WageImplCopyWith<$Res> implements $WageCopyWith<$Res> {
  factory _$$WageImplCopyWith(
    _$WageImpl value,
    $Res Function(_$WageImpl) then,
  ) = __$$WageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String rate,
    @JsonKey(name: 'hourly_cost') String hourlyCost,
    String type,
    @JsonKey(name: 'expected_hour_per_week') String expectedHourPerWeek,
    @JsonKey(name: 'labor_burden') String laborBurden,
  });
}

/// @nodoc
class __$$WageImplCopyWithImpl<$Res>
    extends _$WageCopyWithImpl<$Res, _$WageImpl>
    implements _$$WageImplCopyWith<$Res> {
  __$$WageImplCopyWithImpl(_$WageImpl _value, $Res Function(_$WageImpl) _then)
    : super(_value, _then);

  /// Create a copy of Wage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? hourlyCost = null,
    Object? type = null,
    Object? expectedHourPerWeek = null,
    Object? laborBurden = null,
  }) {
    return _then(
      _$WageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        rate: null == rate
            ? _value.rate
            : rate // ignore: cast_nullable_to_non_nullable
                  as String,
        hourlyCost: null == hourlyCost
            ? _value.hourlyCost
            : hourlyCost // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        expectedHourPerWeek: null == expectedHourPerWeek
            ? _value.expectedHourPerWeek
            : expectedHourPerWeek // ignore: cast_nullable_to_non_nullable
                  as String,
        laborBurden: null == laborBurden
            ? _value.laborBurden
            : laborBurden // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WageImpl implements _Wage {
  const _$WageImpl({
    required this.id,
    required this.rate,
    @JsonKey(name: 'hourly_cost') required this.hourlyCost,
    required this.type,
    @JsonKey(name: 'expected_hour_per_week') required this.expectedHourPerWeek,
    @JsonKey(name: 'labor_burden') required this.laborBurden,
  });

  factory _$WageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WageImplFromJson(json);

  @override
  final String id;
  @override
  final String rate;
  @override
  @JsonKey(name: 'hourly_cost')
  final String hourlyCost;
  @override
  final String type;
  @override
  @JsonKey(name: 'expected_hour_per_week')
  final String expectedHourPerWeek;
  @override
  @JsonKey(name: 'labor_burden')
  final String laborBurden;

  @override
  String toString() {
    return 'Wage(id: $id, rate: $rate, hourlyCost: $hourlyCost, type: $type, expectedHourPerWeek: $expectedHourPerWeek, laborBurden: $laborBurden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.hourlyCost, hourlyCost) ||
                other.hourlyCost == hourlyCost) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.expectedHourPerWeek, expectedHourPerWeek) ||
                other.expectedHourPerWeek == expectedHourPerWeek) &&
            (identical(other.laborBurden, laborBurden) ||
                other.laborBurden == laborBurden));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    rate,
    hourlyCost,
    type,
    expectedHourPerWeek,
    laborBurden,
  );

  /// Create a copy of Wage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WageImplCopyWith<_$WageImpl> get copyWith =>
      __$$WageImplCopyWithImpl<_$WageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WageImplToJson(this);
  }
}

abstract class _Wage implements Wage {
  const factory _Wage({
    required final String id,
    required final String rate,
    @JsonKey(name: 'hourly_cost') required final String hourlyCost,
    required final String type,
    @JsonKey(name: 'expected_hour_per_week')
    required final String expectedHourPerWeek,
    @JsonKey(name: 'labor_burden') required final String laborBurden,
  }) = _$WageImpl;

  factory _Wage.fromJson(Map<String, dynamic> json) = _$WageImpl.fromJson;

  @override
  String get id;
  @override
  String get rate;
  @override
  @JsonKey(name: 'hourly_cost')
  String get hourlyCost;
  @override
  String get type;
  @override
  @JsonKey(name: 'expected_hour_per_week')
  String get expectedHourPerWeek;
  @override
  @JsonKey(name: 'labor_burden')
  String get laborBurden;

  /// Create a copy of Wage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WageImplCopyWith<_$WageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_editable')
  int get isEditable => throw _privateConstructorUsedError;

  /// Serializes this Position to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({
    String id,
    String name,
    String code,
    @JsonKey(name: 'is_editable') int isEditable,
  });
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? isEditable = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            isEditable: null == isEditable
                ? _value.isEditable
                : isEditable // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
    _$PositionImpl value,
    $Res Function(_$PositionImpl) then,
  ) = __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String code,
    @JsonKey(name: 'is_editable') int isEditable,
  });
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
    _$PositionImpl _value,
    $Res Function(_$PositionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? isEditable = null,
  }) {
    return _then(
      _$PositionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        isEditable: null == isEditable
            ? _value.isEditable
            : isEditable // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionImpl implements _Position {
  const _$PositionImpl({
    required this.id,
    required this.name,
    required this.code,
    @JsonKey(name: 'is_editable') required this.isEditable,
  });

  factory _$PositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  @JsonKey(name: 'is_editable')
  final int isEditable;

  @override
  String toString() {
    return 'Position(id: $id, name: $name, code: $code, isEditable: $isEditable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, isEditable);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionImplToJson(this);
  }
}

abstract class _Position implements Position {
  const factory _Position({
    required final String id,
    required final String name,
    required final String code,
    @JsonKey(name: 'is_editable') required final int isEditable,
  }) = _$PositionImpl;

  factory _Position.fromJson(Map<String, dynamic> json) =
      _$PositionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(name: 'is_editable')
  int get isEditable;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'guard_name')
  String get guardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_editable')
  bool get isEditable => throw _privateConstructorUsedError;
  List<Permission> get permissions => throw _privateConstructorUsedError;

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'guard_name') String guardName,
    @JsonKey(name: 'is_editable') bool isEditable,
    List<Permission> permissions,
  });
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? guardName = null,
    Object? isEditable = null,
    Object? permissions = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            guardName: null == guardName
                ? _value.guardName
                : guardName // ignore: cast_nullable_to_non_nullable
                      as String,
            isEditable: null == isEditable
                ? _value.isEditable
                : isEditable // ignore: cast_nullable_to_non_nullable
                      as bool,
            permissions: null == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as List<Permission>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
    _$RoleImpl value,
    $Res Function(_$RoleImpl) then,
  ) = __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'guard_name') String guardName,
    @JsonKey(name: 'is_editable') bool isEditable,
    List<Permission> permissions,
  });
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
    : super(_value, _then);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? guardName = null,
    Object? isEditable = null,
    Object? permissions = null,
  }) {
    return _then(
      _$RoleImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        guardName: null == guardName
            ? _value.guardName
            : guardName // ignore: cast_nullable_to_non_nullable
                  as String,
        isEditable: null == isEditable
            ? _value.isEditable
            : isEditable // ignore: cast_nullable_to_non_nullable
                  as bool,
        permissions: null == permissions
            ? _value._permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as List<Permission>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  const _$RoleImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'guard_name') required this.guardName,
    @JsonKey(name: 'is_editable') required this.isEditable,
    required final List<Permission> permissions,
  }) : _permissions = permissions;

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'guard_name')
  final String guardName;
  @override
  @JsonKey(name: 'is_editable')
  final bool isEditable;
  final List<Permission> _permissions;
  @override
  List<Permission> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'Role(id: $id, name: $name, guardName: $guardName, isEditable: $isEditable, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.guardName, guardName) ||
                other.guardName == guardName) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable) &&
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
    name,
    guardName,
    isEditable,
    const DeepCollectionEquality().hash(_permissions),
  );

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(this);
  }
}

abstract class _Role implements Role {
  const factory _Role({
    required final int id,
    required final String name,
    @JsonKey(name: 'guard_name') required final String guardName,
    @JsonKey(name: 'is_editable') required final bool isEditable,
    required final List<Permission> permissions,
  }) = _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'guard_name')
  String get guardName;
  @override
  @JsonKey(name: 'is_editable')
  bool get isEditable;
  @override
  List<Permission> get permissions;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return _Permission.fromJson(json);
}

/// @nodoc
mixin _$Permission {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get module => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'guard_name')
  String get guardName => throw _privateConstructorUsedError;

  /// Serializes this Permission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionCopyWith<Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionCopyWith<$Res> {
  factory $PermissionCopyWith(
    Permission value,
    $Res Function(Permission) then,
  ) = _$PermissionCopyWithImpl<$Res, Permission>;
  @useResult
  $Res call({
    int id,
    String name,
    String module,
    String group,
    String type,
    int position,
    @JsonKey(name: 'guard_name') String guardName,
  });
}

/// @nodoc
class _$PermissionCopyWithImpl<$Res, $Val extends Permission>
    implements $PermissionCopyWith<$Res> {
  _$PermissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? module = null,
    Object? group = null,
    Object? type = null,
    Object? position = null,
    Object? guardName = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            module: null == module
                ? _value.module
                : module // ignore: cast_nullable_to_non_nullable
                      as String,
            group: null == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as int,
            guardName: null == guardName
                ? _value.guardName
                : guardName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PermissionImplCopyWith<$Res>
    implements $PermissionCopyWith<$Res> {
  factory _$$PermissionImplCopyWith(
    _$PermissionImpl value,
    $Res Function(_$PermissionImpl) then,
  ) = __$$PermissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String module,
    String group,
    String type,
    int position,
    @JsonKey(name: 'guard_name') String guardName,
  });
}

/// @nodoc
class __$$PermissionImplCopyWithImpl<$Res>
    extends _$PermissionCopyWithImpl<$Res, _$PermissionImpl>
    implements _$$PermissionImplCopyWith<$Res> {
  __$$PermissionImplCopyWithImpl(
    _$PermissionImpl _value,
    $Res Function(_$PermissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? module = null,
    Object? group = null,
    Object? type = null,
    Object? position = null,
    Object? guardName = null,
  }) {
    return _then(
      _$PermissionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        module: null == module
            ? _value.module
            : module // ignore: cast_nullable_to_non_nullable
                  as String,
        group: null == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as int,
        guardName: null == guardName
            ? _value.guardName
            : guardName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionImpl implements _Permission {
  const _$PermissionImpl({
    required this.id,
    required this.name,
    required this.module,
    required this.group,
    required this.type,
    required this.position,
    @JsonKey(name: 'guard_name') required this.guardName,
  });

  factory _$PermissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String module;
  @override
  final String group;
  @override
  final String type;
  @override
  final int position;
  @override
  @JsonKey(name: 'guard_name')
  final String guardName;

  @override
  String toString() {
    return 'Permission(id: $id, name: $name, module: $module, group: $group, type: $type, position: $position, guardName: $guardName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.guardName, guardName) ||
                other.guardName == guardName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    module,
    group,
    type,
    position,
    guardName,
  );

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionImplCopyWith<_$PermissionImpl> get copyWith =>
      __$$PermissionImplCopyWithImpl<_$PermissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionImplToJson(this);
  }
}

abstract class _Permission implements Permission {
  const factory _Permission({
    required final int id,
    required final String name,
    required final String module,
    required final String group,
    required final String type,
    required final int position,
    @JsonKey(name: 'guard_name') required final String guardName,
  }) = _$PermissionImpl;

  factory _Permission.fromJson(Map<String, dynamic> json) =
      _$PermissionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get module;
  @override
  String get group;
  @override
  String get type;
  @override
  int get position;
  @override
  @JsonKey(name: 'guard_name')
  String get guardName;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionImplCopyWith<_$PermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
