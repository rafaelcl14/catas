import 'package:auth/models/page_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class DrawerTile extends StatelessWidget {
  DrawerTile({this.title, this.page});

  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {

    final int curPage = context.watch<PageManager>().page;

    return InkWell(
      onTap: (){
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16, color: curPage == page ? Colors.deepOrangeAccent :Colors.grey),
                )
            )
          ],
        ),
      ),
    );
  }
}
