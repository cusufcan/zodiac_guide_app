class Zodiac {
  final String _name;
  final String _date;
  final String _detail;
  final String _smallPic;
  final String _bigPic;

  Zodiac(this._name, this._date, this._detail, this._smallPic, this._bigPic);

  String get name => _name;
  String get date => _date;
  String get detail => _detail;
  String get smallPic => _smallPic;
  String get bigPic => _bigPic;

  @override
  String toString() {
    return '\n$_name - $_bigPic';
  }
}
