public interface Mediator {
    // Colleagueたちを生成する
    public abstract void createColleagues();

    // Colleageの状態が変化したときに呼ばれる
    public abstract void colleagueChanged();
}
