class GuiUtil {
  static double strToDouble(String str) {
    return double.tryParse(str) ?? 0;
  }
}