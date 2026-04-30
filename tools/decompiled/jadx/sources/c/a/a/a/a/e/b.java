package c.a.a.a.a.e;

import c.a.a.a.t;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: DefaultHttpRequestFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SSLSocketFactory f251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f252d;

    public b() {
        this(new c.a.a.a.e());
    }

    public b(t tVar) {
        this.f249a = tVar;
    }

    @Override // c.a.a.a.a.e.m
    public void a(o oVar) {
        if (this.f250b != oVar) {
            this.f250b = oVar;
            a();
        }
    }

    private synchronized void a() {
        this.f252d = false;
        this.f251c = null;
    }

    @Override // c.a.a.a.a.e.m
    public e a(d dVar, String str) {
        return a(dVar, str, Collections.emptyMap());
    }

    @Override // c.a.a.a.a.e.m
    public e a(d dVar, String str, Map<String, String> map) {
        e eVarE;
        SSLSocketFactory sSLSocketFactoryB;
        switch (dVar) {
            case GET:
                eVarE = e.a((CharSequence) str, (Map<?, ?>) map, true);
                break;
            case POST:
                eVarE = e.b((CharSequence) str, (Map<?, ?>) map, true);
                break;
            case PUT:
                eVarE = e.d((CharSequence) str);
                break;
            case DELETE:
                eVarE = e.e((CharSequence) str);
                break;
            default:
                throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (a(str) && this.f250b != null && (sSLSocketFactoryB = b()) != null) {
            ((HttpsURLConnection) eVarE.a()).setSSLSocketFactory(sSLSocketFactoryB);
        }
        return eVarE;
    }

    private boolean a(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("https");
    }

    private synchronized SSLSocketFactory b() {
        if (this.f251c == null && !this.f252d) {
            this.f251c = c();
        }
        return this.f251c;
    }

    private synchronized SSLSocketFactory c() {
        SSLSocketFactory sSLSocketFactoryA;
        this.f252d = true;
        try {
            sSLSocketFactoryA = n.a(this.f250b);
            this.f249a.a("Fabric", "Custom SSL pinning enabled");
        } catch (Exception e2) {
            this.f249a.e("Fabric", "Exception while validating pinned certs", e2);
            sSLSocketFactoryA = null;
        }
        return sSLSocketFactoryA;
    }
}
