public class SpecialSupport extends Support {
    private int number; // この番号だけ解決できる

    public SpecialSupport(String name, int number) {
        super(name);
        this.number = number;
    }

    @Override
    protected boolean resolve(Trouble trouble) {
        if (trouble.getNumber() == number) {
            return true;
        } else {
            return false;
        }
    }
}
