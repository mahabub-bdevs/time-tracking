// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desh_bord_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  @JsonKey(name: 'today_clock_in')
  int get todayClockIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'today_on_break')
  int get todayOnBreak => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_clock_out')
  int get totalClockOut => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_hours')
  int get totalHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost')
  int get totalCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_overtime_hours')
  int get totalOvertimeHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_overtime_cost')
  int get totalOvertimeCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_hour_graph')
  List<HourGraphData> get totalHourGraph => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost_graph')
  List<CostGraphData> get totalCostGraph => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_overtime_graph')
  List<OvertimeGraphData> get totalOvertimeGraph =>
      throw _privateConstructorUsedError;

  /// Serializes this DashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
    DashboardData value,
    $Res Function(DashboardData) then,
  ) = _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call({
    @JsonKey(name: 'today_clock_in') int todayClockIn,
    @JsonKey(name: 'today_on_break') int todayOnBreak,
    @JsonKey(name: 'total_clock_out') int totalClockOut,
    @JsonKey(name: 'total_hours') int totalHours,
    @JsonKey(name: 'total_cost') int totalCost,
    @JsonKey(name: 'total_overtime_hours') int totalOvertimeHours,
    @JsonKey(name: 'total_overtime_cost') int totalOvertimeCost,
    @JsonKey(name: 'total_hour_graph') List<HourGraphData> totalHourGraph,
    @JsonKey(name: 'total_cost_graph') List<CostGraphData> totalCostGraph,
    @JsonKey(name: 'total_overtime_graph')
    List<OvertimeGraphData> totalOvertimeGraph,
  });
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayClockIn = null,
    Object? todayOnBreak = null,
    Object? totalClockOut = null,
    Object? totalHours = null,
    Object? totalCost = null,
    Object? totalOvertimeHours = null,
    Object? totalOvertimeCost = null,
    Object? totalHourGraph = null,
    Object? totalCostGraph = null,
    Object? totalOvertimeGraph = null,
  }) {
    return _then(
      _value.copyWith(
            todayClockIn: null == todayClockIn
                ? _value.todayClockIn
                : todayClockIn // ignore: cast_nullable_to_non_nullable
                      as int,
            todayOnBreak: null == todayOnBreak
                ? _value.todayOnBreak
                : todayOnBreak // ignore: cast_nullable_to_non_nullable
                      as int,
            totalClockOut: null == totalClockOut
                ? _value.totalClockOut
                : totalClockOut // ignore: cast_nullable_to_non_nullable
                      as int,
            totalHours: null == totalHours
                ? _value.totalHours
                : totalHours // ignore: cast_nullable_to_non_nullable
                      as int,
            totalCost: null == totalCost
                ? _value.totalCost
                : totalCost // ignore: cast_nullable_to_non_nullable
                      as int,
            totalOvertimeHours: null == totalOvertimeHours
                ? _value.totalOvertimeHours
                : totalOvertimeHours // ignore: cast_nullable_to_non_nullable
                      as int,
            totalOvertimeCost: null == totalOvertimeCost
                ? _value.totalOvertimeCost
                : totalOvertimeCost // ignore: cast_nullable_to_non_nullable
                      as int,
            totalHourGraph: null == totalHourGraph
                ? _value.totalHourGraph
                : totalHourGraph // ignore: cast_nullable_to_non_nullable
                      as List<HourGraphData>,
            totalCostGraph: null == totalCostGraph
                ? _value.totalCostGraph
                : totalCostGraph // ignore: cast_nullable_to_non_nullable
                      as List<CostGraphData>,
            totalOvertimeGraph: null == totalOvertimeGraph
                ? _value.totalOvertimeGraph
                : totalOvertimeGraph // ignore: cast_nullable_to_non_nullable
                      as List<OvertimeGraphData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
    _$DashboardDataImpl value,
    $Res Function(_$DashboardDataImpl) then,
  ) = __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'today_clock_in') int todayClockIn,
    @JsonKey(name: 'today_on_break') int todayOnBreak,
    @JsonKey(name: 'total_clock_out') int totalClockOut,
    @JsonKey(name: 'total_hours') int totalHours,
    @JsonKey(name: 'total_cost') int totalCost,
    @JsonKey(name: 'total_overtime_hours') int totalOvertimeHours,
    @JsonKey(name: 'total_overtime_cost') int totalOvertimeCost,
    @JsonKey(name: 'total_hour_graph') List<HourGraphData> totalHourGraph,
    @JsonKey(name: 'total_cost_graph') List<CostGraphData> totalCostGraph,
    @JsonKey(name: 'total_overtime_graph')
    List<OvertimeGraphData> totalOvertimeGraph,
  });
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
    _$DashboardDataImpl _value,
    $Res Function(_$DashboardDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayClockIn = null,
    Object? todayOnBreak = null,
    Object? totalClockOut = null,
    Object? totalHours = null,
    Object? totalCost = null,
    Object? totalOvertimeHours = null,
    Object? totalOvertimeCost = null,
    Object? totalHourGraph = null,
    Object? totalCostGraph = null,
    Object? totalOvertimeGraph = null,
  }) {
    return _then(
      _$DashboardDataImpl(
        todayClockIn: null == todayClockIn
            ? _value.todayClockIn
            : todayClockIn // ignore: cast_nullable_to_non_nullable
                  as int,
        todayOnBreak: null == todayOnBreak
            ? _value.todayOnBreak
            : todayOnBreak // ignore: cast_nullable_to_non_nullable
                  as int,
        totalClockOut: null == totalClockOut
            ? _value.totalClockOut
            : totalClockOut // ignore: cast_nullable_to_non_nullable
                  as int,
        totalHours: null == totalHours
            ? _value.totalHours
            : totalHours // ignore: cast_nullable_to_non_nullable
                  as int,
        totalCost: null == totalCost
            ? _value.totalCost
            : totalCost // ignore: cast_nullable_to_non_nullable
                  as int,
        totalOvertimeHours: null == totalOvertimeHours
            ? _value.totalOvertimeHours
            : totalOvertimeHours // ignore: cast_nullable_to_non_nullable
                  as int,
        totalOvertimeCost: null == totalOvertimeCost
            ? _value.totalOvertimeCost
            : totalOvertimeCost // ignore: cast_nullable_to_non_nullable
                  as int,
        totalHourGraph: null == totalHourGraph
            ? _value._totalHourGraph
            : totalHourGraph // ignore: cast_nullable_to_non_nullable
                  as List<HourGraphData>,
        totalCostGraph: null == totalCostGraph
            ? _value._totalCostGraph
            : totalCostGraph // ignore: cast_nullable_to_non_nullable
                  as List<CostGraphData>,
        totalOvertimeGraph: null == totalOvertimeGraph
            ? _value._totalOvertimeGraph
            : totalOvertimeGraph // ignore: cast_nullable_to_non_nullable
                  as List<OvertimeGraphData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl({
    @JsonKey(name: 'today_clock_in') required this.todayClockIn,
    @JsonKey(name: 'today_on_break') required this.todayOnBreak,
    @JsonKey(name: 'total_clock_out') required this.totalClockOut,
    @JsonKey(name: 'total_hours') required this.totalHours,
    @JsonKey(name: 'total_cost') required this.totalCost,
    @JsonKey(name: 'total_overtime_hours') required this.totalOvertimeHours,
    @JsonKey(name: 'total_overtime_cost') required this.totalOvertimeCost,
    @JsonKey(name: 'total_hour_graph')
    required final List<HourGraphData> totalHourGraph,
    @JsonKey(name: 'total_cost_graph')
    required final List<CostGraphData> totalCostGraph,
    @JsonKey(name: 'total_overtime_graph')
    required final List<OvertimeGraphData> totalOvertimeGraph,
  }) : _totalHourGraph = totalHourGraph,
       _totalCostGraph = totalCostGraph,
       _totalOvertimeGraph = totalOvertimeGraph;

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  @JsonKey(name: 'today_clock_in')
  final int todayClockIn;
  @override
  @JsonKey(name: 'today_on_break')
  final int todayOnBreak;
  @override
  @JsonKey(name: 'total_clock_out')
  final int totalClockOut;
  @override
  @JsonKey(name: 'total_hours')
  final int totalHours;
  @override
  @JsonKey(name: 'total_cost')
  final int totalCost;
  @override
  @JsonKey(name: 'total_overtime_hours')
  final int totalOvertimeHours;
  @override
  @JsonKey(name: 'total_overtime_cost')
  final int totalOvertimeCost;
  final List<HourGraphData> _totalHourGraph;
  @override
  @JsonKey(name: 'total_hour_graph')
  List<HourGraphData> get totalHourGraph {
    if (_totalHourGraph is EqualUnmodifiableListView) return _totalHourGraph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalHourGraph);
  }

  final List<CostGraphData> _totalCostGraph;
  @override
  @JsonKey(name: 'total_cost_graph')
  List<CostGraphData> get totalCostGraph {
    if (_totalCostGraph is EqualUnmodifiableListView) return _totalCostGraph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalCostGraph);
  }

  final List<OvertimeGraphData> _totalOvertimeGraph;
  @override
  @JsonKey(name: 'total_overtime_graph')
  List<OvertimeGraphData> get totalOvertimeGraph {
    if (_totalOvertimeGraph is EqualUnmodifiableListView)
      return _totalOvertimeGraph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalOvertimeGraph);
  }

  @override
  String toString() {
    return 'DashboardData(todayClockIn: $todayClockIn, todayOnBreak: $todayOnBreak, totalClockOut: $totalClockOut, totalHours: $totalHours, totalCost: $totalCost, totalOvertimeHours: $totalOvertimeHours, totalOvertimeCost: $totalOvertimeCost, totalHourGraph: $totalHourGraph, totalCostGraph: $totalCostGraph, totalOvertimeGraph: $totalOvertimeGraph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.todayClockIn, todayClockIn) ||
                other.todayClockIn == todayClockIn) &&
            (identical(other.todayOnBreak, todayOnBreak) ||
                other.todayOnBreak == todayOnBreak) &&
            (identical(other.totalClockOut, totalClockOut) ||
                other.totalClockOut == totalClockOut) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.totalOvertimeHours, totalOvertimeHours) ||
                other.totalOvertimeHours == totalOvertimeHours) &&
            (identical(other.totalOvertimeCost, totalOvertimeCost) ||
                other.totalOvertimeCost == totalOvertimeCost) &&
            const DeepCollectionEquality().equals(
              other._totalHourGraph,
              _totalHourGraph,
            ) &&
            const DeepCollectionEquality().equals(
              other._totalCostGraph,
              _totalCostGraph,
            ) &&
            const DeepCollectionEquality().equals(
              other._totalOvertimeGraph,
              _totalOvertimeGraph,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    todayClockIn,
    todayOnBreak,
    totalClockOut,
    totalHours,
    totalCost,
    totalOvertimeHours,
    totalOvertimeCost,
    const DeepCollectionEquality().hash(_totalHourGraph),
    const DeepCollectionEquality().hash(_totalCostGraph),
    const DeepCollectionEquality().hash(_totalOvertimeGraph),
  );

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(this);
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData({
    @JsonKey(name: 'today_clock_in') required final int todayClockIn,
    @JsonKey(name: 'today_on_break') required final int todayOnBreak,
    @JsonKey(name: 'total_clock_out') required final int totalClockOut,
    @JsonKey(name: 'total_hours') required final int totalHours,
    @JsonKey(name: 'total_cost') required final int totalCost,
    @JsonKey(name: 'total_overtime_hours')
    required final int totalOvertimeHours,
    @JsonKey(name: 'total_overtime_cost') required final int totalOvertimeCost,
    @JsonKey(name: 'total_hour_graph')
    required final List<HourGraphData> totalHourGraph,
    @JsonKey(name: 'total_cost_graph')
    required final List<CostGraphData> totalCostGraph,
    @JsonKey(name: 'total_overtime_graph')
    required final List<OvertimeGraphData> totalOvertimeGraph,
  }) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  @JsonKey(name: 'today_clock_in')
  int get todayClockIn;
  @override
  @JsonKey(name: 'today_on_break')
  int get todayOnBreak;
  @override
  @JsonKey(name: 'total_clock_out')
  int get totalClockOut;
  @override
  @JsonKey(name: 'total_hours')
  int get totalHours;
  @override
  @JsonKey(name: 'total_cost')
  int get totalCost;
  @override
  @JsonKey(name: 'total_overtime_hours')
  int get totalOvertimeHours;
  @override
  @JsonKey(name: 'total_overtime_cost')
  int get totalOvertimeCost;
  @override
  @JsonKey(name: 'total_hour_graph')
  List<HourGraphData> get totalHourGraph;
  @override
  @JsonKey(name: 'total_cost_graph')
  List<CostGraphData> get totalCostGraph;
  @override
  @JsonKey(name: 'total_overtime_graph')
  List<OvertimeGraphData> get totalOvertimeGraph;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourGraphData _$HourGraphDataFromJson(Map<String, dynamic> json) {
  return _HourGraphData.fromJson(json);
}

