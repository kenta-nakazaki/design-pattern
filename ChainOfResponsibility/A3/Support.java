public abstract class Support {
    private String name;    // このトラブル解決者の名前
    private Support next;   // たらい回しの先

    public Support(String name) {
        this.name = name;
        this.next = null;
    }

    // たらい回しの先を設定する
    public Support setNext(Support next) {
        this.next = next;
        return next;
    }

    // トラブル解決の手順を定める
    public void support(Trouble trouble) {
        for (Support obj = this; true; obj = obj.next) {
            if (obj.resolve(trouble)) {
                obj.done(trouble);
                break;
            } else if (obj.next == null) {
                obj.fail(trouble);
                break;
            }
        }
    }

    @Override
    public String toString() {
        return "[" + name + "]";
    }

    // 解決しようとする
    protected abstract boolean resolve(Trouble trouble);

    // 解決した
    protected void done(Trouble trouble) {
        System.out.println(trouble + " is resolved by " + this + ".");
    }

    // 解決しなかった
    protected void fail(Trouble trouble) {
        System.out.println(trouble + " cannot be resolved.");
    }
}

