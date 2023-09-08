import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx_bindings/controllers/register_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final registerC = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Form(
        key: registerC.formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Silahkan Daftar untuk melihat page berikutnya !!!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: registerC.nameController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Masukkan Nama",
                    labelText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    return registerC.validasiNama(value!);
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: registerC.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Masukkan Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    return registerC.validasiPassword(value!);
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  registerC.login();
                },
                child: const Icon(
                  Icons.send,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
