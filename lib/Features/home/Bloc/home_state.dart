part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeActionState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToCartActionState extends HomeActionState{

}
class HomeNavigateToWishlistActionState extends HomeActionState{

}