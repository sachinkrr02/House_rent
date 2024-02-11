class featureEstateModel {
  final String image, title, rating, loc, price, type;

  featureEstateModel(
      {required this.image,
      required this.title,
      required this.rating,
      required this.loc,
      required this.price,
      required this.type});
}

final List<featureEstateModel> feature_data = [
  featureEstateModel(
      image: "assets/house/build1.jpg",
      title: "Sky Aparments",
      rating: "4.9",
      loc: "Jakarta, Indonesia",
      price: "\$1250",
      type: "Apartments"),
  featureEstateModel(
      image: "assets/house/build2.jpg",
      title: "Veer Aparments",
      rating: "4.4",
      loc: "Delhi, India",
      price: "\$1125",
      type: "Villa"),
  featureEstateModel(
      image: "assets/house/build3.jpg",
      title: "Andi Aparments",
      rating: "4.6",
      loc: "Saraja ,Dubai",
      price: "\$1349",
      type: "House"),
  featureEstateModel(
      image: "assets/house/build4.jpg",
      title: "Sky Aparments",
      rating: "4.9",
      loc: "Jakarta, Indonesia",
      price: "\$1250",
      type: "Office"),
  featureEstateModel(
      image: "assets/house/build5.jpg",
      title: "Veer Aparments",
      rating: "4.4",
      loc: "Delhi, India",
      price: "\$1125",
      type: "Apartments"),
  featureEstateModel(
      image: "assets/house/build6.jpg",
      title: "Andi Aparments",
      rating: "4.6",
      loc: "Saraja ,Dubai",
      price: "\$1349",
      type: "office"),
  featureEstateModel(
      image: "assets/house/build7.jpg",
      title: "Andi Aparments",
      rating: "4.6",
      loc: "Saraja ,Dubai",
      price: "\$1349",
      type: "villa"),
  featureEstateModel(
      image: "assets/house/house.jpg",
      title: "Andi Aparments",
      rating: "4.6",
      loc: "Saraja ,Dubai",
      price: "\$1349",
      type: "Building"),
];
