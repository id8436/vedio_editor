package d;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: MultipartBody.java */
/* JADX INFO: loaded from: classes.dex */
public final class aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    final ag f4550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final az f4551b;

    public static aq a(@Nullable ag agVar, az azVar) {
        if (azVar == null) {
            throw new NullPointerException("body == null");
        }
        if (agVar != null && agVar.a("Content-Type") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (agVar != null && agVar.a("Content-Length") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
        return new aq(agVar, azVar);
    }

    private aq(@Nullable ag agVar, az azVar) {
        this.f4550a = agVar;
        this.f4551b = azVar;
    }
}
