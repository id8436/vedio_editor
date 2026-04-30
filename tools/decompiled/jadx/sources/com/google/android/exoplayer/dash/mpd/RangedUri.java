package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class RangedUri {
    private final Uri baseUri;
    private int hashCode;
    public final long length;
    public final long start;
    private final String stringUri;

    public RangedUri(Uri uri, String str, long j, long j2) {
        Assertions.checkArgument((uri == null && str == null) ? false : true);
        this.baseUri = uri;
        this.stringUri = str;
        this.start = j;
        this.length = j2;
    }

    public Uri getUri() {
        return Util.getMergedUri(this.baseUri, this.stringUri);
    }

    public RangedUri attemptMerge(RangedUri rangedUri) {
        RangedUri rangedUri2 = null;
        if (rangedUri != null && getUri().equals(rangedUri.getUri())) {
            if (this.length != -1 && this.start + this.length == rangedUri.start) {
                rangedUri2 = new RangedUri(this.baseUri, this.stringUri, this.start, rangedUri.length != -1 ? this.length + rangedUri.length : -1L);
            } else if (rangedUri.length != -1 && rangedUri.start + rangedUri.length == this.start) {
                rangedUri2 = new RangedUri(this.baseUri, this.stringUri, rangedUri.start, this.length != -1 ? rangedUri.length + this.length : -1L);
            }
        }
        return rangedUri2;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((((int) this.start) + 527) * 31) + ((int) this.length)) * 31) + getUri().hashCode();
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RangedUri rangedUri = (RangedUri) obj;
        return this.start == rangedUri.start && this.length == rangedUri.length && getUri().equals(rangedUri.getUri());
    }
}
