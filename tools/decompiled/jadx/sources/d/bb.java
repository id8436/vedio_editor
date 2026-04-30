package d;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: classes.dex */
final class bb extends az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f4594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f4595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ byte[] f4596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ int f4597d;

    bb(an anVar, int i, byte[] bArr, int i2) {
        this.f4594a = anVar;
        this.f4595b = i;
        this.f4596c = bArr;
        this.f4597d = i2;
    }

    @Override // d.az
    @Nullable
    public an contentType() {
        return this.f4594a;
    }

    @Override // d.az
    public long contentLength() {
        return this.f4595b;
    }

    @Override // d.az
    public void writeTo(e.i iVar) throws IOException {
        iVar.c(this.f4596c, this.f4597d, this.f4595b);
    }
}
