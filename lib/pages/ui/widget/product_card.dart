part of 'widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed((context), '/product-page');
      },
      child: Container(
        width: 215,
        height: 240,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: secondaryColor.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(1, 1)
            ),
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: 215,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25)
                ),
                image: DecorationImage(
                    image: AssetImage('assets/image_shoes.png'),
                fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shoes: ', style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                    color: secondaryColor
                  ),),
                  Text('Sepatu Gunung Arei V3',
                    style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                      color: blackColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                  ),
                  Text(NumberFormat.currency(
                    symbol: 'IDR',
                    locale: 'id_ID',
                    decimalDigits: 0,
                  ).format(80000),
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
