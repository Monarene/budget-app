import 'package:flutter/material.dart';
import 'package:flutter_budget_ui/widgets/bar.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bar(
                label: "Su",
                amountSpent: expenses[0],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Mo',
                amountSpent: expenses[1],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Tu',
                amountSpent: expenses[2],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'We',
                amountSpent: expenses[3],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Th',
                amountSpent: expenses[4],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Fr',
                amountSpent: expenses[5],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Sa',
                amountSpent: expenses[6],
                mostExpensive: mostExpensive,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
