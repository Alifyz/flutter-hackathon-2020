class RequestModel {
  final String title;
  final String description;
  final String name;
  final String type;
  final String address;
  final String phone;
  final bool isForMyself;

  RequestModel(
    this.title,
    this.description,
    this.name,
    this.type,
    this.address,
    this.phone,
    this.isForMyself,
  );
}
