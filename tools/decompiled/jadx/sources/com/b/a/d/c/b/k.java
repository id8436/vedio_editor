package com.b.a.d.c.b;

import android.content.Context;
import android.net.Uri;
import com.b.a.d.c.s;
import com.b.a.d.c.t;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamStringLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements t<String, InputStream> {
    @Override // com.b.a.d.c.t
    public s<String, InputStream> a(Context context, com.b.a.d.c.c cVar) {
        return new j(cVar.a(Uri.class, InputStream.class));
    }

    @Override // com.b.a.d.c.t
    public void a() {
    }
}
