package b.a.a;

/* JADX INFO: compiled from: EventBus.java */
/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f69a = new int[q.values().length];

    static {
        try {
            f69a[q.PostThread.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f69a[q.MainThread.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f69a[q.BackgroundThread.ordinal()] = 3;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f69a[q.Async.ordinal()] = 4;
        } catch (NoSuchFieldError e5) {
        }
    }
}
