part of 'posts_bloc.dart';

abstract class PostsStates extends Equatable {
  const PostsStates();
}

class PostsLoadingState extends PostsStates {
  @override
  List<Object> get props => [];
}
class PostsLoadedState extends PostsStates {
  final String title;

  const PostsLoadedState(this.title);
  @override
  List<Object> get props => [title];
}

class ImagesLoadedState extends PostsStates {
  final Response<ImagesModel> img;

  const ImagesLoadedState(this.img);
  @override
  List<Object> get props => [img];
}

class SystemsNetworkError extends PostsStates {
  final String errorMessage;

  const SystemsNetworkError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}