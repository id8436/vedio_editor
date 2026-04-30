package d.a.e;

/* JADX INFO: compiled from: Huffman.java */
/* JADX INFO: loaded from: classes3.dex */
final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ah[] f4342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f4343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4344c;

    ah() {
        this.f4342a = new ah[256];
        this.f4343b = 0;
        this.f4344c = 0;
    }

    ah(int i, int i2) {
        this.f4342a = null;
        this.f4343b = i;
        int i3 = i2 & 7;
        this.f4344c = i3 == 0 ? 8 : i3;
    }
}
