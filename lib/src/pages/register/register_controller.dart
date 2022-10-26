import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();


  void register() {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastNameController.text;
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String passwordConfirm = passwordConfirmController.text.trim();

    if (isValidForm(email,name,lastname,phone ,password,passwordConfirm)) {
      Get.snackbar('Atención', 'Estas listo para ingresar al sistema');
    }
  }

  bool isValidForm(String email,String name,String lastname,String phone ,String password,String passwordConfirm) {

    if (email.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar el email');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Atención', 'El email no es valido');
      return false;
    }

    if (name.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar el nombre');
      return false;
    }

    if (lastname.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar el apellido');
      return false;
    }

    if (phone.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar el teléfono');
      return false;
    }


    if (password.isEmpty) {
      Get.snackbar('Atención', 'Debes ingresar  un password');
      return false;
    }

    if (passwordConfirm.isEmpty) {
      Get.snackbar('Atención', 'Debes confirmar el password');
      return false;
    }

    if (password != passwordConfirm) {
      Get.snackbar('Atención', 'Las contraseñas no coinciden');
      return false;
    }

    return true;
  }
}