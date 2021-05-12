import 'package:expanse_controller/widgets/chart_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;
  Chart({this.recentTransaction});

  List<Map<String, Object>> get groupedTransactionValues{
    return List.generate(7, (index){
      final weekday = DateTime.now().subtract(Duration(days: index),);
      double totalSum = 0.0;
      for(var i = 0; i < recentTransaction.length; i++){
        if(recentTransaction[i].date.day == weekday.day && recentTransaction[i].date.month == weekday.month
        && recentTransaction[i].date.year == weekday.year){
          totalSum += recentTransaction[i].amount;
        }
      }
      print(DateFormat.E().format(weekday));
      return {
        'day': DateFormat.E().format(weekday).substring(0, 1),
        'amount': totalSum
      };
    }).reversed.toList();
  }
  double get maxSpending{
    return groupedTransactionValues.fold(0.0, (sum, element) {
      return sum + element['amount'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: groupedTransactionValues.map((data){
            return Flexible(
                fit: FlexFit.tight,
                child: ChartBar(label: data['day'], spendingAmount: data['amount'], spendingPctofTotal: maxSpending==0.0 ? 0.0 : (data['amount'] as double) / maxSpending));
          }).toList()
        ),
      ),
    );
  }
}
