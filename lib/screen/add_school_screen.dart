import 'dart:convert';


import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school/constant/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class AddSchoolScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddSchoolScreenState();
  }
}

class _AddSchoolScreenState extends State<AddSchoolScreen> {
  late final WebViewController _controller;

  String filePath = 'assets/index.html';

  @override
  void initState() {
    super.initState();
    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    final WebViewController controller =
    WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
            _controller
                .runJavaScript(
                "javascript:(function() { " +

                    "var head = document.getElementsByClassName('flaticon-menu')[0];" +
                    "head.parentNode.removeChild(head);" +
                    "var social = document.getElementsByClassName('a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style')[0];" +
                    "social.parentNode.removeChild(social);" +
                    "var link = document.getElementsByTagName('a')[0];" +
                    "link .parentNode.removeChild(link );" +
                    "var footer = document.getElementsByClassName('apus-footer')[0];" +
                    "footer.parentNode.removeChild(footer);" +
                    "})()"

            )
                .then((value) => debugPrint('Page finished loading Javascript'))
                .catchError((onError) => debugPrint('$onError'));
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              debugPrint('blocking navigation to ${request.url}');
              return NavigationDecision.prevent;
            }
            debugPrint('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      );

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    _loadHtmlFromAssets();
    return Scaffold(
      appBar: AppBar(
        title: Text('add_School').tr(),
        backgroundColor: mainColor,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        elevation: 0,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }

  _loadHtmlFromAssets() async {
    //String fileHtmlContents = await rootBundle.loadString(filePath);
    //_controller.loadRequest(Uri.dataFromString(fileHtmlContents,
    //  mimeType: 'text/html', encoding: Encoding.getByName('utf-8')));
    _controller.loadRequest(Uri.parse('https://schooli-edu.com/?page_id=567'));
  }
}