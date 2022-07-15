import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            //...
            onChanged: (value) {
              //.....
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15),
              fillColor: Colors.white24,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                size: 28,
                color: Colors.white70,
              ),
              hintText: "Search",
              hintStyle: const TextStyle(color: Colors.white70),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white60),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white60),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white60),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            //..........
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            // decoration: BoxDecoration(
            //   color: kLightBlue,
            //   borderRadius: BorderRadius.circular(15),
            // ),
            child: const Icon(
              Icons.sort,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
