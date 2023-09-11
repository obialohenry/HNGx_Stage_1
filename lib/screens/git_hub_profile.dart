import 'package:flutter/material.dart';
import 'package:hngx_stage_1/utils/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubProfileView extends StatelessWidget {
  final String githubProfileUrl;

  final webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://github.com/obialohenry'));

  GitHubProfileView({required this.githubProfileUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.KWhite,
        body: SafeArea(
          child: WebViewWidget(
            controller: webViewController,
          ),
        ));
  }
}
