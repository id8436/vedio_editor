package d.a.b;

import d.al;
import d.am;
import d.ar;
import d.ax;
import d.bd;
import java.io.IOException;

/* JADX INFO: compiled from: ConnectInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ar f4222a;

    public a(ar arVar) {
        this.f4222a = arVar;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        d.a.c.i iVar = (d.a.c.i) amVar;
        ax axVarA = iVar.a();
        h hVarF = iVar.f();
        return iVar.a(axVarA, hVarF, hVarF.a(this.f4222a, amVar, !axVarA.b().equals("GET")), hVarF.b());
    }
}
