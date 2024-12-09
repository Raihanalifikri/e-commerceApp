part of 'widget.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key,
      this.text = '',
      this.isSender = false,
      this.hasProduct = false});

  final bool hasProduct;

  final bool isSender;

  final String text;

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 250,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor5,
          border: Border.all(
            color: primaryTextColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/image_shoes.png',
                      width: 64,
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoes Arei V.3 - blauc',
                      style: primaryTextStyle,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id_ID', decimalDigits: 0, symbol: 'IDR')
                          .format(75000),
                      style: priceTextStyle.copyWith(
                        color: secondaryTextColor,
                      ),
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to cart',
                    style: primaryTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12, color: primaryColor),
                  ),
                  style: OutlinedButton.styleFrom(backgroundColor: whiteColor),
                ),
                SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: primaryColor),
                      backgroundColor: primaryColor),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(0),
        topLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      )),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            width: double.infinity,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: isSender ? backgroundColor5:backgroundColor1  ,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(isSender ? 0:20),
                bottomLeft: Radius.circular(isSender ? 20:0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
