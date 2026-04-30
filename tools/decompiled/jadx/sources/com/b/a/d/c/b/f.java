package com.b.a.d.c.b;

import android.content.Context;
import android.net.Uri;
import com.b.a.d.c.s;
import com.b.a.d.c.t;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamFileLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements t<File, InputStream> {
    @Override // com.b.a.d.c.t
    public s<File, InputStream> a(Context context, com.b.a.d.c.c cVar) {
        return new e(cVar.a(Uri.class, InputStream.class));
    }

    @Override // com.b.a.d.c.t
    public void a() {
    }
}
