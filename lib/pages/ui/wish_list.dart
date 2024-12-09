part of '../pages.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {

    Widget content() {
      return Expanded(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          WishListCard(),
          WishListCard(),
          WishListCard(),
          WishListCard(),
        ],
      ));
    }

    Widget emptyWishList() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 100,
            ),
            SizedBox(height: 20),
            Text(
              'You Don\t have dream stuff',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Text(
              'Let\s find your favorite stuff',
              style: primaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed((context), '/main');
              },
              child: Text(
                'Explore Store',
                style: primaryTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Favorite List',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
