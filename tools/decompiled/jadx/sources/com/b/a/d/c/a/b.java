package com.b.a.d.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.b.a.d.c.s;
import com.b.a.d.c.t;
import java.io.File;

/* JADX INFO: compiled from: FileDescriptorFileLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements t<File, ParcelFileDescriptor> {
    @Override // com.b.a.d.c.t
    public s<File, ParcelFileDescriptor> a(Context context, com.b.a.d.c.c cVar) {
        return new a(cVar.a(Uri.class, ParcelFileDescriptor.class));
    }

    @Override // com.b.a.d.c.t
    public void a() {
    }
}
