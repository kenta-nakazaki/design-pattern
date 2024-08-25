import java.util.ArrayList;
import java.util.List;

public class MultiStringDisplay extends Display {
    // 表示文字列の格納場所
    private List<String> body = new ArrayList<>();
    // 表示文字列の最大文字数
    private int columns = 0;

    // 文字列追加
    public void add(String msg) {
        body.add(msg);
        if (columns < msg.length()) {
            // 最大文字数を更新
            columns = msg.length();
        }
        updatePadding();
    }

    @Override
    public int getColumns() {
        return columns;
    }

    @Override
    public int getRows() {
        return body.size();
    }

    @Override
    public String getRowText(int row) {
        return body.get(row);
    }

    // 表示文字列の右端に詰める空白を必要に応じて増やす
    private void updatePadding() {
        for (int row = 0; row < body.size(); row++) {
            String line = body.get(row);
            int padding = columns - line.length();
            if (padding > 0) {
                body.set(row, line + spaces(padding));
            }
        }
    }

    // count個の空白を作る
    private String spaces(int count) {
        StringBuilder spaces = new StringBuilder();
        for (int i = 0; i < count; i++) {
            spaces.append(' ');
        }
        return spaces.toString();
    }
}
