package c.a.a.a.a.b;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: QueueFile.java */
/* JADX INFO: loaded from: classes.dex */
class ae implements ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f135a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ StringBuilder f136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ad f137c;

    ae(ad adVar, StringBuilder sb) {
        this.f137c = adVar;
        this.f136b = sb;
    }

    @Override // c.a.a.a.a.b.ah
    public void read(InputStream inputStream, int i) throws IOException {
        if (this.f135a) {
            this.f135a = false;
        } else {
            this.f136b.append(", ");
        }
        this.f136b.append(i);
    }
}
