part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeProductWishlistButtonClick extends HomeEvent {}

class HomeProductCartButtonClick extends HomeEvent {}

class HomeProductCartButtonNavigateEvent extends HomeEvent {}

class HomeProductWishlistButtonNavigateEvent extends HomeEvent {}

