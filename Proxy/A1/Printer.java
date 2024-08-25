public class Printer implements Printable {
    private String name; // 名前

    // コンストラクタ
    public Printer() {
        heavyJob("Printerのインスタンスを生成中");
    }

    // コンストラクタ（名前指定）
    public Printer(String name) {
        this.name = name;
        heavyJob("Printerのインスタンス(" + name + ")を生成中");
    }

    // 名前の設定
    @Override
    public void setPrinterName(String name) {
        this.name = name;
    }

    // 名前の取得
    @Override
    public String getPrinterName() {
        return name;
    }

    // 名前付きで表示
    @Override
    public void print(String string) {
        System.out.println("=== " + name + " ===");
        System.out.println(string);
    }

    // 重い作業(のつもり)
    private void heavyJob(String msg) {
        System.out.print(msg);
        for (int i = 0; i < 5; i++) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
            }
            System.out.print(".");
        }
        System.out.println("完了。");
    }
}
