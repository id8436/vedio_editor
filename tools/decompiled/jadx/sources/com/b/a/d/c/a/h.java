package com.b.a.d.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.b.a.d.c.s;
import com.b.a.d.c.x;

/* JADX INFO: compiled from: FileDescriptorUriLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends x<ParcelFileDescriptor> implements c<Uri> {
    public h(Context context, s<com.b.a.d.c.e, ParcelFileDescriptor> sVar) {
        super(context, sVar);
    }

    @Override // com.b.a.d.c.x
    protected com.b.a.d.a.c<ParcelFileDescriptor> a(Context context, Uri uri) {
        return new com.b.a.d.a.e(context, uri);
    }

    @Override // com.b.a.d.c.x
    protected com.b.a.d.a.c<ParcelFileDescriptor> a(Context context, String str) {
        return new com.b.a.d.a.d(context.getApplicationContext().getAssets(), str);
    }
}
