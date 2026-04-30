package c.a.a.a.a.e;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
class f extends g<e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ InputStream f266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ OutputStream f267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ e f268c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f(e eVar, Closeable closeable, boolean z, InputStream inputStream, OutputStream outputStream) {
        super(closeable, z);
        this.f268c = eVar;
        this.f266a = inputStream;
        this.f267b = outputStream;
    }

    @Override // c.a.a.a.a.e.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e b() throws IOException {
        byte[] bArr = new byte[this.f268c.j];
        while (true) {
            int i = this.f266a.read(bArr);
            if (i != -1) {
                this.f267b.write(bArr, 0, i);
            } else {
                return this.f268c;
            }
        }
    }
}
