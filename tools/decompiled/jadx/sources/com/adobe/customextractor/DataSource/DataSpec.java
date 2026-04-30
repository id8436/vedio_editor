package com.adobe.customextractor.DataSource;

import android.net.Uri;
import com.adobe.customextractor.Assertions;

/* JADX INFO: loaded from: classes2.dex */
public class DataSpec {
    public static final int FLAG_ALLOW_GZIP = 1;
    public final long absoluteStreamPosition;
    public final int flags;
    public final String key;
    public final long length;
    public final long position;
    public final Uri uri;

    public DataSpec(Uri uri) {
        this(uri, 0);
    }

    public DataSpec(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public DataSpec(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public DataSpec(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public DataSpec(Uri uri, long j, long j2, long j3, String str, int i) {
        Assertions.checkArgument(j >= 0);
        Assertions.checkArgument(j2 >= 0);
        Assertions.checkArgument(j3 > 0 || j3 == -1);
        this.uri = uri;
        this.absoluteStreamPosition = j;
        this.position = j2;
        this.length = j3;
        this.key = str;
        this.flags = i;
    }

    public String toString() {
        return "DataSpec[" + this.uri + ", " + this.absoluteStreamPosition + ", " + this.position + ", " + this.length + ", " + this.key + ", " + this.flags + "]";
    }
}
