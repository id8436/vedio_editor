package com.k.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;

/* JADX INFO: compiled from: MediaStoreRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class ad extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f3431b = {"orientation"};

    ad(Context context) {
        super(context);
    }

    @Override // com.k.a.p, com.k.a.bb
    public boolean a(ax axVar) {
        Uri uri = axVar.f3490d;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    @Override // com.k.a.p, com.k.a.bb
    public bc a(ax axVar, int i) throws Throwable {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.f3553a.getContentResolver();
        int iA = a(contentResolver, axVar.f3490d);
        String type = contentResolver.getType(axVar.f3490d);
        boolean z = type != null && type.startsWith("video/");
        if (axVar.d()) {
            ae aeVarA = a(axVar.h, axVar.i);
            if (!z && aeVarA == ae.FULL) {
                return new bc(null, b(axVar), aq.DISK, iA);
            }
            long id = ContentUris.parseId(axVar.f3490d);
            BitmapFactory.Options optionsC = c(axVar);
            optionsC.inJustDecodeBounds = true;
            a(axVar.h, axVar.i, aeVarA.f3437e, aeVarA.f3438f, optionsC, axVar);
            if (z) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, id, aeVarA == ae.FULL ? 1 : aeVarA.f3436d, optionsC);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, id, aeVarA.f3436d, optionsC);
            }
            if (thumbnail != null) {
                return new bc(thumbnail, null, aq.DISK, iA);
            }
        }
        return new bc(null, b(axVar), aq.DISK, iA);
    }

    static ae a(int i, int i2) {
        if (i <= ae.MICRO.f3437e && i2 <= ae.MICRO.f3438f) {
            return ae.MICRO;
        }
        if (i <= ae.MINI.f3437e && i2 <= ae.MINI.f3438f) {
            return ae.MINI;
        }
        return ae.FULL;
    }

    static int a(ContentResolver contentResolver, Uri uri) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        try {
            cursorQuery = contentResolver.query(uri, f3431b, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        int i = cursorQuery.getInt(0);
                        if (cursorQuery == null) {
                            return i;
                        }
                        cursorQuery.close();
                        return i;
                    }
                } catch (RuntimeException e2) {
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (RuntimeException e3) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }
}
