package com.dropbox.core.v1;

import com.adobe.premiereclip.project.sequence.Sequence;

/* JADX INFO: loaded from: classes2.dex */
public class DbxThumbnailSize {
    public final int height;
    public final String ident;
    public final int width;
    public static final DbxThumbnailSize w32h32 = new DbxThumbnailSize("xs", 32, 32);
    public static final DbxThumbnailSize w64h64 = new DbxThumbnailSize("s", 64, 64);
    public static final DbxThumbnailSize w128h128 = new DbxThumbnailSize("m", 128, 128);
    public static final DbxThumbnailSize w640h480 = new DbxThumbnailSize("l", Sequence.PLAYBACK_WIDTH, 480);
    public static final DbxThumbnailSize w1024h768 = new DbxThumbnailSize("xl", 1024, 768);

    public DbxThumbnailSize(String str, int i, int i2) {
        this.ident = str;
        this.width = i;
        this.height = i2;
    }

    public String toString() {
        return "(" + this.ident + " " + this.width + "x" + this.height + ")";
    }
}
