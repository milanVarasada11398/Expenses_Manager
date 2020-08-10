import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  final List<Transaction> _userTransaction = [
    Transaction(
      id: '1',
      title: 'shoes',
      amount: 288,
      date: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'Watch',
      amount: 500,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTransaction =
        Transaction(title: txtitle, amount: txamount, date: DateTime.now(),id:DateTime.now().toString());

  setState(() {
    _userTransaction.add(newTransaction);
  });
  }


  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(
          _userTransaction,
        )
      ],
    );
  }
}
