import 'package:freezed_annotation/freezed_annotation.dart';

part 'desh_bord_model.freezed.dart';
part 'desh_bord_model.g.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    @JsonKey(name: 'today_clock_in') required int todayClockIn,
    @JsonKey(name: 'today_on_break') required int todayOnBreak,
    @JsonKey(name: 'total_clock_out') required int totalClockOut,
    @JsonKey(name: 'total_hours') required int totalHours,
    @JsonKey(name: 'total_cost') required int totalCost,
    @JsonKey(name: 'total_overtime_hours') required int totalOvertimeHours,
    @JsonKey(name: 'total_overtime_cost') required int totalOvertimeCost,
    @JsonKey(name: 'total_hour_graph') required List<HourGraphData> totalHourGraph,
    @JsonKey(name: 'total_cost_graph') required List<CostGraphData> totalCostGraph,
    @JsonKey(name: 'total_overtime_graph') required List<OvertimeGraphData> totalOvertimeGraph,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

@freezed
class HourGraphData with _$HourGraphData {
  const factory HourGraphData({
    required String date,
    required String label,
    required int hours,
  }) = _HourGraphData;

  factory HourGraphData.fromJson(Map<String, dynamic> json) =>
      _$HourGraphDataFromJson(json);
}

@freezed
class CostGraphData with _$CostGraphData {
  const factory CostGraphData({
    required String date,
    required String label,
    required int cost,
  }) = _CostGraphData;

  factory CostGraphData.fromJson(Map<String, dynamic> json) =>
      _$CostGraphDataFromJson(json);
}

@freezed
class OvertimeGraphData with _$OvertimeGraphData {
  const factory OvertimeGraphData({
    required String date,
    required String label,
    required int hours,
    required int cost,
  }) = _OvertimeGraphData;

  factory OvertimeGraphData.fromJson(Map<String, dynamic> json) =>
      _$OvertimeGraphDataFromJson(json);
}