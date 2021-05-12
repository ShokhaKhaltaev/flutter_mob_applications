import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class CustomCard extends StatelessWidget {
  final List<Transaction> newTransactions;
  Function deleteTx;
  CustomCard(this.newTransactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: newTransactions.isEmpty ?
      LayoutBuilder(
        builder: (context, constraints){
          return Column(
            children: [
              Center(child: Text('No transactions added yet', style: Theme.of(context).textTheme.title)),
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset('assets/images/waiting.png', fit: BoxFit.cover),
                ),
              )
            ],
          );
        },
      ) :
      ListView.builder(
        itemCount: newTransactions.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
            elevation: 5,
            child: ListTile(
              trailing: MediaQuery.of(context).size.width > 360 ?
              FlatButton.icon(
                icon: Icon(Icons.delete),
                textColor: Theme.of(context).errorColor,
                  onPressed:() => deleteTx(newTransactions[index].id),
                  label: Text('Delete'),
              ) :
              IconButton(
                icon: Icon(Icons.delete), color: Theme.of(context).errorColor,
                onPressed:() => deleteTx(newTransactions[index].id),
              ),
              leading: CircleAvatar(radius: 30.0,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FittedBox(child: Text('\$${newTransactions[index].amount}')),
                  )
              ),
              title: Text('${newTransactions[index].title}', style: Theme.of(context).textTheme.title),
              subtitle: Text(DateFormat.yMMMd().format(newTransactions[index].date),
              ),
            ),
          );
        }
      ),
    );
  }
}