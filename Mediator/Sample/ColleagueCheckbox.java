import java.awt.Checkbox;
import java.awt.CheckboxGroup;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

public class ColleagueCheckbox extends Checkbox implements ItemListener, Colleague {
    private Mediator mediator;

    public ColleagueCheckbox(String caption, CheckboxGroup group, boolean state) {
        super(caption, group, state);
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
    }

    @Override
    public void itemStateChanged(ItemEvent e) {
        // 状態が変化したらMediatorに通知する
        mediator.colleagueChanged();
    }
}
