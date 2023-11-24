import 'package:get/get.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInBindings>(
      () => SignInBindings(),
    );
  }
}
