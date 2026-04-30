package com.facebook.imagepipeline.k;

import com.facebook.imagepipeline.k.ah;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: BaseNetworkFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class e<FETCH_STATE extends ah> implements by<FETCH_STATE> {
    @Override // com.facebook.imagepipeline.k.by
    public boolean a(FETCH_STATE fetch_state) {
        return true;
    }

    @Override // com.facebook.imagepipeline.k.by
    public void a(FETCH_STATE fetch_state, int i) {
    }

    @Override // com.facebook.imagepipeline.k.by
    @Nullable
    public Map<String, String> b(FETCH_STATE fetch_state, int i) {
        return null;
    }
}
