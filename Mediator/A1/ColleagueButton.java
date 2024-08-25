import java.awt.Button;

public class ColleagueButton extends Button implements Colleague {
    private Mediator mediator;

    public ColleagueButton(String caption) {
        super(caption);
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
}
