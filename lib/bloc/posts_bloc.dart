import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper_testing/models/images_model.dart';
import 'package:chopper_testing/network/images_service.dart';
import 'package:chopper_testing/network/posts_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'posts_event.dart';
part 'posts_state.dart';


const PAGE_SIZE = 8;
class PostsBloc extends Bloc<PostsEvent, PostsStates> {
  // PostsService? postsService;
  ImagesService? imagesService;
  final pagingController = PagingController<int, dynamic>(firstPageKey: 0, invisibleItemsThreshold: 3);

  PostsBloc() : super(PostsLoadingState()) {
    // initPagingController();
    // on<PostLoadedEvent>((event, emit) async{
    //   final postsService =  PostsService.create();
    //   final posts=await postsService.getPosts();
    //   emit(PostsLoadedState(posts.body!.title.toString()));
    // });
    // on<ImagesLoadedEvent>((event, emit) async {
    //   final imagesService= ImagesService.create();
    //   final images=await imagesService.getImages();
    //   emit(ImagesLoadedState(images));
    // });
    // on<ImagesLoadedEvent>(_onImagesLoaded);

    initPagingController();
    on<ImagesLoadedEvent>((event, emit) async {
      imagesService=ImagesService.create();
      final imagesModel=await imagesService!.getImages(event.page, PAGE_SIZE);
      final isLastPage = imagesModel.body!.hits!.length < PAGE_SIZE;
      if (isLastPage) {
        pagingController.appendLastPage(imagesModel.body!.hits!);
      } else {
        final nextPageKey = event.page + 1;
        pagingController.appendPage(imagesModel.body!.hits!, nextPageKey);
      }
      emit(ImagesLoadedState(imagesModel));

    });
  }

  void initPagingController() {
    pagingController.addPageRequestListener((pageKey) {
      add(ImagesLoadedEvent(page: pageKey));
    });
  }

  static PostsBloc get(BuildContext context)=>BlocProvider.of(context);
}
