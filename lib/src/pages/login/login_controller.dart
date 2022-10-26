import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void goToRegisterPage() {
    Get.toNamed('/register');
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (isValidForm(email, password)) {
      Get.snackbar('Atención', 'Estas listo para ingresar al sistema');
    }
  }

  bool isValidForm(String email, String password) {

    if (email.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar el email');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Atención', 'El email no es valido');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar  un password');
      return false;
    }

    return true;
  }


}
