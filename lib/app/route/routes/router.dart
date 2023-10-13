import 'package:go_router/go_router.dart';

import '../../../feature/home/home_screen.dart';
import '../../../feature/products/product_screen.dart';
import 'route_path.dart';

final router = GoRouter(
  initialLocation: RoutePath.home,
  routes: [
    GoRoute(
      path: RoutePath.home,
      name: RoutePath.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        // product route with parameter
        GoRoute(
          path: "${RoutePath.productDetails}/:category",
          name: RoutePath.productDetails,
          builder: (context, state) => ProductScreen(
            category: state.pathParameters["category"] ?? "All",
          ),
        ),
      ],
    ),
  ],
);
