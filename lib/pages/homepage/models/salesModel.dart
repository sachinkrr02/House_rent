class SalesModel {
  final String image, title, subtitle;

  SalesModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

final List<SalesModel> demo_data = [
  SalesModel(
      image: "assets/house.jpg",
      title: "Halloween Sales!",
      subtitle: "All discount upto 60%"),
  SalesModel(
      image: "assets/img.png",
      title: "Summer Vaction Sales!",
      subtitle: "All discount upto 50%"),
  SalesModel(
      image: "assets/house.jpg",
      title: "Winter Vacation Sales!",
      subtitle: "All discount upto 40%"),
];
