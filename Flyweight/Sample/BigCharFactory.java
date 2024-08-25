import java.util.HashMap;
import java.util.Map;

public class BigCharFactory {
    // すでに作ったBigCharのインスタンスを管理
    private Map<String,BigChar> pool = new HashMap<>();
    // Singletonパターン
    private static BigCharFactory singleton = new BigCharFactory();

    // コンストラクタ
    private BigCharFactory() {
    }

    // 唯一のインスタンスを得る
    public static BigCharFactory getInstance() {
        return singleton;
    }

    // BigCharのインスタンス生成(共有)
    public synchronized BigChar getBigChar(char charname) {
        BigChar bc = pool.get(String.valueOf(charname));
        if (bc == null) {
            // ここでBigCharのインスタンスを生成
            bc = new BigChar(charname);
            pool.put(String.valueOf(charname), bc);
        }
        return bc;
    }
}
