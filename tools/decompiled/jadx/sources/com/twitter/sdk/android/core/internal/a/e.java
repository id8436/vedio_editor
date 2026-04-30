package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.g;
import com.twitter.sdk.android.core.t;
import d.ar;
import d.at;
import d.j;
import d.k;

/* JADX INFO: compiled from: OkHttpClientHelper.java */
/* JADX INFO: loaded from: classes3.dex */
public class e {
    public static ar a(g gVar) {
        return a(new at(), gVar).a();
    }

    public static ar a(t<? extends TwitterAuthToken> tVar, TwitterAuthConfig twitterAuthConfig) {
        if (tVar == null) {
            throw new IllegalArgumentException("Session must not be null.");
        }
        return a(new at(), tVar, twitterAuthConfig).a();
    }

    public static ar a(ar arVar, g gVar) {
        if (arVar == null) {
            throw new IllegalArgumentException("HttpClient must not be null.");
        }
        return a(arVar.y(), gVar).a();
    }

    public static ar a(ar arVar, t<? extends TwitterAuthToken> tVar, TwitterAuthConfig twitterAuthConfig) {
        if (tVar == null) {
            throw new IllegalArgumentException("Session must not be null.");
        }
        if (arVar == null) {
            throw new IllegalArgumentException("HttpClient must not be null.");
        }
        return a(arVar.y(), tVar, twitterAuthConfig).a();
    }

    static at a(at atVar, g gVar) {
        return atVar.a(a()).a(new c(gVar)).a(new a(gVar)).b(new b());
    }

    static at a(at atVar, t<? extends TwitterAuthToken> tVar, TwitterAuthConfig twitterAuthConfig) {
        return atVar.a(a()).a(new d(tVar, twitterAuthConfig));
    }

    public static j a() {
        return new k().a("*.twitter.com", "sha1/I0PRSKJViZuUfUYaeX7ATP7RcLc=").a("*.twitter.com", "sha1/VRmyeKyygdftp6vBg5nDu2kEJLU=").a("*.twitter.com", "sha1/Eje6RRfurSkm/cHN/r7t8t7ZFFw=").a("*.twitter.com", "sha1/Wr7Fddyu87COJxlD/H8lDD32YeM=").a("*.twitter.com", "sha1/GiG0lStik84Ys2XsnA6TTLOB5tQ=").a("*.twitter.com", "sha1/IvGeLsbqzPxdI0b0wuj2xVTdXgc=").a("*.twitter.com", "sha1/7WYxNdMb1OymFMQp4xkGn5TBJlA=").a("*.twitter.com", "sha1/sYEIGhmkwJQf+uiVKMEkyZs0rMc=").a("*.twitter.com", "sha1/PANDaGiVHPNpKri0Jtq6j+ki5b0=").a("*.twitter.com", "sha1/u8I+KQuzKHcdrT6iTb30I70GsD0=").a("*.twitter.com", "sha1/wHqYaI2J+6sFZAwRfap9ZbjKzE4=").a("*.twitter.com", "sha1/cTg28gIxU0crbrplRqkQFVggBQk=").a("*.twitter.com", "sha1/sBmJ5+/7Sq/LFI9YRjl2IkFQ4bo=").a("*.twitter.com", "sha1/vb6nG6txV/nkddlU0rcngBqCJoI=").a("*.twitter.com", "sha1/nKmNAK90Dd2BgNITRaWLjy6UONY=").a("*.twitter.com", "sha1/h+hbY1PGI6MSjLD/u/VR/lmADiI=").a("*.twitter.com", "sha1/Xk9ThoXdT57KX9wNRW99UbHcm3s=").a("*.twitter.com", "sha1/1S4TwavjSdrotJWU73w4Q2BkZr0=").a("*.twitter.com", "sha1/gzF+YoVCU9bXeDGQ7JGQVumRueM=").a("*.twitter.com", "sha1/aDMOYTWFIVkpg6PI0tLhQG56s8E=").a("*.twitter.com", "sha1/Vv7zwhR9TtOIN/29MFI4cgHld40=").a();
    }
}
