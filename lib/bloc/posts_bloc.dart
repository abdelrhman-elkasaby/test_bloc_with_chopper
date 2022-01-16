import 'package:bloc/bloc.dart';
import 'package:chopper_testing/network/posts_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsStates> {
  PostsService? postsService;

  PostsBloc() : super(PostsLoadingState()) {
    on<PostLoadedEvent>((event, emit) async{
      final postsService =  PostsService.create();
      final posts=await postsService.getPosts();
      emit(PostsLoadedState(posts.body!.title.toString()));
    });
  }
  static PostsBloc get(BuildContext context)=>BlocProvider.of(context);
}
