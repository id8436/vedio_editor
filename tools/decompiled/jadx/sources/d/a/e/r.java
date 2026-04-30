package d.a.e;

import java.net.Socket;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Socket f4429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f4430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e.j f4431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e.i f4432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    s f4433e = s.f4436f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    aj f4434f = aj.f4348a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f4435g;

    public r(boolean z) {
        this.f4435g = z;
    }

    public r a(Socket socket, String str, e.j jVar, e.i iVar) {
        this.f4429a = socket;
        this.f4430b = str;
        this.f4431c = jVar;
        this.f4432d = iVar;
        return this;
    }

    public r a(s sVar) {
        this.f4433e = sVar;
        return this;
    }

    public j a() {
        return new j(this);
    }
}
