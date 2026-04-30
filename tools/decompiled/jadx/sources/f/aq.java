package f;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes3.dex */
class aq extends ap {
    aq() {
    }

    @Override // f.ap
    public Executor b() {
        return new ar();
    }

    @Override // f.ap
    i a(@Nullable Executor executor) {
        if (executor == null) {
            throw new AssertionError();
        }
        return new o(executor);
    }
}
