class OrdersInfo {
  String seriel;
  String name;
  String date;
  String time;
  String location;
  final String status;
  final String paymentStatus;
  OrdersInfo(
      {this.time,
      this.date,
      this.name,
      this.location,
      this.seriel,
      this.paymentStatus,
      this.status});
}
