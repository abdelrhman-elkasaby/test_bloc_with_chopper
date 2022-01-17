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
  Future<Response<ImagesModel>> getImages() {
    final $url = '/?key=25281376-b6ec795fb21e0936fbbac22f4';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ImagesModel, ImagesModel>($request);
  }
}
