package com.facebook.imagepipeline.k;

import com.facebook.imagepipeline.k.ah;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: NetworkFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public interface by<FETCH_STATE extends ah> {
    FETCH_STATE a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar);

    void a(FETCH_STATE fetch_state, int i);

    void a(FETCH_STATE fetch_state, bz bzVar);

    boolean a(FETCH_STATE fetch_state);

    @Nullable
    Map<String, String> b(FETCH_STATE fetch_state, int i);
}
