import 'package:chopper/chopper.dart';
import 'package:chopper_testing/models/images_model.dart';
import 'json_type_convertor.dart';
part 'images_service.chopper.dart';
@ChopperApi(baseUrl: '/?key=25281376-b6ec795fb21e0936fbbac22f4')
abstract class ImagesService extends ChopperService{
  @Get()
  Future<Response<ImagesModel>> getImages();
  static ImagesService create(){
    final client =ChopperClient(
      baseUrl: 'https://pixabay.com/api',
      services: [_$ImagesService()],
      converter: GenericConvertor(
          {
            ImagesModel:(json)=>ImagesModel.fromJson(json)
          }
      ),
    );
    return _$ImagesService(client);
  }

}