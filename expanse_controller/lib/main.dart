import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:expanse_controller/widgets/chart.dart';
import 'package:expanse_controller/widgets/transaction_card.dart';
import 'package:expanse_controller/widgets/transaction_list.dart';
import 'package:flutter/services.dart';
import 'models/transaction.dart';
import 'package:flutter/material.dart';
import 'widgets/transaction_list.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown
  // ]);
  runApp(ExpanseController());
}

class ExpanseController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
          button: TextStyle(
            color: Colors.white
          ),
        ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ExpanseControllerBody(),
    );
  }
}

class ExpanseControllerBody extends StatefulWidget {
  @override
  _ExpanseControllerBodyState createState() => _ExpanseControllerBodyState();
}

class _ExpanseControllerBodyState extends State<ExpanseControllerBody> {

  bool _showChart = false;
  List<Transaction> _transactions = [
    Transaction(id: 'U2010', title: 'New Shoes', amount: 60.69, date: DateTime.now()),
    Transaction(id: 'U2011', title: 'New MacBook', amount: 419.50, date: DateTime.now()),
    Transaction(id: 'U2012', title: 'Weekly Internet', amount: 45, date: DateTime.now())
  ];

  void _addNewTransaction(String title, double amount, DateTime chosenDate){
    final Transaction tx = Transaction(id: DateTime.now().toString(), title: title, amount: amount, date: chosenDate);
    setState(() {
      _transactions.add(tx);
    });
  }

  List<Transaction> get _recentTransactions{
    return _transactions.where((element) {
     return element.date.isAfter(DateTime.now().subtract(Duration(days: 7),),);
  }).toList();
}

  void _startNewTransaction(BuildContext ctx){
    showModalBottomSheet(
        context: ctx,
        builder: (_){
          return GestureDetector(
              child: NewTransaction(_addNewTransaction),
            onTap: (){},
            behavior: HitTestBehavior.opaque,
          );
        }
    );
  }

  void _deleteTransaction(String id) {
    setState(() {
      _transactions.removeWhere((tx) => tx.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Platform.isIOS ?
    CupertinoNavigationBar(
      middle: Text('Personal Expanse'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            child: Icon(CupertinoIcons.add),
            onTap:() => _startNewTransaction(context),
          )
        ],
      ),
    )
        :
    AppBar(
      title: Text('Personal Expanse'),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startNewTransaction(context)
        ),
      ],
      centerTitle: true,
    );
    final txListWidget = Container(
        height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.7,
        child: CustomCard(_transactions, _deleteTransaction));
    final pageBody = SafeArea(child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if(isLandscape) Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Show Chart'),
              Switch.adaptive(value: _showChart,
                onChanged: (val) {
                  setState(() {
                    _showChart = val;
                  });
                },
              ),
            ],
          ),
          if(!isLandscape) Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height
                  - MediaQuery.of(context).padding.top) * 0.3,
              child: Chart(recentTransaction: _transactions)),
          if(!isLandscape) txListWidget,
          if(isLandscape) _showChart ? Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.7,
              child: Chart(recentTransaction: _transactions)) : txListWidget
        ],
      ),
    )
    );
    return Platform.isIOS ? CupertinoPageScaffold(child: pageBody,
    navigationBar: appBar) :
    Scaffold(
      appBar: appBar,
      body: pageBody,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Platform.isIOS ? Container() : FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,
        ),
        onPressed: () => _startNewTransaction(context),
      ),
    );
  }
}


