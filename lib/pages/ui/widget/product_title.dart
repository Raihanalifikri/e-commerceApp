part of 'widget.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed((context), '/product-page');
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoes Running wolf v3 - Brown Black',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold, letterSpacing: 0.8),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                   NumberFormat.currency(
                     locale: 'id-ID',
                     symbol: 'IDR',
                     decimalDigits: 0,
                   ).format(75000),
                    style: priceTextStyle.copyWith(fontSize: 15, fontWeight: medium, color: primaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
