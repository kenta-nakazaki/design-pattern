public class Player {
    private String name;
    private Strategy strategy;
    private int wincount;
    private int losecount;
    private int gamecount;

    // 名前と戦略を授けてプレイヤーを作る
    public Player(String name, Strategy strategy) {
        this.name = name;
        this.strategy = strategy;
    }

    // 戦略におうかがいを立てて次の手を決める
    public Hand nextHand() {
        return strategy.nextHand();
    }

    // 勝った
    public void win() {
        strategy.study(true);
        wincount++;
        gamecount++;
    }

    // 負けた
    public void lose() {
        strategy.study(false);
        losecount++;
        gamecount++;
    }

    // 引き分け
    public void even() {
        gamecount++;
    }

    @Override
    public String toString() {
        return "["
            + name + ":"
            + gamecount + " games, "
            + wincount + " win, "
            + losecount + " lose"
            + "]";
    }
}
