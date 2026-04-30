package com.k.a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.InputStream;

/* JADX INFO: compiled from: ContactsPhotoRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
@TargetApi(14)
class o {
    static InputStream a(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }
}
