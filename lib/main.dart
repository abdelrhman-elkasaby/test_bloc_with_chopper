import 'package:chopper_testing/bloc/posts_bloc.dart';
import 'package:chopper_testing/screens/posts_screen/posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int page =1;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostsBloc>(create: (context)=>PostsBloc()..add(ImagesLoadedEvent(page: page))),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PostsScreen(),
      ),
    );
  }
}
