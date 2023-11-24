import 'package:get/get.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterBindings>(
      () => RegisterBindings(),
    );
  }
}
