library globals;

List<FoodType> globalFilters = List.filled(0, FoodType.Default, growable: true);

// Data
final foods = [
  Food("Chicken Briyani", [FoodType.Halal], "\$3", "Flavours@UTown"),
  Food("Lentil Curry", [FoodType.Vegetarian, FoodType.Halal], "\$2",
      "FineFoods@UTown"),
  Food("Salmon Sushi", [], "\$2", "Flavours@UTown"),
  Food("Tofu Mix Bowl", [FoodType.Vegan, FoodType.Vegetarian], "\$3",
      "FineFood@UTown"),
  Food("Chicken Shawarma", [FoodType.Halal], "\$5", "UTown"),
  Food("Beef Steak", [], "\$12", "Flavours@UTown"),
  Food("Nasi Lemak", [FoodType.Halal], "\$4", "FineFoods@UTown"),
  Food("Egg Salad", [FoodType.Vegetarian, FoodType.Halal], "\$2",
      "Mixed Greens"),
  Food("Pesto Pasta", [FoodType.Vegetarian], "\$6", "Pasta Express")
];

enum FoodType {
  Halal,
  Vegetarian,
  Vegan,
  Default;
}

class Food {
  String name = "default price";
  List<FoodType> type = List.filled(0, FoodType.Default, growable: true);
  String price = "default price";
  String location = "default location";

  Food(String name, List<FoodType> type, String price, String location) {
    this.name = name;
    this.type = type;
    this.price = price;
    this.location = location;
  }
}
