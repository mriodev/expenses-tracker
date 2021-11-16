import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 69.56,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 69.56,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController =
      TextEditingController(); //text editing controller is a class provided by flutter class
  //this should assign to the textfield of ur app
  //statelessWidget data is immutable it means user cannot change the transaction data in runtime
  final List<Transaction> transactions = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blueGrey.shade700,
                //full size of container width
                child: Text('CHART!'),
                //container is the most universal styling positioning sizing widget
                //child from card widget
                elevation: 5,
              ),
              //make strong drop shadow for card section
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      )),
                      // margin for container, container mean collection of things
                      // enum mean pre define values or fixed set of variables
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${tx.amount}',
                        /* tx.amount.toString(),*/
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(labelText: 'Title'),
                              controller: titleController,
                              // onChanged: (val) => titleInput = val,
                            ),
                            TextField(
                              decoration: InputDecoration(labelText: 'Amount'),
                              controller: amountController,
                              //onChanged: (val) => amountInput = val,
                            ),
                            FlatButton(
                              child: Text('Add Transaction'),
                              textColor: Colors.purple,
                              onPressed: () {
                                print(titleController.text);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      //adjust the alignmnet on column of text
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('yyyy-MM-dd').format(tx.date),
                          /*to make bettar date widget
                          should insert intel dependencies into the yaml*/

                          // tx.date.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ));
              }).toList(),
            ),
          ],
        ));
  }
}
