package d;

import javax.annotation.Nullable;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes3.dex */
public class ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ai f4586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f4587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ah f4588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    az f4589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f4590e;

    public ay() {
        this.f4587b = "GET";
        this.f4588c = new ah();
    }

    ay(ax axVar) {
        this.f4586a = axVar.f4580a;
        this.f4587b = axVar.f4581b;
        this.f4589d = axVar.f4583d;
        this.f4590e = axVar.f4584e;
        this.f4588c = axVar.f4582c.c();
    }

    public ay a(ai aiVar) {
        if (aiVar == null) {
            throw new NullPointerException("url == null");
        }
        this.f4586a = aiVar;
        return this;
    }

    public ay a(String str) {
        if (str == null) {
            throw new NullPointerException("url == null");
        }
        if (str.regionMatches(true, 0, "ws:", 0, 3)) {
            str = URIUtil.HTTP_COLON + str.substring(3);
        } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
            str = URIUtil.HTTPS_COLON + str.substring(4);
        }
        ai aiVarE = ai.e(str);
        if (aiVarE == null) {
            throw new IllegalArgumentException("unexpected url: " + str);
        }
        return a(aiVarE);
    }

    public ay a(String str, String str2) {
        this.f4588c.c(str, str2);
        return this;
    }

    public ay b(String str, String str2) {
        this.f4588c.a(str, str2);
        return this;
    }

    public ay b(String str) {
        this.f4588c.b(str);
        return this;
    }

    public ay a(ag agVar) {
        this.f4588c = agVar.c();
        return this;
    }

    public ay a() {
        return a("GET", (az) null);
    }

    public ay a(az azVar) {
        return a("POST", azVar);
    }

    public ay b(az azVar) {
        return a("PUT", azVar);
    }

    public ay a(String str, @Nullable az azVar) {
        if (str == null) {
            throw new NullPointerException("method == null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("method.length() == 0");
        }
        if (azVar != null && !d.a.c.h.c(str)) {
            throw new IllegalArgumentException("method " + str + " must not have a request body.");
        }
        if (azVar == null && d.a.c.h.b(str)) {
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }
        this.f4587b = str;
        this.f4589d = azVar;
        return this;
    }

    public ax b() {
        if (this.f4586a == null) {
            throw new IllegalStateException("url == null");
        }
        return new ax(this);
    }
}
