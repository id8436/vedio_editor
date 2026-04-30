package com.b.a.d.c.b;

import android.content.Context;
import android.net.Uri;
import com.b.a.d.c.s;
import com.b.a.d.c.x;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamUriLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class l extends x<InputStream> implements g<Uri> {
    public l(Context context, s<com.b.a.d.c.e, InputStream> sVar) {
        super(context, sVar);
    }

    @Override // com.b.a.d.c.x
    protected com.b.a.d.a.c<InputStream> a(Context context, Uri uri) {
        return new com.b.a.d.a.l(context, uri);
    }

    @Override // com.b.a.d.c.x
    protected com.b.a.d.a.c<InputStream> a(Context context, String str) {
        return new com.b.a.d.a.k(context.getApplicationContext().getAssets(), str);
    }
}
