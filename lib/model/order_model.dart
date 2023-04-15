class OrderModel {
  final String title;
  final String statuText;
  final DateTime dateTime;
  final double price;
  final bool?  statu;

  OrderModel(
      {required this.dateTime,
      required this.title,
      required this.price,
      required this.statuText,
        required this.statu,
      });
}
