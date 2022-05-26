import 'package:flutter/material.dart';
import 'package:mila/202/service/post_model.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class SelfService extends StatefulWidget {
  const SelfService({Key? key}) : super(key: key);

  @override
  State<SelfService> createState() => _SelfServiceState();
}

class _SelfServiceState extends State<SelfService> {
  List<PostModel>? _modelList; // * PostModel kalıbını kullanan bir list, null gelebilir.
  final Color _redColor = Colors.red;
  final Color _greenColor = Colors.green;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchData(); // * Initilaize anında fetchData'nın tetiklenmesini sağlıyor.
  }

  void _loadingStatus() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchData() async {
    _loadingStatus();
    final dataResponse = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    // * Dio'nun pathten çektiği datayı bir değişkene atadık ve async hale gelmesini sağladık.

    if (dataResponse.statusCode == HttpStatus.ok) {
      // * Çekilen datanın status code == ok. ise;
      final _data = dataResponse.data;

      if (_data is List) {
        // * _data bir List ise;
        setState(() {
          _modelList = _data
              .map((e) => PostModel.fromJson(e))
              .toList(); // * _data'yı mapledik ve Json içindeki elemanları, _modelList içerisine atamasını sağladık.
        });
      }
    }
    _loadingStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
          itemCount: _modelList?.length ?? 0,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(_modelList?[index].title ??
                      ''), // * Oluşturulan, _modelList'in mezubahis indexinin mevzubahis title'ını ListTile'ın titleında yazdırdık. (Null dönebilir. Null dönerse, ?? '')
                  subtitle: Text(_modelList?[index].body ??
                      ''), // * Oluşturulan, _modelList'in mezubahis indexinin mevzubahis body'sini ListTile'ın subtitleında yazdırdık. (Null dönebilir. Null dönerse, ?? '')
                  textColor: _colorPickerForTile(index),
                ),
              ),
            );
          }),
    );
  }

  Color _colorPickerForTile(int index) => (_modelList?[index].id)! % 2 == 0 ? _redColor : _greenColor;
}
