import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mila/202/service/post_model.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  String? titleMsg = 'Test';
  bool _isLoading = false;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  Future<void> _addItemToService(PostModel postModel) async {
    isLoading();
    final response = await _networkManager.post('posts', data: postModel);

    if (response.statusCode == HttpStatus.created) {
      titleMsg = 'Post aktarımı başarılı';
    }
    isLoading();
  }

  void isLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleMsg ?? ''),
          actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'User ID'),
              textInputAction: TextInputAction.go,
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                              title: _titleController.text,
                              body: _bodyController.text,
                              userId: int.tryParse(_userIdController.text));

                          _addItemToService(model);
                        }
                      },
                child: const Text('Send'))
          ],
        ));
  }
}
