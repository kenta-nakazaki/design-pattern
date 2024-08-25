public class BigString {
    // 「大きな文字」の配列
    private BigChar[] bigchars;

    // コンストラクタ（引数なし、共有する）
    public BigString(String string) {
        initShared(string);
    }

    // コンストラクタ（引数で共有するかどうかを指定する）
    public BigString(String string, boolean shared) {
        if (shared) {
            initShared(string);
        } else {
            initUnshared(string);
        }
    }

    // 共有して初期化
    private void initShared(String string) {
        BigCharFactory factory = BigCharFactory.getInstance();
        bigchars = new BigChar[string.length()];
        for (int i = 0; i < bigchars.length; i++) {
            bigchars[i] = factory.getBigChar(string.charAt(i));
        }
    }

    // 共有せず初期化
    private void initUnshared(String string) {
        bigchars = new BigChar[string.length()];
        for (int i = 0; i < bigchars.length; i++) {
            bigchars[i] = new BigChar(string.charAt(i));
        }
    }

    // 表示
    public void print() {
        for (BigChar bc: bigchars) {
            bc.print();
        }
    }
}
