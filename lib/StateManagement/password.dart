import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubits/cubit/password_cubit.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: BlocBuilder<PasswordCubit, PasswordState>(
                builder: (context, state) {
                  return TextField(
                    obscureText: context.read<PasswordCubit>().isShown,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: context.read<PasswordCubit>().isShown
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: () {
                          context.read<PasswordCubit>().showHidePass();
                        },
                      ),
                      hintText: "Password",
                      // errorBorder: ,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // border:
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
