import '../../models/product_model.dart';
import '../../models/rating_model.dart';
import 'product_repo.dart';

class ProductRepoMockImpl implements ProductRepo {
  @override
  Future<List<String>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 1));

    return categories;
  }

  @override
  Future<List<ProductModel>> getProducts({String? category}) async {
    await Future.delayed(const Duration(seconds: 1));

    if (category == null) {
      return products;
    } else {
      return products.where((product) => product.category == category).toList();
    }
  }
}

final categories = [
  'electronics',
  'footwear',
  'clothing',
  'grocery',
];

final List<ProductModel> products = [
  ProductModel(
    id: 0,
    category: "electronics",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Computer",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 1,
    category: "electronics",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Mobile",
    price: 20,
    rating: RatingModel(rate: 3.5, count: 20),
  ),
  ProductModel(
    id: 2,
    category: "electronics",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Laptop",
    price: 40,
    rating: RatingModel(rate: 3.5, count: 30),
  ),
  ProductModel(
    id: 3,
    category: "footwear",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Shoes",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 4,
    category: "footwear",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Socks",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 5,
    category: "footwear",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Slippers",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 6,
    category: "clothing",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Shirt",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 7,
    category: "clothing",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "T-Shirt",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 8,
    category: "clothing",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Pant",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 9,
    category: "grocery",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Rice",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 10,
    category: "grocery",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Wheat",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
  ProductModel(
    id: 11,
    category: "grocery",
    description: "description",
    image: "https://picsum.photos/200/300",
    title: "Sugar",
    price: 30,
    rating: RatingModel(rate: 3.5, count: 10),
  ),
];
