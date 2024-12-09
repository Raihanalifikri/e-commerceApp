part of '../pages.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {


    Widget Content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        children: [
          ChatBubble(
            text: 'Iya cuk ini sepatu',
            isSender: false,
            hasProduct: false,
          ),
          ChatBubble(
            text: 'ukuran  gmn mas?',
            isSender: true,
          ),
          ChatBubble(
            text: 'ukuran aman mas',
            hasProduct: true,
          ),
          ChatBubble(
            text: 'kirim hari ini nyampe kapan mas?',
            isSender: true,
          ),
        ],
      );
    }

    Widget productPreview() {
      return Container(
        padding: EdgeInsets.all(13),
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor5,
          border: Border.all(
            color: primaryTextColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 54,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoes Arei v.3',
                        style: primaryTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(NumberFormat.currency(
                        locale: 'id-ID',
                        decimalDigits: 0,
                        symbol: 'IDR'
                      ).format(75000),
                      style: priceTextStyle.copyWith(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/button_close.png', width: 22,)
              ],
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Type message',
                              hintStyle: subtitleTextStyle),
                          style: primaryTextStyle,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/button_send.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 58,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Store',
                  style: primaryTextStyle,
                ),
                Text(
                  'Onile',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: light),
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryTextColor,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: Content(),
    );
  }
}
