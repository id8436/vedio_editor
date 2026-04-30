package com.b.a.d.c;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LazyHeaders.java */
/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f939a = System.getProperty("http.agent");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, List<l>> f940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f941c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, List<l>> f942d = f940b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f943e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f944f = true;

    static {
        HashMap map = new HashMap(2);
        if (!TextUtils.isEmpty(f939a)) {
            map.put("User-Agent", Collections.singletonList(new o(f939a)));
        }
        map.put("Accept-Encoding", Collections.singletonList(new o("identity")));
        f940b = Collections.unmodifiableMap(map);
    }

    public m a() {
        this.f941c = true;
        return new m(this.f942d);
    }
}
