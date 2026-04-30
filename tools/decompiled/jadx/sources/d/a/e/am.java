package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: StreamResetException.java */
/* JADX INFO: loaded from: classes3.dex */
public final class am extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f4351a;

    public am(b bVar) {
        super("stream was reset: " + bVar);
        this.f4351a = bVar;
    }
}
