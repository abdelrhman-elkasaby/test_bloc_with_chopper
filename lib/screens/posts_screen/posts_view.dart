import 'package:chopper_testing/bloc/posts_bloc.dart';
import 'package:flutter/cupertino.dart';
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
      create: (context) => PostsBloc()..add(ImagesLoadedEvent()),
      child: BlocConsumer<PostsBloc, PostsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          // var bloc=PostsBloc.get(context);
          if (state is PostsLoadingState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('My Images'),
                centerTitle: true,
                backgroundColor: Colors.deepOrange,
              ),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state is ImagesLoadedState) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text('My Images'),
                  centerTitle: true,
                  elevation: 0.0,
                  backgroundColor: Colors.blueGrey,
                ),
                body: ListView.builder(
                  itemCount: state.img.body!.hits!.length,
                  itemBuilder: (context,index){
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(25)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                          child: Image.network(state.img.body!.hits![index].largeImageURL.toString(),
                          ),
                      ),
                    );
                  },
                ));
          }
          return Container();
        },
      ),
    );
  }
}
