import 'package:chopper_testing/bloc/posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostsBloc>(
      lazy: false,
      create:(context)=> PostsBloc()..add(PostLoadedEvent()),
      child: BlocConsumer<PostsBloc,PostsStates>(
        listener:(context,state){} ,
        builder: (context,state) {
          // var bloc=PostsBloc.get(context);
        if(state is PostsLoadingState){
          return Scaffold(
            appBar: AppBar(
              title: const Text('My Posts'),
              centerTitle: true,
              backgroundColor: Colors.deepOrange,
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if(state is PostsLoadedState){
          return Scaffold(
              appBar: AppBar(
                title: const Text('My Posts'),
                centerTitle: true,
                elevation: 0.0,
                backgroundColor: Colors.deepOrange,
              ),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(state.title),
                ),
              )
          );
        }
        return Container();
        },
      ),
    );
  }
}
