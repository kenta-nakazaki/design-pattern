public class ListVisitor extends Visitor {
    // 現在注目しているディレクトリ名
    private String currentdir = "";

    // File訪問時
    @Override
    public void visit(File file) {
        System.out.println(currentdir + "/" + file);
    }

    // Directory訪問時
    @Override
    public void visit(Directory directory) {
        System.out.println(currentdir + "/" + directory);
        String savedir = currentdir;
        currentdir = currentdir + "/" + directory.getName();
        for (Entry entry: directory) {
            entry.accept(this);
        }
        currentdir = savedir;
    }
}
