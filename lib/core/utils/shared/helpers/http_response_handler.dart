import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:railway_checks_assignment/core/utils/shared/helpers/http_methods_results.dart';
import 'package:railway_checks_assignment/core/utils/shared/snacbar.dart';

Future<HttpMethodsResults> httpResponseHandler({
  required http.Response res,
  VoidCallback? onsuccess,
  // required BuildContext context,
}) {
  switch (res.statusCode) {
    case 200:
      onsuccess;
      break;
    case 400:
    // showSnackBar(context: context, text: jsonDecode(res.body)['msg']);
    case 500:
    // showSnackBar(context: context, text: jsonDecode(res.body)['error']);
    default:
    // showSnackBar(context: context, text: 'some error occured');
  }
}
