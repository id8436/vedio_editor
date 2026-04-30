package d;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.io.IOException;
import java.util.List;
import javax.annotation.Nullable;
import org.mortbay.jetty.HttpTokens;

/* JADX INFO: compiled from: MultipartBody.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ao extends az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final an f4540a = an.a("multipart/mixed");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final an f4541b = an.a("multipart/alternative");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final an f4542c = an.a("multipart/digest");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final an f4543d = an.a("multipart/parallel");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final an f4544e = an.a("multipart/form-data");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f4545f = {HttpTokens.COLON, 32};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f4546g = {13, 10};
    private static final byte[] h = {ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.CARRIAGE_RETURN};
    private final e.k i;
    private final an j;
    private final an k;
    private final List<aq> l;
    private long m = -1;

    ao(e.k kVar, an anVar, List<aq> list) {
        this.i = kVar;
        this.j = anVar;
        this.k = an.a(anVar + "; boundary=" + kVar.a());
        this.l = d.a.c.a(list);
    }

    @Override // d.az
    public an contentType() {
        return this.k;
    }

    @Override // d.az
    public long contentLength() throws IOException {
        long j = this.m;
        if (j != -1) {
            return j;
        }
        long jA = a(null, true);
        this.m = jA;
        return jA;
    }

    @Override // d.az
    public void writeTo(e.i iVar) throws IOException {
        a(iVar, false);
    }

    private long a(@Nullable e.i iVar, boolean z) throws IOException {
        e.f fVar;
        long j = 0;
        if (!z) {
            fVar = null;
        } else {
            e.f fVar2 = new e.f();
            fVar = fVar2;
            iVar = fVar2;
        }
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            aq aqVar = this.l.get(i);
            ag agVar = aqVar.f4550a;
            az azVar = aqVar.f4551b;
            iVar.c(h);
            iVar.b(this.i);
            iVar.c(f4546g);
            if (agVar != null) {
                int iA = agVar.a();
                for (int i2 = 0; i2 < iA; i2++) {
                    iVar.b(agVar.a(i2)).c(f4545f).b(agVar.b(i2)).c(f4546g);
                }
            }
            an anVarContentType = azVar.contentType();
            if (anVarContentType != null) {
                iVar.b("Content-Type: ").b(anVarContentType.toString()).c(f4546g);
            }
            long jContentLength = azVar.contentLength();
            if (jContentLength != -1) {
                iVar.b("Content-Length: ").l(jContentLength).c(f4546g);
            } else if (z) {
                fVar.s();
                return -1L;
            }
            iVar.c(f4546g);
            if (z) {
                j += jContentLength;
            } else {
                azVar.writeTo(iVar);
            }
            iVar.c(f4546g);
        }
        iVar.c(h);
        iVar.b(this.i);
        iVar.c(h);
        iVar.c(f4546g);
        if (z) {
            long jB = j + fVar.b();
            fVar.s();
            return jB;
        }
        return j;
    }
}