/// @nodoc
mixin _$HourGraphData {
  String get date => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;

  /// Serializes this HourGraphData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourGraphDataCopyWith<HourGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourGraphDataCopyWith<$Res> {
  factory $HourGraphDataCopyWith(
    HourGraphData value,
    $Res Function(HourGraphData) then,
  ) = _$HourGraphDataCopyWithImpl<$Res, HourGraphData>;
  @useResult
  $Res call({String date, String label, int hours});
}

/// @nodoc
class _$HourGraphDataCopyWithImpl<$Res, $Val extends HourGraphData>
    implements $HourGraphDataCopyWith<$Res> {
  _$HourGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? label = null, Object? hours = null}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            hours: null == hours
                ? _value.hours
                : hours // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HourGraphDataImplCopyWith<$Res>
    implements $HourGraphDataCopyWith<$Res> {
  factory _$$HourGraphDataImplCopyWith(
    _$HourGraphDataImpl value,
    $Res Function(_$HourGraphDataImpl) then,
  ) = __$$HourGraphDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String label, int hours});
}

/// @nodoc
class __$$HourGraphDataImplCopyWithImpl<$Res>
    extends _$HourGraphDataCopyWithImpl<$Res, _$HourGraphDataImpl>
    implements _$$HourGraphDataImplCopyWith<$Res> {
  __$$HourGraphDataImplCopyWithImpl(
    _$HourGraphDataImpl _value,
    $Res Function(_$HourGraphDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HourGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? label = null, Object? hours = null}) {
    return _then(
      _$HourGraphDataImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        hours: null == hours
            ? _value.hours
            : hours // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HourGraphDataImpl implements _HourGraphData {
  const _$HourGraphDataImpl({
    required this.date,
    required this.label,
    required this.hours,
  });

  factory _$HourGraphDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourGraphDataImplFromJson(json);

  @override
  final String date;
  @override
  final String label;
  @override
  final int hours;

  @override
  String toString() {
    return 'HourGraphData(date: $date, label: $label, hours: $hours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourGraphDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, label, hours);

  /// Create a copy of HourGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourGraphDataImplCopyWith<_$HourGraphDataImpl> get copyWith =>
      __$$HourGraphDataImplCopyWithImpl<_$HourGraphDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourGraphDataImplToJson(this);
  }
}

abstract class _HourGraphData implements HourGraphData {
  const factory _HourGraphData({
    required final String date,
    required final String label,
    required final int hours,
  }) = _$HourGraphDataImpl;

  factory _HourGraphData.fromJson(Map<String, dynamic> json) =
      _$HourGraphDataImpl.fromJson;

  @override
  String get date;
  @override
  String get label;
  @override
  int get hours;

  /// Create a copy of HourGraphData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourGraphDataImplCopyWith<_$HourGraphDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CostGraphData _$CostGraphDataFromJson(Map<String, dynamic> json) {
  return _CostGraphData.fromJson(json);
}

/// @nodoc
mixin _$CostGraphData {
  String get date => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;

  /// Serializes this CostGraphData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CostGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CostGraphDataCopyWith<CostGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostGraphDataCopyWith<$Res> {
  factory $CostGraphDataCopyWith(
    CostGraphData value,
    $Res Function(CostGraphData) then,
  ) = _$CostGraphDataCopyWithImpl<$Res, CostGraphData>;
  @useResult
  $Res call({String date, String label, int cost});
}

/// @nodoc
class _$CostGraphDataCopyWithImpl<$Res, $Val extends CostGraphData>
    implements $CostGraphDataCopyWith<$Res> {
  _$CostGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CostGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? label = null, Object? cost = null}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            cost: null == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CostGraphDataImplCopyWith<$Res>
    implements $CostGraphDataCopyWith<$Res> {
  factory _$$CostGraphDataImplCopyWith(
    _$CostGraphDataImpl value,
    $Res Function(_$CostGraphDataImpl) then,
  ) = __$$CostGraphDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String label, int cost});
}

