public abstract class Entry implements Element {
    public abstract String getName(); // 名前を得る
    public abstract int getSize();    // サイズを得る

    // 文字列表現
    @Override
    public String toString() {
        return getName() + " (" + getSize() + ")";
    }
}

