package com.b.a.d.a;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamAssetPathFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class k extends a<InputStream> {
    public k(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public InputStream a(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.a
    public void a(InputStream inputStream) throws IOException {
        inputStream.close();
    }
}
