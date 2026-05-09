import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../controller/dash_bord_controller.dart';

class DashBordView extends StatefulWidget {
  const DashBordView({super.key});

  @override
  State<DashBordView> createState() => _DashBordViewState();
}

class _DashBordViewState extends State<DashBordView> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = "Today";
    final controller = Get.find<DashBordController>();
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(20),
                    right: getWidth(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      containerDesigner(),
                      CustomText(
                        text: "Dash Board",
                        fontSize: getSp(18),
                        color: AppColors.elevatedSurfaceLight,
                        fontFamily: AppFont.inter,
                      ),
                      containerDesigner(imagePath: ImagePath.notificationIcon),
                    ],
                  ),
                ),

                SizedBox(height: getHeight(20)),
                Obx(
                  () => SizedBox(
                    height: getHeight(100),
                    child: ListView.builder(
                      itemCount: controller.timerList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsetsGeometry.symmetric(
                            horizontal: getWidth(5),
                          ),

                          height: getHeight(80),
                          width: getWidth(115),
                          decoration: BoxDecoration(
                            color: AppColors.elevatedSurfaceLight.withValues(
                              alpha: 0.1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            border: BoxBorder.all(
                              color: AppColors.elevatedSurfaceLight.withValues(
                                alpha: 0.3,
                              ),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                text: controller.timerList[index]['time'],
                                fontSize: getSp(25),
                                color: AppColors.elevatedSurfaceLight,
                                fontFamily: AppFont.inter,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: getHeight(5)),
                              CustomText(
                                text: controller.timerList[index]['title'],
                                fontSize: getSp(15),
                                color: AppColors.elevatedSurfaceLight,
                                fontWeight: FontWeight.w300,
                                fontFamily: AppFont.inter,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: getHeight(10)),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.elevatedSurfaceLight.withValues(
                        alpha: 0.05,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: "Today",
                        dropdownColor: const Color(0xFF1A1A1A),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        items: ["Today", "Pay Period", "Weekly", "Monthly"].map(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (newValue) {},
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getHeight(10)),
                Obx(() {
                  if (controller.dashboard.value == null) {
                    return const CircularProgressIndicator();
                  }
                  return Column(
                    children: [
                      customChart(controller),
                      SizedBox(height: getHeight(10)),
                      totalCostGraph(controller),
                      SizedBox(height: getHeight(10)),
                      totalOverTime(controller),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget containerDesigner({String? imagePath}) {
    return Container(
      height: getHeight(48),
      width: getWidth(48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
        border: BoxBorder.all(
          color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.3),
          width: 1,
          strokeAlign: 0.4,
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
        child: Image.asset(
          imagePath ?? ImagePath.manuIcon,
          height: getHeight(24),
          width: getWidth(24),
        ),
      ),
    );
  }

  Widget customChart(DashBordController controller) {
    final spots = controller.dashboard.value!.totalHourGraph
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.hours.toDouble()))
        .toList();

    final labels = controller.dashboard.value!.totalHourGraph
        .map((e) => e.label)
        .toList();

    return Container(
      padding: EdgeInsets.all(getWidth(16)),
      decoration: BoxDecoration(
        color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Top Row ───────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ✅ API থেকে total hours
                  CustomText(
                    text: "${controller.dashboard.value!.totalHours} hrs",
                    fontSize: getSp(24),
                    fontWeight: FontWeight.bold,
                    color: AppColors.elevatedSurfaceLight,
                  ),
                  CustomText(
                    text: "Total hours - Pay Period",
                    fontSize: getSp(12),
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.6,
                    ),
                  ),
                ],
              ),
              Container(
                height: getHeight(40),
                width: getWidth(40),
                decoration: BoxDecoration(
                  color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.elevatedSurfaceLight,
                  size: getHeight(16),
                ),
              ),
            ],
          ),

          SizedBox(height: getHeight(16)),

          // ── Line Chart ────────────────────────────
          SizedBox(
            height: getHeight(180),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 1.5,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.1,
                    ),
                    strokeWidth: 1,
                  ),
                ),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        // ✅ API থেকে labels
                        if (value.toInt() >= 0 &&
                            value.toInt() < labels.length) {
                          return Text(
                            labels[value.toInt()],
                            style: TextStyle(
                              color: AppColors.elevatedSurfaceLight.withValues(
                                alpha: 0.6,
                              ),
                              fontSize: getSp(11),
                            ),
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        return LineTooltipItem(
                          '${labels[spot.x.toInt()]}  ${spot.y.toInt()}hr',
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: spots, // ✅ API থেকে data
                    isCurved: true,
                    color: Colors.white,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.elevatedSurfaceLight.withValues(
                        alpha: 0.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget totalCostGraph(DashBordController controller) {
    final spots = controller.dashboard.value!.totalCostGraph
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.cost.toDouble()))
        .toList();

    final labels = controller.dashboard.value!.totalCostGraph
        .map((e) => e.label)
        .toList();

    return Container(
      padding: EdgeInsets.all(getWidth(16)),
      decoration: BoxDecoration(
        color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Top Row ───────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ✅ API থেকে total hours
                  CustomText(
                    text: "\$${controller.dashboard.value!.totalCost}",
                    fontSize: getSp(24),
                    fontWeight: FontWeight.bold,
                    color: AppColors.elevatedSurfaceLight,
                  ),
                  CustomText(
                    text: "Total costs - Pay Period",
                    fontSize: getSp(12),
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.6,
                    ),
                  ),
                ],
              ),
              Container(
                height: getHeight(40),
                width: getWidth(40),
                decoration: BoxDecoration(
                  color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.elevatedSurfaceLight,
                  size: getHeight(16),
                ),
              ),
            ],
          ),

          SizedBox(height: getHeight(16)),

          // ── Line Chart ────────────────────────────
          SizedBox(
            height: getHeight(180),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 1.5,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.1,
                    ),
                    strokeWidth: 1,
                  ),
                ),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() >= 0 &&
                            value.toInt() < labels.length) {
                          return Text(
                            labels[value.toInt()],
                            style: TextStyle(
                              color: AppColors.elevatedSurfaceLight.withValues(
                                alpha: 0.6,
                              ),
                              fontSize: getSp(11),
                            ),
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        return LineTooltipItem(
                          '${labels[spot.x.toInt()]}  ${spot.y.toInt()}hr',
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: spots,
                    isCurved: true,
                    color: Colors.white,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.elevatedSurfaceLight.withValues(
                        alpha: 0.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget totalOverTime(DashBordController controller) {
    final costSpots = controller.dashboard.value!.totalOvertimeGraph
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.cost.toDouble()))
        .toList();

    final hoursSpots = controller.dashboard.value!.totalOvertimeGraph
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.hours.toDouble()))
        .toList();

    final labels = controller.dashboard.value!.totalOvertimeGraph
        .map((e) => e.label)
        .toList();

    return Container(
      padding: EdgeInsets.all(getWidth(16)),
      decoration: BoxDecoration(
        color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text:
                            "${controller.dashboard.value!.totalOvertimeHours} hrs - ",
                        fontSize: getSp(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.elevatedSurfaceLight,
                      ),
                      CustomText(
                        text:
                            "\$${controller.dashboard.value!.totalOvertimeCost}",
                        fontSize: getSp(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.elevatedSurfaceLight,
                      ),
                    ],
                  ),
                  CustomText(
                    text: "Total Overtime - Pay Period",
                    fontSize: getSp(12),
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.6,
                    ),
                  ),
                ],
              ),
              Container(
                height: getHeight(40),
                width: getWidth(40),
                decoration: BoxDecoration(
                  color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.elevatedSurfaceLight,
                  size: getHeight(16),
                ),
              ),
            ],
          ),

          SizedBox(height: getHeight(16)),

          SizedBox(
            height: getHeight(180),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 1.5,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.1,
                    ),
                    strokeWidth: 1,
                  ),
                ),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() >= 0 &&
                            value.toInt() < labels.length) {
                          return Text(
                            labels[value.toInt()],
                            style: TextStyle(
                              color: AppColors.elevatedSurfaceLight.withValues(
                                alpha: 0.6,
                              ),
                              fontSize: getSp(11),
                            ),
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        final isHours = spot.barIndex == 1;
                        return LineTooltipItem(
                          '${labels[spot.x.toInt()]}  ${spot.y.toInt()}${isHours ? "hr" : "\$"}',
                          TextStyle(
                            color: isHours ? Colors.orange : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: costSpots,
                    isCurved: true,
                    color: Colors.white,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.elevatedSurfaceLight.withValues(
                        alpha: 0.1,
                      ),
                    ),
                  ),

                  LineChartBarData(
                    spots: hoursSpots,
                    isCurved: true,
                    color: Colors.orange,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      color: Colors.orange.withValues(alpha: 0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: getHeight(12)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(width: 20, height: 3, color: Colors.white),
                  SizedBox(width: getWidth(6)),
                  CustomText(
                    text: "Cost",
                    fontSize: getSp(11),
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.7,
                    ),
                  ),
                ],
              ),
              SizedBox(width: getWidth(20)),
              Row(
                children: [
                  Container(width: 20, height: 3, color: Colors.orange),
                  SizedBox(width: getWidth(6)),
                  CustomText(
                    text: "Hours",
                    fontSize: getSp(11),
                    color: AppColors.elevatedSurfaceLight.withValues(
                      alpha: 0.7,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
