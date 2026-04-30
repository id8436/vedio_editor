package com.facebook.imagepipeline.k;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: LocalContentUriFetchProducer.java */
/* JADX INFO: loaded from: classes.dex */
public class at extends ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f2635a = {"_id", "_data"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ContentResolver f2636b;

    public at(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, ContentResolver contentResolver) {
        super(executor, ajVar);
        this.f2636b = contentResolver;
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException {
        com.facebook.imagepipeline.h.d dVarA;
        InputStream inputStreamOpenContactPhotoInputStream;
        Uri uriB = aVar.b();
        if (!com.facebook.d.m.f.d(uriB)) {
            return (!com.facebook.d.m.f.e(uriB) || (dVarA = a(uriB)) == null) ? b(this.f2636b.openInputStream(uriB), -1) : dVarA;
        }
        if (uriB.toString().endsWith("/photo")) {
            inputStreamOpenContactPhotoInputStream = this.f2636b.openInputStream(uriB);
        } else {
            inputStreamOpenContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.f2636b, uriB);
            if (inputStreamOpenContactPhotoInputStream == null) {
                throw new IOException("Contact photo does not exist: " + uriB);
            }
        }
        return b(inputStreamOpenContactPhotoInputStream, -1);
    }

    @Nullable
    private com.facebook.imagepipeline.h.d a(Uri uri) throws IOException {
        com.facebook.imagepipeline.h.d dVarB = null;
        Cursor cursorQuery = this.f2636b.query(uri, f2635a, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.getCount() != 0) {
                    cursorQuery.moveToFirst();
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                    if (string != null) {
                        dVarB = b(new FileInputStream(string), a(string));
                    }
                }
            } finally {
                cursorQuery.close();
            }
        }
        return dVarB;
    }

    private static int a(String str) {
        if (str == null) {
            return -1;
        }
        return (int) new File(str).length();
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected String a() {
        return "LocalContentUriFetchProducer";
    }
}
