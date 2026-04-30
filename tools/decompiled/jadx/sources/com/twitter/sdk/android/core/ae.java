package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

/* JADX INFO: compiled from: TwitterContext.java */
/* JADX INFO: loaded from: classes3.dex */
class ae extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3855b;

    public ae(Context context, String str, String str2) {
        super(context);
        this.f3855b = str;
        this.f3854a = str2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f3854a);
        file.mkdirs();
        return new File(file, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), cursorFactory);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str).getPath(), cursorFactory, databaseErrorHandler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        return new File(super.getFilesDir(), this.f3854a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f3854a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        return new File(super.getCacheDir(), this.f3854a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f3854a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return super.getSharedPreferences(this.f3855b + ":" + str, i);
    }
}
