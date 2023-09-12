import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/forgot_password_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/login_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/new_password_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/password_reset_success_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/sign_up_view.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/verification_code_view.dart';
import 'package:laza_ecommerce/features/home/presentation/views/home_view.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/product_details_view.dart';
import 'package:laza_ecommerce/features/introduction/presentation/views/intro_view.dart';
import 'package:laza_ecommerce/features/introduction/presentation/views/splash_view.dart';

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
  ]);
}
