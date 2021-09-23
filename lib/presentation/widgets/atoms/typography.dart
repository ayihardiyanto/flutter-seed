import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color? color;
  const Heading(this.text, {Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline1!.copyWith(color: color),
    );
  }
}

class Paragraph extends StatelessWidget {
  final String text;
  final Color? color;
  const Paragraph(this.text, {Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: color));
  }
}

class Caption extends StatelessWidget {
  final String text;
  final Color? color;
  const Caption(this.text, {Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.caption!.copyWith(color: color),
    );
  }
}

class Subheading extends StatelessWidget {
  final String text;
  final Color? color;
  const Subheading(this.text, {Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: color));
  }
}
