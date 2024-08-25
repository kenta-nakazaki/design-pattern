public class CharDisplay implements AbstractDisplay {
    private char ch; // 表示すべき文字

    // コンストラクタ
    public CharDisplay(char ch) {
        this.ch = ch;
    }

    @Override
    public void open() {
        // 開始文字列として"<<"を表示する
        System.out.print("<<");
    }

    @Override
    public void print() {
        // フィールドに保存しておいた文字を1回表示する
        System.out.print(ch);
    }

    @Override
    public void close() {
        // 終了文字列として">>"を表示する
        System.out.println(">>");
    }
}
