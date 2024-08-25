public class StringDisplay implements AbstractDisplay {
    private String string;  // 表示すべき文字列
    private int width;      // 文字列の表示幅

    // コンストラクタ
    public StringDisplay(String string) {
        this.string = string;
        this.width = string.length();
    }

    @Override
    public void open() {
        printLine();
    }

    @Override
    public void print() {
        System.out.println("|" + string + "|");
    }

    @Override
    public void close() {
        printLine();
    }

    // openとcloseから呼び出されて"+----+"という文字列を表示するメソッド
    private void printLine() {
        System.out.print("+");
        for (int i = 0; i < width; i++) {
            System.out.print("-");
        }
        System.out.println("+");
    }
}
