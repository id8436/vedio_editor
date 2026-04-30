package com.b.a.d.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.b.a.d.c.s;
import com.b.a.d.c.t;

/* JADX INFO: compiled from: FileDescriptorResourceLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements t<Integer, ParcelFileDescriptor> {
    @Override // com.b.a.d.c.t
    public s<Integer, ParcelFileDescriptor> a(Context context, com.b.a.d.c.c cVar) {
        return new d(context, cVar.a(Uri.class, ParcelFileDescriptor.class));
    }

    @Override // com.b.a.d.c.t
    public void a() {
    }
}
