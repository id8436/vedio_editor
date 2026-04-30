package com.twitter.sdk.android.core.internal.b;

import android.content.Context;
import com.twitter.sdk.android.core.v;
import java.io.File;

/* JADX INFO: compiled from: FileStoreImpl.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3924a;

    public a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        this.f3924a = context;
    }

    public File a() {
        return a(this.f3924a.getFilesDir());
    }

    File a(File file) {
        if (file != null) {
            if (!file.exists() && !file.mkdirs()) {
                v.h().b("Twitter", "Couldn't create file");
            } else {
                return file;
            }
        } else {
            v.h().a("Twitter", "Null File");
        }
        return null;
    }
}
