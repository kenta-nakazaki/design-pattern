public abstract class Display {
    public abstract int getColumns();           // 横の文字数を得る
    public abstract int getRows();              // 縦の行数を得る
    public abstract String getRowText(int row); // row行目の文字列を得る

    // すべての行を表示する
    public void show() {
        for (int i = 0; i < getRows(); i++) {
            System.out.println(getRowText(i));
        }
    }
}
