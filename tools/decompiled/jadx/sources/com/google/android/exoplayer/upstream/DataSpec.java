package com.google.android.exoplayer.upstream;

import android.net.Uri;
import com.google.android.exoplayer.util.Assertions;

/* JADX INFO: loaded from: classes2.dex */
public final class DataSpec {
    public final long absoluteStreamPosition;
    public final String key;
    public final long length;
    public final long position;
    public final Uri uri;
    public final boolean uriIsFullStream;

    public DataSpec(Uri uri) {
        this(uri, 0L, -1L, null);
    }

    public DataSpec(Uri uri, long j, long j2, String str) {
        this(uri, j, j2, str, j, true);
    }

    public DataSpec(Uri uri, long j, long j2, String str, long j3) {
        this(uri, j, j2, str, j3, false);
    }

    public DataSpec(Uri uri, long j, long j2, String str, long j3, boolean z) {
        Assertions.checkArgument(j >= 0);
        Assertions.checkArgument(j3 >= 0);
        Assertions.checkArgument(j2 > 0 || j2 == -1);
        Assertions.checkArgument(j == j3 || !z);
        this.uri = uri;
        this.uriIsFullStream = z;
        this.absoluteStreamPosition = j;
        this.position = j3;
        this.length = j2;
        this.key = str;
    }

    public String toString() {
        return "DataSpec[" + this.uri + ", " + this.uriIsFullStream + ", " + this.absoluteStreamPosition + ", " + this.position + ", " + this.length + ", " + this.key + "]";
    }
}
