part of 'posts_bloc.dart';

abstract class PostsEvent extends Equatable {
  const PostsEvent();
}
class PostLoadedEvent extends PostsEvent{
  @override
  List<Object?> get props => [];
}

class ImagesLoadedEvent extends PostsEvent{
  @override
  List<Object?> get props => [];
}
