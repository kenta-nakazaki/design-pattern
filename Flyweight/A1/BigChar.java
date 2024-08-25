import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class BigChar {
    // 文字の名前
    private char charname;
    // 大きな文字を表現する文字列('#' '.' '\n'の列)
    private String fontdata;

    // コンストラクタ
    public BigChar(char charname) {
        this.charname = charname;
        try {
            String filename = "big" + charname + ".txt";
            StringBuilder sb = new StringBuilder();
            for (String line: Files.readAllLines(Path.of(filename))) {
                sb.append(line);
                sb.append("\n");
            }
            this.fontdata = sb.toString();
        } catch (IOException e) {
            this.fontdata = charname + "?";
        }
    }

    // 大きな文字を表示する
    public void print() {
        System.out.print(fontdata);
    }
}
