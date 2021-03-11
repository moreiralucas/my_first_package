class Calculator {
  static final Calculator _singleton =
      Calculator._internal(DateTime.now().toString());

  factory Calculator() {
    return _singleton;
  }

  Calculator._internal(this._date);

  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  /// Returns [value] minus 1.
  int minusOne(int value) => value - 1;

  /// Returns square root of [value].
  int squareRoot(int value) => value * value;

  String _date;
  String get createdDate => _date;
}
