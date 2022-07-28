import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:foodelo_commerce/screens/email_confirmation_screen.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

const baseUrl = "https://westmarket.herokuapp.com/api/v1";

class Auth extends GetxController {
  // RxString? _token;
  // RxString? otp;
  String? userEmail;

  Future<void> signUp(
      {required String name,
      required String email,
      required String password}) async {
    final url = Uri.parse("$baseUrl/user/register");
    try {
      final response = await http.post(
        url,
        body: {"name": name, "email": email, "password": password},
      );

      final responseData = response.body;
      debugPrint(responseData);

      /*   if (responseData["user"]["success"] == true) {
        Get.toNamed(EmailConfirmation.routeName);
      } else if (responseData["success"] == false) {
        Get.snackbar("Error Occured", responseData["success"]["msg"]);
      }*/
    } catch (error) {
      rethrow;
    } finally {
      //   Get.toNamed(EmailConfirmation.routeName);
    }
  }

  Future<void> verifyEmail({required String otp}) async {
    final url = Uri.parse("$baseUrl/user/verify-email");
    try {
      final response =
          await http.post(url, body: {"email": userEmail, "otp": otp});
    } catch (e) {
      rethrow;
    }
  }
}
