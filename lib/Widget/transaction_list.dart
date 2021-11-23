import '../Models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                // margin for container, container mean collection of things
                // enum mean pre define values or fixed set of variables
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                padding: EdgeInsets.all(10), // padding for container
                child: Text(
                  '\$${transactions[index].amount}', //string interpolation
                  /* tx.amount.toString(),*/
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //adjust the alignmnet on column of text
                children: <Widget>[
                  Text(
                    transactions[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('yyyy-MM-dd').format(transactions[index].date),
                    /*to make bettar date widget
                            should insert intel dependencies into the yaml*/
                    // tx.date.toString(),
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              )
            ],
          ));
        },
        //singleChildScrollView
        /* children: transactions.map((tx) {
        }).toList(),*/
      ),
    );
  }
}
