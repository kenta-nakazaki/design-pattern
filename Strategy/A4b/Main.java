import java.util.*;

class Main {
    public static void main(String[] args) {
        List<String> list = Arrays.asList("D", "B", "C", "E", "A");

        // 辞書式順序で小さい順
        list.sort((a, b) -> a.compareTo(b));
        System.out.println(list);

        // 辞書式順序で大きい順
        list.sort((a, b) -> b.compareTo(a));
        System.out.println(list);
    }
}
