package d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: CipherSuite.java */
/* JADX INFO: loaded from: classes3.dex */
public final class m {
    final String bj;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Comparator<String> f4656a = new n();
    private static final Map<String, m> bk = new TreeMap(f4656a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m f4657b = a("SSL_RSA_WITH_NULL_MD5", 1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final m f4658c = a("SSL_RSA_WITH_NULL_SHA", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final m f4659d = a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final m f4660e = a("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final m f4661f = a("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final m f4662g = a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
    public static final m h = a("SSL_RSA_WITH_DES_CBC_SHA", 9);
    public static final m i = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
    public static final m j = a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
    public static final m k = a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
    public static final m l = a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
    public static final m m = a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
    public static final m n = a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
    public static final m o = a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
    public static final m p = a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
    public static final m q = a("SSL_DH_anon_WITH_RC4_128_MD5", 24);
    public static final m r = a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
    public static final m s = a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
    public static final m t = a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
    public static final m u = a("TLS_KRB5_WITH_DES_CBC_SHA", 30);
    public static final m v = a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
    public static final m w = a("TLS_KRB5_WITH_RC4_128_SHA", 32);
    public static final m x = a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
    public static final m y = a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
    public static final m z = a("TLS_KRB5_WITH_RC4_128_MD5", 36);
    public static final m A = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
    public static final m B = a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
    public static final m C = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
    public static final m D = a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
    public static final m E = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
    public static final m F = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
    public static final m G = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
    public static final m H = a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
    public static final m I = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
    public static final m J = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
    public static final m K = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
    public static final m L = a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
    public static final m M = a("TLS_RSA_WITH_NULL_SHA256", 59);
    public static final m N = a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
    public static final m O = a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
    public static final m P = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
    public static final m Q = a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
    public static final m R = a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
    public static final m S = a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
    public static final m T = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
    public static final m U = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
    public static final m V = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
    public static final m W = a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
    public static final m X = a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
    public static final m Y = a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
    public static final m Z = a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
    public static final m aa = a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
    public static final m ab = a("TLS_PSK_WITH_RC4_128_SHA", 138);
    public static final m ac = a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
    public static final m ad = a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
    public static final m ae = a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
    public static final m af = a("TLS_RSA_WITH_SEED_CBC_SHA", 150);
    public static final m ag = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
    public static final m ah = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
    public static final m ai = a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
    public static final m aj = a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
    public static final m ak = a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
    public static final m al = a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
    public static final m am = a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
    public static final m an = a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
    public static final m ao = a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
    public static final m ap = a("TLS_FALLBACK_SCSV", 22016);
    public static final m aq = a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
    public static final m ar = a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
    public static final m as = a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
    public static final m at = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
    public static final m au = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
    public static final m av = a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
    public static final m aw = a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
    public static final m ax = a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
    public static final m ay = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
    public static final m az = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
    public static final m aA = a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
    public static final m aB = a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
    public static final m aC = a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
    public static final m aD = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
    public static final m aE = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
    public static final m aF = a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
    public static final m aG = a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
    public static final m aH = a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
    public static final m aI = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
    public static final m aJ = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
    public static final m aK = a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
    public static final m aL = a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
    public static final m aM = a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
    public static final m aN = a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
    public static final m aO = a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
    public static final m aP = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
    public static final m aQ = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
    public static final m aR = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
    public static final m aS = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
    public static final m aT = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
    public static final m aU = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
    public static final m aV = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
    public static final m aW = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
    public static final m aX = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
    public static final m aY = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
    public static final m aZ = a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
    public static final m ba = a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
    public static final m bb = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
    public static final m bc = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
    public static final m bd = a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
    public static final m be = a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
    public static final m bf = a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
    public static final m bg = a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
    public static final m bh = a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
    public static final m bi = a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    public static synchronized m a(String str) {
        m mVar;
        mVar = bk.get(str);
        if (mVar == null) {
            mVar = new m(str);
            bk.put(str, mVar);
        }
        return mVar;
    }

    static List<m> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private m(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.bj = str;
    }

    private static m a(String str, int i2) {
        return a(str);
    }

    public String toString() {
        return this.bj;
    }
}
