public class BigString {
    // 「大きな文字」の配列
    private BigChar[] bigchars;

    // コンストラクタ
    public BigString(String string) {
        BigCharFactory factory = BigCharFactory.getInstance();
        bigchars = new BigChar[string.length()];
        for (int i = 0; i < bigchars.length; i++) {
            bigchars[i] = factory.getBigChar(string.charAt(i));
        }
    }

    // 表示
    public void print() {
        for (BigChar bc: bigchars) {
            bc.print();
        }
    }
}
