import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonClick>(homeProductWishlistClick);
    on<HomeProductCartButtonClick>(homeProductCartClick);
    on<HomeProductWishlistButtonNavigateEvent>(homeWishNavigateEvent);
    on<HomeProductCartButtonNavigateEvent>(homeCartNavigateEvent);
  }

  FutureOr<void> homeProductWishlistClick(
      HomeProductWishlistButtonClick event, Emitter<HomeState> emit) {
    print("Home Cart Navigate Event");
  }

  FutureOr<void> homeCartNavigateEvent(
      HomeProductCartButtonNavigateEvent event, Emitter<HomeState> emit) {
    print("Home Cart Navigate Event");
    emit(HomeNavigateToCartActionState());
  }

  FutureOr<void> homeWishNavigateEvent(
      HomeProductWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
    print("Home Wishlist Navigate Event...");
    emit(HomeNavigateToWishlistActionState());
  }

  FutureOr<void> homeProductCartClick(
      HomeProductCartButtonClick event, Emitter<HomeState> emit) {
    print("Cart clicked");
  }
}
