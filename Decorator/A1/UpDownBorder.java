public class UpDownBorder extends Border {
    private char borderChar;  // 飾り文字

    // 中身となるDisplayと飾り文字を指定
    public UpDownBorder(Display display, char ch) {
        super(display);
        this.borderChar = ch;
    }

    @Override
    public int getColumns() {
        // 文字数は中身の文字数に同じ
        return display.getColumns();
    }

    @Override
    public int getRows() {
        // 行数は中身の上下に飾り文字分を加えたもの
        return 1 + display.getRows() + 1;
    }

    @Override
    public String getRowText(int row) {
        if (row == 0 || row == getRows() - 1) {
            // 最上行と最下行は飾り文字だけの行
            return makeLine(borderChar, getColumns());
        } else {
            // 中身の行（最上行の分だけ行番号を減らす）
            return display.getRowText(row - 1);
        }
    }

    // 文字chをcount個連続させた文字列を作る
    private String makeLine(char ch, int count) {
        StringBuilder line = new StringBuilder();
        for (int i = 0; i < count; i++) {
            line.append(ch);
        }
        return line.toString();
    }
}
