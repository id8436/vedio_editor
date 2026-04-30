package d;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: classes.dex */
final class ba extends az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f4592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ e.k f4593b;

    ba(an anVar, e.k kVar) {
        this.f4592a = anVar;
        this.f4593b = kVar;
    }

    @Override // d.az
    @Nullable
    public an contentType() {
        return this.f4592a;
    }

    @Override // d.az
    public long contentLength() throws IOException {
        return this.f4593b.g();
    }

    @Override // d.az
    public void writeTo(e.i iVar) throws IOException {
        iVar.b(this.f4593b);
    }
}
