import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/forgot_password_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/login_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/new_password_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/password_reset_success_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/sign_up_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/verification_code_view.dart';
import 'package:laza_ecommerce/features/home/presentation/views/home_view.dart';
import 'package:laza_ecommerce/features/product_by_category/presentation/views/all_the_categories_view.dart';
import 'package:laza_ecommerce/features/product_by_category/presentation/views/products_of_category_view.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/all_the_reviews_view.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/product_details_view.dart';
import 'package:laza_ecommerce/features/introduction/presentation/views/intro_view.dart';
import 'package:laza_ecommerce/features/introduction/presentation/views/splash_view.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/order_result_view.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/payment_view.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/shipping_address_view.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/shopping_cart_view.dart';

import '../../features/favourites/presentation/views/favourite_products_view.dart';
import '../../features/home/presentation/views/all_featured_products_view.dart';
import '../../features/product_details/presentation/views/add_review_view.dart';

abstract class AppRoutes {
  static const introViewPath = '/introView';
  static const loginViewPath = '/loginView';
  static const signUpViewPath = '/signUpView';
  static const forgotPasswordView = '/forgotPasswordView';
  static const verificationCodeView = '/verificationCodeView';
  static const newPasswordViewPath = '/newPasswordView';
  static const passwordResetSuccessPath = '/passwordResetSuccessView';
  static const homeViewPath = '/homeView';
  static const productDetailsViewPath = '/ProductDetailsView';
  static const allTheCategoriesViewPath = '/AllTheCategoriesView';
  static const productsOfCategoryViewPath = '/ProductsOfCategoryView';
  static const allFeaturedProductsViewPath = '/AllFeaturedProductsView';
  static const allTheReviewsViewPath = '/AllTheReviewsView';
  static const addReviewViewPath = '/AddReviewView';
  static const favouriteProductsViewPath = '/FavouriteProductsView';
  static const shoppingCartViewPath = '/ShoppingCartView';
   static const orderResultViewPath = '/OrderResultView';
    static const shippingAdressViewPath = '/ShippingAdressView';
     static const paymentViewPath = '/PaymentView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/introView',
      builder: (context, state) => const IntroView(),
    ),
    GoRoute(
      path: '/loginView',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/signUpView',
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: '/forgotPasswordView',
      builder: (context, state) => const ForgotPasswordView(),
    ),
    GoRoute(
      path: '/verificationCodeView',
      builder: (context, state) => const VerificationCodeView(),
    ),
    GoRoute(
      path: '/newPasswordView',
      builder: (context, state) => const NewPasswordView(),
    ),
    GoRoute(
      path: '/passwordResetSuccessView',
      builder: (context, state) => const PasswordResetSuccess(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/ProductDetailsView',
      builder: (context, state) => const ProductDetailsView(),
    ),
    GoRoute(
      path: '/AllTheCategoriesView',
      builder: (context, state) => const AllTheCategoriesView(),
    ),
    GoRoute(
      path: '/ProductsOfCategoryView',
      builder: (context, state) => const ProductsOfCategoryView(),
    ),
    GoRoute(
      path: '/AllFeaturedProductsView',
      builder: (context, state) => const AllFeaturedProductsView(),
    ),
    GoRoute(
      path: '/AllTheReviewsView',
      builder: (context, state) => const AllTheReviewsView(),
    ),
    GoRoute(
      path: '/AddReviewView',
      builder: (context, state) => const AddReviewView(),
    ),
    GoRoute(
      path: '/FavouriteProductsView',
      builder: (context, state) => const FavouriteProductsView(),
    ),
    GoRoute(
      path: '/ShoppingCartView',
      builder: (context, state) => const ShoppingCartView(),
    ),
     GoRoute(
      path: '/OrderResultView',
      builder: (context, state) => const OrderResultView(),
    ),
    GoRoute(
      path: '/ShippingAdressView',
      builder: (context, state) => const ShippingAdressView(),
    ),
     GoRoute(
      path: '/PaymentView',
      builder: (context, state) => const PaymentView(),
    ),
  ]);
}
