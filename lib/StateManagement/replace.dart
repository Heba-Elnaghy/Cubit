import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubits/cubit/change_cubit.dart';

class replace extends StatelessWidget {
  const replace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<ChangeCubit, ChangeState>(builder: (context, state) {
              if (state is Showtext) {
                return const Text(
                  "Hello we are ITI",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                );
              } else if (state is Showimage) {
                return SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                      "https://pub.dev/packages/bloc/versions/8.1.2/gen-res/gen/190x190/logo.webp"),
                );
              } else if (state is Showcircle) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                );
              } else {
                return Text("no data");
              }
            }),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().showtext();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("show text"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().showimage();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("show image"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().showcircle();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("show circle"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ChangeCubit>().reset();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}
