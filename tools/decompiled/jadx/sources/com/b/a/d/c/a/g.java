package com.b.a.d.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.b.a.d.c.s;
import com.b.a.d.c.t;

/* JADX INFO: compiled from: FileDescriptorStringLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements t<String, ParcelFileDescriptor> {
    @Override // com.b.a.d.c.t
    public s<String, ParcelFileDescriptor> a(Context context, com.b.a.d.c.c cVar) {
        return new f(cVar.a(Uri.class, ParcelFileDescriptor.class));
    }

    @Override // com.b.a.d.c.t
    public void a() {
    }
}
