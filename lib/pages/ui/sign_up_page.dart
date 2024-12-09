part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  Widget footer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Are you have an account?', style: subtitleTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Sign In', style: primaryTextStyle,),
              ),),
          ],
        ),
      ),
    );
  }

  Widget buttonSubmit(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(onPressed: (){
          Navigator.pushNamed(context, '/main');
        }, child: Text('Sign Up', style: primaryTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),)),
      ),
    );
  }

  Widget passwordInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon_password.png', width: 32,),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: subtitleTextStyle,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget emailInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon_email.png', width: 32,),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your email Address',
                          hintStyle: subtitleTextStyle,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget nameInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon_name.png', width: 32,),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your full name',
                          hintStyle: subtitleTextStyle,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget userNameInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon_username.png', width: 32,),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
                          hintStyle: subtitleTextStyle,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 12,),
          Text('Sign Up to create Account', style: subtitleTextStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
          ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor4,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              userNameInput(),
              emailInput(),
              passwordInput(),
              buttonSubmit(context),
              Spacer(),
              footer(context)
            ],
          )),
    );
  }
}
