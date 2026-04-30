package com.facebook.g;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;

/* JADX INFO: compiled from: DefaultImageFormats.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f2245a = new c("JPEG", "jpeg");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f2246b = new c("PNG", "png");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f2247c = new c("GIF", AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f2248d = new c("BMP", AdobeAssetFileExtensions.kAdobeFileExtensionTypeBMP);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f2249e = new c("WEBP_SIMPLE", "webp");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f2250f = new c("WEBP_LOSSLESS", "webp");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f2251g = new c("WEBP_EXTENDED", "webp");
    public static final c h = new c("WEBP_EXTENDED_WITH_ALPHA", "webp");
    public static final c i = new c("WEBP_ANIMATED", "webp");

    public static boolean a(c cVar) {
        return b(cVar) || cVar == i;
    }

    public static boolean b(c cVar) {
        return cVar == f2249e || cVar == f2250f || cVar == f2251g || cVar == h;
    }
}
