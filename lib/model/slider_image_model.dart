class SliderImageModel {
  final String imageUri;

  SliderImageModel({required this.imageUri});
}

class SliderProductModel {
  final String imageUri;
  final String titleProduct;
  final double price;
  final double rating;
  final int sale;

  SliderProductModel(
      {required this.imageUri,
      required this.titleProduct,
      required this.price,
      required this.rating,
      required this.sale});
}
