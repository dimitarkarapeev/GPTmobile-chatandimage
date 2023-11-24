import 'package:chat_gpt_flutter/app/modules/Forgot_password/bindings/Forgot_Password_binding.dart';
import 'package:chat_gpt_flutter/app/modules/Forgot_password/views/Forgot_Password.dart';
import 'package:chat_gpt_flutter/app/modules/Register/bindings/Register_bindings.dart';
import 'package:chat_gpt_flutter/app/modules/Register/views/Register.dart';
import 'package:chat_gpt_flutter/app/modules/Sign_In/views/Sign_In.dart';
import 'package:get/get.dart';

import '../modules/chat_image/bindings/chat_image_binding.dart';
import '../modules/chat_image/views/chat_image_view.dart';
import '../modules/chat_text/bindings/chat_text_binding.dart';
import '../modules/chat_text/views/chat_text_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import 'package:chat_gpt_flutter/app/modules/Sign_In/bindings/Sign_In_binding.dart';

// ...
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SignIn;

  static final routes = [
    GetPage(
      name: _Paths.SignIn,
      page: () => SignIn(),
      binding: SignInBindings(),
    ),
    GetPage(
      name: _Paths.ForgotPassword,
      page: () => ForgotPassword(),
      binding: ForgotPasswordBindings(),
    ),
    GetPage(
      name: _Paths.Register,
      page: () => RegisterAccount(),
      binding: RegisterBindings(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_IMAGE,
      page: () => const ChatImageView(),
      binding: ChatImageBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_TEXT,
      page: () => const ChatTextView(),
      binding: ChatTextBinding(),
    ),
  ];
}
