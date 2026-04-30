package com.b.a.d.a;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: FileDescriptorAssetPathFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends a<ParcelFileDescriptor> {
    public d(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ParcelFileDescriptor a(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.a
    public void a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }
}
