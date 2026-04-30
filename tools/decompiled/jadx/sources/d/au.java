package d;

import java.io.IOException;

/* JADX INFO: compiled from: Protocol.java */
/* JADX INFO: loaded from: classes3.dex */
public enum au {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4571e;

    au(String str) {
        this.f4571e = str;
    }

    public static au a(String str) throws IOException {
        if (str.equals(HTTP_1_0.f4571e)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.f4571e)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.f4571e)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.f4571e)) {
            return SPDY_3;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f4571e;
    }
}
