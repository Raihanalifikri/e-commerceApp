part of '../pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {


    Widget newArrivalProduct() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
          ],
        ),
      );
    }

    Widget newArrivalTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'New Arrival',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget populerProduct() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(),
              SizedBox(width: 10,),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget populerProductTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'Pupolar Product',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultMargin),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'All Product',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultMargin),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: borderColor,
                    )),
                child: Text(
                  'Shoes',
                  style: primaryTextStyle,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultMargin),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: borderColor,
                    )),
                child: Text(
                  'Tent',
                  style: primaryTextStyle,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultMargin),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: borderColor,
                    )),
                child: Text(
                  'Carrier',
                  style: primaryTextStyle,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultMargin),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: borderColor,
                    )),
                child: Text(
                  'Cargo',
                  style: primaryTextStyle,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Muhammad Raihan',
                    style: primaryTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                  Text('Let\'s explore your world', style: subtitleTextStyle)
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          SizedBox(
            height: 14,
          ),
          category(),
          SizedBox(height: 20),
          populerProductTitle(),
          SizedBox(height: 15),
          populerProduct(),
          SizedBox(height: 15,),
          newArrivalTitle(),
          newArrivalProduct(),
        ],
      ),
    );
  }
}
