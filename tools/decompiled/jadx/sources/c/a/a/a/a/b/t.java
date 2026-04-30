package c.a.a.a.a.b;

/* JADX INFO: compiled from: DeliveryMechanism.java */
/* JADX INFO: loaded from: classes.dex */
public enum t {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f178e;

    t(int i) {
        this.f178e = i;
    }

    public int a() {
        return this.f178e;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f178e);
    }

    public static t a(String str) {
        if ("io.crash.air".equals(str)) {
            return TEST_DISTRIBUTION;
        }
        if (str != null) {
            return APP_STORE;
        }
        return DEVELOPER;
    }
}
