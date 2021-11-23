class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
//as u can see below is the costructor method of transaction classthere is no return type
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
