// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ImagesService extends ImagesService {
  _$ImagesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ImagesService;

  @override
  Future<Response<ImagesModel>> getImages(int page, int pageSize) {
    final $url = '/?key=25281376-b6ec795fb21e0936fbbac22f4';
    final $params = <String, dynamic>{'page': page, 'per_page': pageSize};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ImagesModel, ImagesModel>($request);
  }
}
