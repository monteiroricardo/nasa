class DateToStringConverter {
  String convert(DateTime date) {
    final dateSpplited = date.toString().split(' ');
    return dateSpplited.first;
  }
}
