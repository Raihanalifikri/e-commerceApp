part of '../pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;

  List<String> suggesstionProduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
    'assets/image_shoes5.png',
    'assets/image_shoes6.png',
    'assets/image_shoes7.png',
    'assets/image_shoes8.png',
  ];

  List<String> imagesProduct = [
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
    'assets/image_shoes.png',
  ];
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shoes Arei V-3.0 - No Limit',
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            Text(
              'Mountain',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              NumberFormat.currency(
                locale: 'id-ID',
                symbol: 'IDR',
                decimalDigits: 0,
              ).format(750000),
              style: priceTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: backgroundColor5,
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores eius tempora at laborum nobis iusto magnam illo ea ut facere odit qui optio corporis repellat, nihil quisquam, praesentium, ipsum aperiam nulla nostrum natus. Incidunt expedita corrupti qui, quasi possimus ut! praesentium, ipsum aperiam nulla nostrum natus. Incidunt expedita corrupti qui, quasi possimus ut!',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Color',
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Size',
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        '39',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        '40',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        '41',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        '42',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        '43',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Suggistion',
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: suggesstionProduct.map((e) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      color: backgroundColor6,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 70,
                          decoration: BoxDecoration(
                            color: backgroundColor5,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                            image: DecorationImage(
                                image: AssetImage(e), fit: BoxFit.cover),
                          ),
                        ),
                        Text('Shoes Arei V-3.0 - No Liimit', style: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: semiBold,
                        ),)
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget indicatorbar(int index) {
      return Container(
        width: currentIndex == index ? 30 : 10,
        height: 10,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: currentIndex == index ? backgroundColor1 : Colors.white,
            borderRadius: currentIndex == index
                ? BorderRadius.circular(10)
                : BorderRadius.circular(5)),
      );
    }

    Widget header() {
      int index = 0;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: backgroundColor1),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.white,
                      ),
                    )),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor1,
                    ),
                    child: Icon(
                      Icons.shopping_bag,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: imagesProduct
                .map(
                  (element) => Image.asset(
                    element,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                height: 310,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  for (var i = 0; i < imagesProduct.length; i++)
                    indicatorbar(index),
                ],
              )
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
