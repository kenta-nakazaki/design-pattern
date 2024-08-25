package game;

import java.io.*;
import java.nio.file.*;
import java.util.ArrayList;
import java.util.List;

public class Memento {
    private int money;            // 所持金
    private List<String> fruits;  // フルーツ

    // 所持金を得る(narrow interface)
    public int getMoney() {
        return money;
    }

    // コンストラクタ(wide interface)
    Memento(int money) {
        this.money = money;
        this.fruits = new ArrayList<>();
    }

  // フルーツを追加する(wide interface)
    void addFruit(String fruit) {
        fruits.add(fruit);
    }

    // フルーツを得る(wide interface)
    List<String> getFruits() {
         return new ArrayList<>(fruits);
    }

    // ファイルに保存
    public static boolean saveToFile(String filename, Memento memento) {
        StringBuilder sb = new StringBuilder();

        // 所持金
        sb.append(String.format("%d", memento.money));
        sb.append("\n");

        // フルーツ
        for (String f: memento.getFruits()) {
            sb.append(f);
            sb.append("\n");
        }

        // 書き込み
        try {
            Files.writeString(Path.of(filename), sb,
                    StandardOpenOption.CREATE,
                    StandardOpenOption.TRUNCATE_EXISTING,
                    StandardOpenOption.WRITE);
        } catch (IOException e) {
            System.out.println(e.toString());
            return false;
        }
        return true;
    }

    // ファイルから生成
    public static Memento loadFromFile(String filename) {
        try {
            // 読み込み
            List<String> lines = Files.readAllLines(Path.of(filename));
            if (lines.size() == 0) {
                System.out.println("Empty file");
                return null;
            }

            // 所持金
            int money = 0;
            try {
                money = Integer.parseInt(lines.get(0));
            } catch (NumberFormatException e) {
                System.out.println("Format error: " + e);
                return null;
            }

            // 生成
            Memento memento = new Memento(money);

            // フルーツ
            for (int i = 1; i < lines.size(); i++) {
                memento.addFruit(lines.get(i));
            }
            return memento;
        } catch (IOException e) {
            System.out.println(e.toString());
            return null;
        }
    }
}
