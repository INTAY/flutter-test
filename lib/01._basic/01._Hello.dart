




class HelloFultter extends StatelessWidget {
  const HelloFultter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child:Text(
              "Hello Word !!--",
              textDirection: TextDirection.ltr,
            )
        )
    );
  }
}