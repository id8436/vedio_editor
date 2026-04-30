package d;

import java.io.File;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: classes.dex */
final class bc extends az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f4598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ File f4599b;

    bc(an anVar, File file) {
        this.f4598a = anVar;
        this.f4599b = file;
    }

    @Override // d.az
    @Nullable
    public an contentType() {
        return this.f4598a;
    }

    @Override // d.az
    public long contentLength() {
        return this.f4599b.length();
    }

    @Override // d.az
    public void writeTo(e.i iVar) throws IOException {
        e.ab abVarA = null;
        try {
            abVarA = e.q.a(this.f4599b);
            iVar.a(abVarA);
        } finally {
            d.a.c.a(abVarA);
        }
    }
}
