public abstract class AbstractDisplay {
    // open, print, closeはサブクラスに実装をまかせる抽象メソッド
    public abstract void open();
    public abstract void print();
    public abstract void close();

    // displayはAbstractDisplayで実装してるメソッド
    public final void display() {
        open();
        for (int i = 0; i < 5; i++) {
            print();
        }
        close();
    }
}
