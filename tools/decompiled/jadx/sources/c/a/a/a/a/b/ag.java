package c.a.a.a.a.b;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes.dex */
final class ag extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f143c;

    /* synthetic */ ag(ad adVar, af afVar, ae aeVar) {
        this(adVar, afVar);
    }

    private ag(ad adVar, af afVar) {
        this.f141a = adVar;
        this.f142b = adVar.b(afVar.f139b + 4);
        this.f143c = afVar.f140c;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        ad.b(bArr, "buffer");
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (this.f143c <= 0) {
            return -1;
        }
        if (i2 > this.f143c) {
            i2 = this.f143c;
        }
        this.f141a.b(this.f142b, bArr, i, i2);
        this.f142b = this.f141a.b(this.f142b + i2);
        this.f143c -= i2;
        return i2;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f143c != 0) {
            this.f141a.f130c.seek(this.f142b);
            int i = this.f141a.f130c.read();
            this.f142b = this.f141a.b(this.f142b + 1);
            this.f143c--;
            return i;
        }
        return -1;
    }
}
