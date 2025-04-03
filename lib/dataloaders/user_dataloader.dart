import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';
import 'package:flutter_exe/model/login_response.dart';
import 'package:logger/logger.dart';

part 'user_dataloader.g.dart';

final logger = Logger();

@riverpod
Future<LoginResponse> userLoader(Ref ref) async {
    final repository = ref.read(userRepositoryProvider);
    final data = {
        'userId': 'userId',
        'userPassword': 'userPassword',
    };

    try {

        final response = await repository.login(
            'Login',
            json.encode(data),
            'userId',
            'AND',
            'Chrome',
            '172.17.200.48',
            'E0AA96DEBD0A',
        );  
        return response;
    } catch (e) {
        logger.e('Error loading user: $e');
        rethrow;
    }
}