package game;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Gamer {
    // 所持金
    private int money;
    // フルーツ
    private List<String> fruits = new ArrayList<>();
    // 乱数生成器
    private Random random = new Random();

    // フルーツ名の表
    private static String[] fruitsName = {
        "リンゴ", "ぶどう", "バナナ", "みかん",
    };

    // コンストラクタ
    public Gamer(int money) {
        this.money = money;
    }

    // 現在の所持金を得る
    public int getMoney() {
        return money;
    }

    // 賭ける…ゲームの進行
    public void bet() {
        // サイコロを振る
        int dice = random.nextInt(6) + 1;
        if (dice == 1) {
            // 1の目…所持金が増える
            money += 100;
            System.out.println("所持金が増えました。");
        } else if (dice == 2) {
            // 2の目…所持金が半分になる
            money /= 2;
            System.out.println("所持金が半分になりました。");
        } else if (dice == 6) {
            // 6の目…フルーツをもらう
            String f = getFruit();
            System.out.println("フルーツ(" + f + ")をもらいました。");
            fruits.add(f);
        } else {
            // それ以外…何も起きない
            System.out.println("何も起こりませんでした。");
        }
    }

    // スナップショットをとる
    public Memento createMemento() {
        Memento m = new Memento(money);
        for (String f: fruits) {
            // フルーツはおいしいものだけ保存
            if (f.startsWith("おいしい")) {
                m.addFruit(f);
            }
        }
        return m;
    }

    // アンドゥを行う
    public void restoreMemento(Memento memento) {
        this.money = memento.getMoney();
        this.fruits = memento.getFruits();
    }

    @Override
    public String toString() {
        return "[money = " + money + ", fruits = " + fruits + "]";
    }

    // フルーツを1個得る
    private String getFruit() {
        String f = fruitsName[random.nextInt(fruitsName.length)];
        if (random.nextBoolean()) {
            return "おいしい" + f;
        } else {
            return f;
        }
    }
}
