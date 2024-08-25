public enum Hand {
    // じゃんけんの手を表す3つのenum定数
    ROCK("グー", 0),
    SCISSORS("チョキ", 1),
    PAPER("パー", 2);

    // enumが持つフィールド
    private String name; // じゃんけんの手の名前
    private int handvalue; // じゃんけんの手の値

    // 手の値から定数を得るための配列
    private static Hand[] hands = {
        ROCK, SCISSORS, PAPER
    };

    // コンストラクタ
    private Hand(String name, int handvalue) {
        this.name = name;
        this.handvalue = handvalue;
    }

    // 手の値からenum定数を得る
    public static Hand getHand(int handvalue) {
        return hands[handvalue];
    }

    // thisがhより強いときtrue
    public boolean isStrongerThan(Hand h) {
        return fight(h) == 1;
    }

    // thisがhより弱いときtrue
    public boolean isWeakerThan(Hand h) {
        return fight(h) == -1;
    }

    // 引き分けは0, thisの勝ちなら1, hの勝ちなら-1
    private int fight(Hand h) {
        if (this == h) {
            return 0;
        } else if ((this.handvalue + 1) % 3 == h.handvalue) {
            return 1;
        } else {
            return -1;
        }
    }

    // じゃんけんの「手」の文字列表現
    @Override
    public String toString() {
        return name;
    }
}
