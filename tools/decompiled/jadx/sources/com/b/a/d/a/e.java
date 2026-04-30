package com.b.a.d.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: FileDescriptorLocalUriFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends j<ParcelFileDescriptor> {
    public e(Context context, Uri uri) {
        super(context, uri);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.j
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ParcelFileDescriptor b(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        return contentResolver.openAssetFileDescriptor(uri, "r").getParcelFileDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.j
    public void a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }
}
