import '../../models/product_model.dart';

abstract class ProductRepo {
  Future<List<ProductModel>> getProducts({String? category});

  Future<List<String>> getAllCategories();
}
