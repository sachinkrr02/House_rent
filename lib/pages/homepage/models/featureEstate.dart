class featureEstateModel {
  final String image, title, rating, loc, price;

  featureEstateModel({
    required this.image,
    required this.title,
    required this.rating,
    required this.loc,
    required this.price,
  });
}

final List<featureEstateModel> feature_data = [
  featureEstateModel(
    image: "assets/house.jpg",
    title: "Sky Aparments",
    rating: "4.9",
    loc: "Jakarta, Indonnesia",
    price: "\$1250",
  ),
  featureEstateModel(
    image: "assets/img.png",
    title: "Veer Aparments",
    rating: "4.4",
    loc: "Delhi, India",
    price: "\$1125",
  ),
  featureEstateModel(
    image: "assets/img.png",
    title: "Andi Aparments",
    rating: "4.6",
    loc: "Saraja ,Dubai",
    price: "\$1349",
  ),
  featureEstateModel(
    image: "assets/house.jpg",
    title: "Sky Aparments",
    rating: "4.9",
    loc: "Jakarta, Indonnesia",
    price: "\$1250",
  ),
  featureEstateModel(
    image: "assets/img.png",
    title: "Veer Aparments",
    rating: "4.4",
    loc: "Delhi, India",
    price: "\$1125",
  ),
  featureEstateModel(
    image: "assets/img.png",
    title: "Andi Aparments",
    rating: "4.6",
    loc: "Saraja ,Dubai",
    price: "\$1349",
  ),
];
