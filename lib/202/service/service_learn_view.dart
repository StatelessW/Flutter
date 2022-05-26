import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mila/202/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchPostData();
  }

  void loadingStatus() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostData() async {
    loadingStatus();
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        setState(() {
          _items = _data.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    loadingStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              title: Text(
                _items?[index].title ?? '',
              ),
              subtitle: Text(_items?[index].body ?? ''),
            ),
          );
        },
      ),
    );
  }
}
