public class Main {
    public static void main(String[] args) {
        // 'H'を持ったCharDisplayのインスタンスを1個作る
        AbstractDisplay d1 = new CharDisplay('H');

        // "Hello, world."を持ったStringDisplayのインスタンスを1個作る
        AbstractDisplay d2 = new StringDisplay("Hello, world.");

        // d1,d2とも、すべて同じAbstractDisplayのサブクラスのインスタンスだから
        // 継承したdisplayメソッドを呼び出すことができる
        // 実際の動作は個々のクラスCharDisplayやStringDisplayで定まる
        d1.display();
        d2.display();
    }
}
