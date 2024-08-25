import java.awt.Color;
import java.awt.TextField;
import java.awt.event.TextEvent;
import java.awt.event.TextListener;

public class ColleagueTextField extends TextField implements TextListener, Colleague {
    private Mediator mediator;

    public ColleagueTextField(String text, int columns) {
        super(text, columns);
    }

    // Mediatorを設定する
    @Override
    public void setMediator(Mediator mediator) {
        this.mediator = mediator;
    }

    // Mediatorから有効/無効が指示される
    @Override
    public void setColleagueEnabled(boolean enabled) {
        setEnabled(enabled);
        // 有効/無効に合わせて背景色を変更する
        setBackground(enabled ? Color.white : Color.lightGray);
    }

    @Override
    public void textValueChanged(TextEvent e) {
        // 文字列が変化したらMediatorに通知する
        mediator.colleagueChanged();
    }
}
