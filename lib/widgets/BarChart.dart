import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expenses;

  BarChart({this.expenses});
  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;
    expenses.forEach((double element) {
      if (element > mostExpensive) {
        mostExpensive = element;
      }
    });

    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            "Weekly Spending",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          )
        ],
      ),
    );
  }
}
