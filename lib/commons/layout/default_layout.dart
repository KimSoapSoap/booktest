import 'package:flutter/material.dart';


class DefaultLayout extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final String? title;
  final Widget? bottomNavigationBar;

  const DefaultLayout({
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: renderAppBar(),
      body: child,
      //네비게이션바를 안 쓰는 곳도 있을테니 위젯으로 받아서 처리
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? renderAppBar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        //앞으로 튀어나온 듯한 설정. 요즘은 그 효과를 없애는 0이 트렌드
        elevation: 0,
        title: Text(
          //위에서 null처리 했으므로 여기엔 null이 안 오므로 title에 느낌표 처리 가능.
          title!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        //MaterialApp()은 AppBar의 title 정렬이 기본 왼쪽에서 시작하므로 가운데 정렬 필요시 옵션 주기
        centerTitle: true,
        foregroundColor: Colors.black,
      );
    }
  }
}
