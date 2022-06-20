import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mila/202/service/post_model.dart';

class ServicesScnario extends StatefulWidget {
  const ServicesScnario({Key? key}) : super(key: key);

  @override
  State<ServicesScnario> createState() => _ServicesScnarioState();
}

class _ServicesScnarioState extends State<ServicesScnario> {
  List<PostModel>? _postList;
  bool _isLoading = false;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    getPostData();
    isLoading();
  }

  void isLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> getPostData() async {
    final postData = await _networkManager.get('posts');

    if (postData.statusCode == HttpStatus.ok) {
      final _okData = postData.data;
      if (_okData is List) {
        setState(() {
          _postList = _okData.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    isLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemCount: _postList?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              title: Text(_postList?[index].title ?? '', style: const TextStyle(color: Colors.red)),
              subtitle: Text(_postList?[index].body ?? '', style: const TextStyle(color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}
