public class SideBorder extends Border {
    private char borderChar;  // 飾り文字

    // 中身となるDisplayと飾り文字を指定
    public SideBorder(Display display, char ch) {
        super(display);
        this.borderChar = ch;
    }

    @Override
    public int getColumns() {
        // 文字数は中身の両側に飾り文字分を加えたもの
        return 1 + display.getColumns() + 1;
    }

    @Override
    public int getRows() {
        // 行数は中身の行数に同じ
        return display.getRows();
    }

    @Override
    public String getRowText(int row) {
        // 指定行の内容は、中身の指定行の両側に飾り文字をつけたもの
        return borderChar + display.getRowText(row) + borderChar;
    }
}
