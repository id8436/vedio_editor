package com.adobe.utility;

import android.content.Context;
import android.graphics.Typeface;
import com.h.a.a;
import com.h.a.c;

/* JADX INFO: loaded from: classes.dex */
public class FontUtils {
    private static FontUtils mInstance = null;
    private a adobeCleanLight;
    private Typeface adobeCleanNormalTypeface;
    private a adobeCleanRegular;

    private FontUtils() {
    }

    public static FontUtils getInstance() {
        if (mInstance == null) {
            mInstance = new FontUtils();
        }
        return mInstance;
    }

    public void initializeTypefaceCollections(Context context) {
        this.adobeCleanNormalTypeface = Typeface.createFromAsset(context.getAssets(), "fonts/AdobeClean-Light.otf");
        this.adobeCleanLight = new c().a(0, this.adobeCleanNormalTypeface).a(1, Typeface.createFromAsset(context.getAssets(), "fonts/AdobeClean-Bold.otf")).a(2, Typeface.createFromAsset(context.getAssets(), "fonts/AdobeClean-Italic.otf")).a();
        this.adobeCleanRegular = new c().a(0, Typeface.createFromAsset(context.getAssets(), "fonts/AdobeClean-Regular.otf")).a();
    }

    public a getAdobeCleanLightTypefaceCollection() {
        return this.adobeCleanLight;
    }

    public a getAdobeCleanRegularTypefaceCollection() {
        return this.adobeCleanRegular;
    }

    public Typeface getAdobeCleanTypeface() {
        return this.adobeCleanNormalTypeface;
    }
}
