class Food {
  final String id;
  final String name;
  final String imagePath;
  final double price;
  final double discount;
  final double ratings;
  final String category;
  Food(
      {this.name,
        this.imagePath,
        this.price,
        this.category,
        this.id,
        this.discount,
        this.ratings});
}