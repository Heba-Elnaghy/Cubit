import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool pressed1 = true;
  bool pressed2 = true;
  bool pressed3 = true;
  bool pressed4 = true;
  bool pressed5 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 1 / 3),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: pressed1 ? Colors.grey : Colors.blue,
                      minimumSize: const Size(130, 50)),
                  child: const Text("Healthy"),
                  onPressed: () {
                    setState(() {
                      pressed1 = !pressed1;
                    });
                  },
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 7 / 375,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: pressed2 ? Colors.grey : Colors.blue,
                      minimumSize: const Size(130, 50)),
                  child: const Text("Technology"),
                  onPressed: () {
                    setState(() {
                      pressed2 = !pressed2;
                    });
                  },
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 7 / 375,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: pressed3 ? Colors.grey : Colors.blue,
                      minimumSize: const Size(130, 50)),
                  child: const Text("Finance"),
                  onPressed: () {
                    setState(() {
                      pressed3 = !pressed3;
                    });
                  },
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 7 / 375,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: pressed4 ? Colors.grey : Colors.blue,
                      minimumSize: const Size(130, 50)),
                  child: const Text("Art"),
                  onPressed: () {
                    setState(() {
                      pressed4 = !pressed4;
                    });
                  },
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 7 / 375,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: pressed5 ? Colors.grey : Colors.blue,
                      minimumSize: const Size(130, 50)),
                  child: const Text("Sport"),
                  onPressed: () {
                    setState(() {
                      pressed5 = !pressed5;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
