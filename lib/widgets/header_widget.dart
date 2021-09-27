import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Hungry?",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
                Icon(Icons.more_horiz, size: 35.0)
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text("Let's order some food",
                style: TextStyle(fontSize: 18.0, color: Colors.grey.shade600)),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              cursorColor: Colors.grey.shade600,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  hintText: "Search ...",
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(30.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(30.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(30.0))),
            )
          ],
        ),
      ),
    );
  }
}
