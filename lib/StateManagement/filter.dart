import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubits/cubit/change_color_cubit.dart';

class Filter extends StatelessWidget {
  Filter({super.key});

  List<String> filterList = [
    "Healthy",
    "Technology",
    "Finance",
    "Art",
    "Sport",
    "Art",
    "Healthy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              BlocBuilder<ChangeColorCubit, ChangeColorState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < filterList.length; i++)
                          InkWell(
                            onTap: () {
                              context.read<ChangeColorCubit>().changeIndex(i);
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: context
                                              .read<ChangeColorCubit>()
                                              .selectedIndex ==
                                          i
                                      ? Colors.blue
                                      : Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(filterList[i]),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
