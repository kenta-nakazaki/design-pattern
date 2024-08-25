package drawer;

import command.MacroCommand;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Canvas;

public class DrawCanvas extends Canvas implements Drawable {
    // 描画色
    private Color color;
    // 描画する点の半径
    private int radius;
    // 履歴
    private MacroCommand history;

    // コンストラクタ
    public DrawCanvas(int width, int height, MacroCommand history) {
        setSize(width, height);
        setBackground(Color.white);
        this.history = history;
        init();
    }

    // 履歴全体を再描画
    @Override
    public void paint(Graphics g) {
        history.execute();
    }

    // 初期化
    @Override
    public void init() {
        color = Color.red;
        radius = 6;
        history.append(new ColorCommand(this, color));
    }

    // 描画
    @Override
    public void draw(int x, int y) {
        Graphics g = getGraphics();
        g.setColor(color);
        g.fillOval(x - radius, y - radius, radius * 2, radius * 2);
    }

    @Override
    public void setColor(Color color) {
        this.color = color;
    }
}
