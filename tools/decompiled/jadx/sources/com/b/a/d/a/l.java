package com.b.a.d.a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamLocalUriFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class l extends j<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final UriMatcher f779a = new UriMatcher(-1);

    static {
        f779a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f779a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f779a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f779a.addURI("com.android.contacts", "contacts/#", 3);
        f779a.addURI("com.android.contacts", "contacts/#/display_photo", 4);
    }

    public l(Context context, Uri uri) {
        super(context, uri);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.j
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public InputStream b(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        return a(uri, contentResolver, f779a.match(uri));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.d.a.j
    public void a(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    private InputStream a(Uri uri, ContentResolver contentResolver, int i) throws FileNotFoundException {
        switch (i) {
            case 1:
            case 3:
                if (i == 1 && (uri = ContactsContract.Contacts.lookupContact(contentResolver, uri)) == null) {
                    throw new FileNotFoundException("Contact cannot be found");
                }
                return a(contentResolver, uri);
            case 2:
            default:
                return contentResolver.openInputStream(uri);
        }
    }

    @TargetApi(14)
    private InputStream a(ContentResolver contentResolver, Uri uri) {
        return Build.VERSION.SDK_INT < 14 ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri) : ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }
}
