package d.a.e;

/* JADX INFO: compiled from: ErrorCode.java */
/* JADX INFO: loaded from: classes3.dex */
public enum b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);


    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4358g;

    b(int i) {
        this.f4358g = i;
    }

    public static b a(int i) {
        for (b bVar : values()) {
            if (bVar.f4358g == i) {
                return bVar;
            }
        }
        return null;
    }
}