/// @nodoc
class __$$CostGraphDataImplCopyWithImpl<$Res>
    extends _$CostGraphDataCopyWithImpl<$Res, _$CostGraphDataImpl>
    implements _$$CostGraphDataImplCopyWith<$Res> {
  __$$CostGraphDataImplCopyWithImpl(
    _$CostGraphDataImpl _value,
    $Res Function(_$CostGraphDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CostGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? label = null, Object? cost = null}) {
    return _then(
      _$CostGraphDataImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        cost: null == cost
            ? _value.cost
            : cost // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CostGraphDataImpl implements _CostGraphData {
  const _$CostGraphDataImpl({
    required this.date,
    required this.label,
    required this.cost,
  });

  factory _$CostGraphDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CostGraphDataImplFromJson(json);

  @override
  final String date;
  @override
  final String label;
  @override
  final int cost;

  @override
  String toString() {
    return 'CostGraphData(date: $date, label: $label, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostGraphDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, label, cost);

  /// Create a copy of CostGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CostGraphDataImplCopyWith<_$CostGraphDataImpl> get copyWith =>
      __$$CostGraphDataImplCopyWithImpl<_$CostGraphDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CostGraphDataImplToJson(this);
  }
}

abstract class _CostGraphData implements CostGraphData {
  const factory _CostGraphData({
    required final String date,
    required final String label,
    required final int cost,
  }) = _$CostGraphDataImpl;

  factory _CostGraphData.fromJson(Map<String, dynamic> json) =
      _$CostGraphDataImpl.fromJson;

  @override
  String get date;
  @override
  String get label;
  @override
  int get cost;

  /// Create a copy of CostGraphData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CostGraphDataImplCopyWith<_$CostGraphDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OvertimeGraphData _$OvertimeGraphDataFromJson(Map<String, dynamic> json) {
  return _OvertimeGraphData.fromJson(json);
}

/// @nodoc
mixin _$OvertimeGraphData {
  String get date => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;

  /// Serializes this OvertimeGraphData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OvertimeGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OvertimeGraphDataCopyWith<OvertimeGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OvertimeGraphDataCopyWith<$Res> {
  factory $OvertimeGraphDataCopyWith(
    OvertimeGraphData value,
    $Res Function(OvertimeGraphData) then,
  ) = _$OvertimeGraphDataCopyWithImpl<$Res, OvertimeGraphData>;
  @useResult
  $Res call({String date, String label, int hours, int cost});
}

/// @nodoc
class _$OvertimeGraphDataCopyWithImpl<$Res, $Val extends OvertimeGraphData>
    implements $OvertimeGraphDataCopyWith<$Res> {
  _$OvertimeGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OvertimeGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? label = null,
    Object? hours = null,
    Object? cost = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            hours: null == hours
                ? _value.hours
                : hours // ignore: cast_nullable_to_non_nullable
                      as int,
            cost: null == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OvertimeGraphDataImplCopyWith<$Res>
    implements $OvertimeGraphDataCopyWith<$Res> {
  factory _$$OvertimeGraphDataImplCopyWith(
    _$OvertimeGraphDataImpl value,
    $Res Function(_$OvertimeGraphDataImpl) then,
  ) = __$$OvertimeGraphDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String label, int hours, int cost});
}

/// @nodoc
class __$$OvertimeGraphDataImplCopyWithImpl<$Res>
    extends _$OvertimeGraphDataCopyWithImpl<$Res, _$OvertimeGraphDataImpl>
    implements _$$OvertimeGraphDataImplCopyWith<$Res> {
  __$$OvertimeGraphDataImplCopyWithImpl(
    _$OvertimeGraphDataImpl _value,
    $Res Function(_$OvertimeGraphDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OvertimeGraphData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? label = null,
    Object? hours = null,
    Object? cost = null,
  }) {
    return _then(
      _$OvertimeGraphDataImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        hours: null == hours
            ? _value.hours
            : hours // ignore: cast_nullable_to_non_nullable
                  as int,
        cost: null == cost
            ? _value.cost
            : cost // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OvertimeGraphDataImpl implements _OvertimeGraphData {
  const _$OvertimeGraphDataImpl({
    required this.date,
    required this.label,
    required this.hours,
    required this.cost,
  });

  factory _$OvertimeGraphDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OvertimeGraphDataImplFromJson(json);

  @override
  final String date;
  @override
  final String label;
  @override
  final int hours;
  @override
  final int cost;

  @override
  String toString() {
    return 'OvertimeGraphData(date: $date, label: $label, hours: $hours, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OvertimeGraphDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, label, hours, cost);

  /// Create a copy of OvertimeGraphData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OvertimeGraphDataImplCopyWith<_$OvertimeGraphDataImpl> get copyWith =>
      __$$OvertimeGraphDataImplCopyWithImpl<_$OvertimeGraphDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OvertimeGraphDataImplToJson(this);
  }
}

abstract class _OvertimeGraphData implements OvertimeGraphData {
  const factory _OvertimeGraphData({
    required final String date,
    required final String label,
    required final int hours,
    required final int cost,
  }) = _$OvertimeGraphDataImpl;

  factory _OvertimeGraphData.fromJson(Map<String, dynamic> json) =
      _$OvertimeGraphDataImpl.fromJson;

  @override
  String get date;
  @override
  String get label;
  @override
  int get hours;
  @override
  int get cost;

  /// Create a copy of OvertimeGraphData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OvertimeGraphDataImplCopyWith<_$OvertimeGraphDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
