import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({super.key});

  @override
  State<DetailsIncomeChart> createState() => _DetailsIncomeChartState();
}

class _DetailsIncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getDataChart(),
      ),
    );
  }

  PieChartData getDataChart() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? "Design service" : "40%",
          value: 40,
          color: const Color(0xff208CC8),
          titleStyle: AppStyle.styleRegular14
             (context) .copyWith(color: activeIndex == 0 ? null : Colors.white),
          radius: activeIndex == 0 ? 40 : 30,
        ),
        PieChartSectionData(
          value: 25,
          titlePositionPercentageOffset: activeIndex == 1 ? 2.5 : null,
          title: activeIndex == 1 ? "Design product" : "25%",
          titleStyle: AppStyle.styleRegular14
             (context) .copyWith(color: activeIndex == 1 ? null : Colors.white),
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 40 : 30,
        ),
        PieChartSectionData(
          value: 20,
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: AppStyle.styleRegular14
             (context) .copyWith(color: activeIndex == 2 ? null : Colors.white),
          title: activeIndex == 2 ? "Product royalti" : "20%",
          color: const Color(0xff064061),
          radius: activeIndex == 2 ? 40 : 30,
        ),
        PieChartSectionData(
          value: 22,
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyle.styleRegular14
              (context).copyWith(color: activeIndex == 3 ? null : Colors.white),
          title: activeIndex == 3 ? "Other" : "22%",
          color: const Color(0xffE2DECD),
          radius: activeIndex == 3 ? 40 : 30,
        ),
      ],
    );
  }
}
