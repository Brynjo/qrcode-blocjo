import 'package:go_router/go_router.dart';
import 'package:qrcode/pages/error_page.dart';
import 'package:qrcode/pages/home_page.dart';
import 'package:qrcode/pages/products/product_detail_page.dart';
import 'package:qrcode/pages/products/product_page.dart';
import 'package:qrcode/pages/setting_page.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: 'products',
          name: 'products.index',
          builder: (context, state) => ProductPage(),
          routes: [
            GoRoute(
              path: ':productId',
              name: 'products.show',
              builder: (context, state) => ProductDetailPage(
                state.pathParameters['productId'],
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => SettingPage(),
    ),
  ],
);
