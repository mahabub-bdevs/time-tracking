// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desh_bord_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      todayClockIn: (json['today_clock_in'] as num).toInt(),
      todayOnBreak: (json['today_on_break'] as num).toInt(),
      totalClockOut: (json['total_clock_out'] as num).toInt(),
      totalHours: (json['total_hours'] as num).toInt(),
      totalCost: (json['total_cost'] as num).toInt(),
      totalOvertimeHours: (json['total_overtime_hours'] as num).toInt(),
      totalOvertimeCost: (json['total_overtime_cost'] as num).toInt(),
      totalHourGraph: (json['total_hour_graph'] as List<dynamic>)
          .map((e) => HourGraphData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCostGraph: (json['total_cost_graph'] as List<dynamic>)
          .map((e) => CostGraphData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalOvertimeGraph: (json['total_overtime_graph'] as List<dynamic>)
          .map((e) => OvertimeGraphData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'today_clock_in': instance.todayClockIn,
      'today_on_break': instance.todayOnBreak,
      'total_clock_out': instance.totalClockOut,
      'total_hours': instance.totalHours,
      'total_cost': instance.totalCost,
      'total_overtime_hours': instance.totalOvertimeHours,
      'total_overtime_cost': instance.totalOvertimeCost,
      'total_hour_graph': instance.totalHourGraph,
      'total_cost_graph': instance.totalCostGraph,
      'total_overtime_graph': instance.totalOvertimeGraph,
    };

_$HourGraphDataImpl _$$HourGraphDataImplFromJson(Map<String, dynamic> json) =>
    _$HourGraphDataImpl(
      date: json['date'] as String,
      label: json['label'] as String,
      hours: (json['hours'] as num).toInt(),
    );

Map<String, dynamic> _$$HourGraphDataImplToJson(_$HourGraphDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'label': instance.label,
      'hours': instance.hours,
    };

_$CostGraphDataImpl _$$CostGraphDataImplFromJson(Map<String, dynamic> json) =>
    _$CostGraphDataImpl(
      date: json['date'] as String,
      label: json['label'] as String,
      cost: (json['cost'] as num).toInt(),
    );

Map<String, dynamic> _$$CostGraphDataImplToJson(_$CostGraphDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'label': instance.label,
      'cost': instance.cost,
    };

_$OvertimeGraphDataImpl _$$OvertimeGraphDataImplFromJson(
  Map<String, dynamic> json,
) => _$OvertimeGraphDataImpl(
  date: json['date'] as String,
  label: json['label'] as String,
  hours: (json['hours'] as num).toInt(),
  cost: (json['cost'] as num).toInt(),
);

Map<String, dynamic> _$$OvertimeGraphDataImplToJson(
  _$OvertimeGraphDataImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'label': instance.label,
  'hours': instance.hours,
  'cost': instance.cost,
};
