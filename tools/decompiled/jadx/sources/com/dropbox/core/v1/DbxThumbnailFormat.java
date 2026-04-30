package com.dropbox.core.v1;

import com.adobe.utility.AndroidMiscUtils;

/* JADX INFO: loaded from: classes2.dex */
public class DbxThumbnailFormat {
    public static final DbxThumbnailFormat JPEG = new DbxThumbnailFormat("jpeg");
    public static final DbxThumbnailFormat PNG = new DbxThumbnailFormat("png");
    public final String ident;

    public DbxThumbnailFormat(String str) {
        this.ident = str;
    }

    public static DbxThumbnailFormat bestForFileName(String str, DbxThumbnailFormat dbxThumbnailFormat) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".png") || lowerCase.endsWith(".gif")) {
            return PNG;
        }
        if (lowerCase.endsWith(".jpeg") || lowerCase.endsWith(AndroidMiscUtils.IMAGE_TYPE) || lowerCase.endsWith(".jpe")) {
            return JPEG;
        }
        return dbxThumbnailFormat;
    }
}
