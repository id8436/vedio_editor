package com.k.a;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import java.io.IOException;

/* JADX INFO: compiled from: FileRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class z extends p {
    z(Context context) {
        super(context);
    }

    @Override // com.k.a.p, com.k.a.bb
    public boolean a(ax axVar) {
        return "file".equals(axVar.f3490d.getScheme());
    }

    @Override // com.k.a.p, com.k.a.bb
    public bc a(ax axVar, int i) throws IOException {
        return new bc(null, b(axVar), aq.DISK, a(axVar.f3490d));
    }

    static int a(Uri uri) throws IOException {
        switch (new ExifInterface(uri.getPath()).getAttributeInt("Orientation", 1)) {
            case 3:
                return 180;
            case 4:
            case 5:
            case 7:
            default:
                return 0;
            case 6:
                return 90;
            case 8:
                return 270;
        }
    }
}
