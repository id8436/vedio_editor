package com.dropbox.core.stone;

import com.d.a.a.g;
import com.d.a.a.k;
import com.d.a.a.o;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CompositeSerializer<T> extends StoneSerializer<T> {
    protected static final String TAG_FIELD = ".tag";

    protected static boolean hasTag(k kVar) throws IOException {
        return kVar.c() == o.FIELD_NAME && TAG_FIELD.equals(kVar.d());
    }

    protected static String readTag(k kVar) throws IOException {
        if (!hasTag(kVar)) {
            return null;
        }
        kVar.a();
        String stringValue = getStringValue(kVar);
        kVar.a();
        return stringValue;
    }

    protected void writeTag(String str, g gVar) throws IOException {
        if (str != null) {
            gVar.a(TAG_FIELD, str);
        }
    }
}
