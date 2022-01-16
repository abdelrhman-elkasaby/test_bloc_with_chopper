import 'package:chopper/chopper.dart';
import 'package:chopper_testing/models/posts_model.dart';

import 'json_type_convertor.dart';
part 'posts_service.chopper.dart';
@ChopperApi(baseUrl: '/posts/1')
abstract class PostsService extends ChopperService{
  @Get()
  Future<Response<PostsModel>> getPosts();
  static PostsService create(){
    final client =ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [_$PostsService()],
      converter: GenericConvertor(
        {
          PostsModel:(json)=>PostsModel.fromJson(json)
        }
      ),
    );
    return _$PostsService(client);
  }

}