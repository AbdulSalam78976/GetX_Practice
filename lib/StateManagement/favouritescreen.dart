import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_x_practice/StateManagement/favouritecontroller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final Favouritecontroller _favouritecontroller = Favouritecontroller();

    print("Whole scaffold built");
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite Screen')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Obx(
            () => ListTile(
              title: Text('Item $index'),
              trailing: IconButton(
                onPressed: () {
                  print("only listtile built");
                  _favouritecontroller.addFavourite(index);
                },
                icon: Icon(
                  _favouritecontroller.favouriteList.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
