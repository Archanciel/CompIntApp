import 'package:comp_int/utils/gui_util.dart';
import 'package:test/test.dart';

void main() {
  group('GuiUtils', () {
    test('test parsing correct double string', () {
      expect(GuiUtil.strToDouble('12.34'), 12.34);
    });

    test('test parsing invalid double string', () {
      expect(GuiUtil.strToDouble('aa'), 0);
    });
  });
}
