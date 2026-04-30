package com.twitter.sdk.android.core.a;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: BindingValues.java */
/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f3822a;

    public c() {
        this(Collections.EMPTY_MAP);
    }

    public c(Map<String, Object> map) {
        this.f3822a = Collections.unmodifiableMap(map);
    }
}
