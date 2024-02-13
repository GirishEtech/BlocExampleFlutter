import 'package:block_architecture_demo/Features/cart/ui/cart.dart';
import 'package:block_architecture_demo/Features/home/Bloc/home_bloc.dart';
import 'package:block_architecture_demo/Features/wishlist/ui/WishListPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      bloc: homeBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: const Text("Grocery Demo"),
            actions: [
              IconButton(
                  onPressed: () =>
                      homeBloc.add(HomeProductWishlistButtonNavigateEvent()),
                  icon: Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () =>
                      homeBloc.add(HomeProductCartButtonNavigateEvent()),
                  icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is HomeNavigateToWishlistActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WishListPage()));
        } else if (state is HomeNavigateToCartActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CartPage()));
        }
      },
    );
  }
}
