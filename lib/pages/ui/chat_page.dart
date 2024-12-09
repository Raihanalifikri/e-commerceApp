part of '../pages.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget massageEmpty() {
      return Center(
        child: Text('Massage Empty', style: primaryTextStyle,),
      );
    }

    Widget massage() {
      return Container(
        child: Column(
          children: [
            ChatCard(),
            ChatCard(),
            ChatCard(),
            ChatCard(),
            ChatCard(),
            ChatCard(),
            ChatCard(),
          ],
        )
      );
    }

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        centerTitle: true,
        title: Text(
          'Massage Support',
          style: primaryTextStyle.copyWith(fontWeight: FontWeight.w200),
        ),
        automaticallyImplyLeading: false,
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        body: ListView(
          children: [
            header(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                massage(),
              ],
            ),
          ],
        ));
  }
}
