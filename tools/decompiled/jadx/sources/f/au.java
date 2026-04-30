package f;

import java.io.IOException;

/* JADX INFO: compiled from: RequestBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
class au extends d.az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.az f4804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.an f4805b;

    au(d.az azVar, d.an anVar) {
        this.f4804a = azVar;
        this.f4805b = anVar;
    }

    @Override // d.az
    public d.an contentType() {
        return this.f4805b;
    }

    @Override // d.az
    public long contentLength() throws IOException {
        return this.f4804a.contentLength();
    }

    @Override // d.az
    public void writeTo(e.i iVar) throws IOException {
        this.f4804a.writeTo(iVar);
    }
}
