part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buttonUpdate() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          margin: EdgeInsets.only(top: 12),
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text('Update', style:
            primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: Colors.white,
            ),),
        ),
      );
    }

    Widget emailInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 12),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: primaryTextStyle,
                  hintText: 'm.raihanalifikri@gmail.com',
                  fillColor: backgroundColor4,
                  filled: true,
                  icon: Icon(
                    Icons.email,
                    size: 21,
                    color: Colors.white,
                  )
              ),
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 16,
              )
          ),
        ),
      );
    }

    Widget userNameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 12),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: primaryTextStyle,
                  hintText: 'Hurairah',
                  fillColor: backgroundColor4,
                  filled: true,
                  icon: Icon(
                    Icons.verified_user ,
                    size: 21,
                    color: Colors.white,
                  )
              ),
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 16,
              )
          ),
        ),
      );
    }

    Widget nameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Full Name',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.person,
                size: 21,
                color: Colors.white,
              )
            ),
            style: primaryTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
            )
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Padding(padding: EdgeInsets.all(8.0),
           child: CircleAvatar(
             radius: 64,
             backgroundImage: AssetImage(
               'assets/image_profile.png'
             ),
           ),
           ),
            Text(
              "Raihan Alifikri",
              style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
            nameInput(),
            userNameInput(),
            emailInput(),
            buttonUpdate(),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
