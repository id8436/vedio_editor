package d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: TlsVersion.java */
/* JADX INFO: loaded from: classes3.dex */
public enum bj {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");


    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String f4631f;

    bj(String str) {
        this.f4631f = str;
    }

    public static bj a(String str) {
        switch (str) {
            case "TLSv1.3":
                return TLS_1_3;
            case "TLSv1.2":
                return TLS_1_2;
            case "TLSv1.1":
                return TLS_1_1;
            case "TLSv1":
                return TLS_1_0;
            case "SSLv3":
                return SSL_3_0;
            default:
                throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }
    }

    static List<bj> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }
}
