package com.k.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContactsPhotoRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class n extends bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final UriMatcher f3551a = new UriMatcher(-1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3552b;

    static {
        f3551a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f3551a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f3551a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f3551a.addURI("com.android.contacts", "contacts/#", 3);
        f3551a.addURI("com.android.contacts", "display_photo/#", 4);
    }

    n(Context context) {
        this.f3552b = context;
    }

    @Override // com.k.a.bb
    public boolean a(ax axVar) {
        Uri uri = axVar.f3490d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f3551a.match(axVar.f3490d) != -1;
    }

    @Override // com.k.a.bb
    public bc a(ax axVar, int i) throws IOException {
        InputStream inputStreamB = b(axVar);
        if (inputStreamB != null) {
            return new bc(inputStreamB, aq.DISK);
        }
        return null;
    }

    private InputStream b(ax axVar) throws IOException {
        ContentResolver contentResolver = this.f3552b.getContentResolver();
        Uri uriLookupContact = axVar.f3490d;
        switch (f3551a.match(uriLookupContact)) {
            case 1:
                uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uriLookupContact);
                if (uriLookupContact == null) {
                    return null;
                }
                break;
            case 2:
            case 4:
                return contentResolver.openInputStream(uriLookupContact);
            case 3:
                break;
            default:
                throw new IllegalStateException("Invalid uri: " + uriLookupContact);
        }
        if (Build.VERSION.SDK_INT < 14) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact);
        }
        return o.a(contentResolver, uriLookupContact);
    }
}
