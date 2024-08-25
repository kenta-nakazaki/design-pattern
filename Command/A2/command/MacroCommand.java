package command;

import java.util.ArrayDeque;
import java.util.Deque;

public class MacroCommand implements Command {
    // 命令の列
    private Deque<Command> commands = new ArrayDeque<>();

    // 実行
    @Override
    public void execute() {
        for (Command cmd: commands) {
            cmd.execute();
        }
    }

    // 追加
    public void append(Command cmd) {
        if (cmd == this) {
            throw new IllegalArgumentException("infinite loop caused by append");
        }
        commands.push(cmd);
    }

    // 最後の命令を削除
    public void undo() {
        if (!commands.isEmpty()) {
            commands.pop();
        }
    }

    // 全部削除
    public void clear() {
        commands.clear();
    }
}
