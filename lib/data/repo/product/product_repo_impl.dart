import '../../../utils/constants/api_path.dart';
import '../../../utils/exceptions/exceptions.dart';
import '../../models/product_model.dart';
import '../../service/service.dart';
import 'product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<List<ProductModel>> getProducts({String? category}) async {
    try {
      final String url;
      if (category != null) {
        url = '${ApiPath.getCategoriesProduct}/$category';
      } else {
        url = ApiPath.getAllProducts;
      }

      final response = await apiService.get(path: url);

      if (response.statusCode == 200) {
        final List<ProductModel> products = (response.data as List)
            .map((product) => ProductModel.fromJson(product))
            .toList();

        return products;
      }

      return [];
    } catch (e) {
      throw RepoException("Error while fetching products");
    }
  }

  @override
  Future<List<String>> getAllCategories() async {
    try {
      final response = await apiService.get(path: '/products/categories');

      if (response.statusCode == 200) {
        final List<String> categories = (response.data as List)
            .map((category) => category.toString())
            .toList();

        return categories;
      }

      return [];
    } catch (e) {
      throw RepoException("Error while fetching categories");
    }
  }
}
