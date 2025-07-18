import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/product_details_screen.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/product/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ProductDetailsScreen(productId: id);
        },
      ),
    ],
  );
}
