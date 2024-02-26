class TransactionModel {
  final String title, subtitle, price;
  final bool isWithdrawal;

 const TransactionModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isWithdrawal,
  });
}
