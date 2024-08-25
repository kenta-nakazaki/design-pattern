import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.TextField;

public class SafeFrame extends Frame implements Context {
    private TextField textClock = new TextField(60);        // 現在時刻表示
    private TextArea textScreen = new TextArea(10, 60);     // 警備センター出力
    private Button buttonUse = new Button("金庫使用");      // 金庫使用ボタン
    private Button buttonAlarm = new Button("非常ベル");    // 非常ベルボタン
    private Button buttonPhone = new Button("通常通話");    // 通常通話ボタン
    private Button buttonExit = new Button("終了");         // 終了ボタン

    private State state = DayState.getInstance();           // 現在の状態

    // コンストラクタ
    public SafeFrame(String title) {
        super(title);
        setBackground(Color.lightGray);
        setLayout(new BorderLayout());
        // textClockを配置
        add(textClock, BorderLayout.NORTH);
        textClock.setEditable(false);
        // textScreenを配置
        add(textScreen, BorderLayout.CENTER);
        textScreen.setEditable(false);
        // パネルにボタンを格納
        Panel panel = new Panel();
        panel.add(buttonUse);
        panel.add(buttonAlarm);
        panel.add(buttonPhone);
        panel.add(buttonExit);
        // そのパネルを配置
        add(panel, BorderLayout.SOUTH);

        // ボタンが押されたときのリスナーをラムダ式で設定
        buttonUse.addActionListener(e -> state.doUse(this));
        buttonAlarm.addActionListener(e -> state.doAlarm(this));
        buttonPhone.addActionListener(e -> state.doPhone(this));
        buttonExit.addActionListener(e -> System.exit(0));

        // 表示
        pack();
        setVisible(true);
    }

    // 時刻の設定
    @Override
    public void setClock(int hour) {
        String clockstring = String.format("現在時刻は%02d:00", hour);
        System.out.println(clockstring);
        textClock.setText(clockstring);
        state.doClock(this, hour);
    }

    // 状態変化
    @Override
    public void changeState(State state) {
        System.out.println(this.state + "から" + state + "へ状態が変化しました。");
        this.state = state;
    }

    // 警備センター警備員呼び出し
    @Override
    public void callSecurityCenter(String msg) {
        textScreen.append("call! " + msg + "\n");
    }

    // 警備センター記録
    @Override
    public void recordLog(String msg) {
        textScreen.append("record ... " + msg + "\n");
    }
}
