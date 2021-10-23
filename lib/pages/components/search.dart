import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final Function(String) onTextChanged;
  final Function() onPressedCancelButton;

  const Search({
    Key? key,
    required this.onTextChanged,
    required this.onPressedCancelButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.search),
        title: TextField(
          // controller: searchController,
          decoration: const InputDecoration(
              hintText: 'Search', border: InputBorder.none),
          onChanged: onTextChanged,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.cancel),
          onPressed: onPressedCancelButton,
        ),
      ),
    );
  }
}
