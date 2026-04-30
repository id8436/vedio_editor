package a;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: BoltsExecutors.java */
/* JADX INFO: loaded from: classes.dex */
class f implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadLocal<Integer> f9a;

    private f() {
        this.f9a = new ThreadLocal<>();
    }

    private int a() {
        Integer num = this.f9a.get();
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue() + 1;
        this.f9a.set(Integer.valueOf(iIntValue));
        return iIntValue;
    }

    private int b() {
        Integer num = this.f9a.get();
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue() - 1;
        if (iIntValue == 0) {
            this.f9a.remove();
        } else {
            this.f9a.set(Integer.valueOf(iIntValue));
        }
        return iIntValue;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        try {
            if (a() <= 15) {
                runnable.run();
            } else {
                d.a().execute(runnable);
            }
        } finally {
            b();
        }
    }
}
