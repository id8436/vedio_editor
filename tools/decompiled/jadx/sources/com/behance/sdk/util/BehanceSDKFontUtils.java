package com.behance.sdk.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFontUtils {
    private static final String RAW = ".raw";
    private static final String TMP = "/tmp_";
    private static Map<BehanceSDKCustomFonts, Map<BehanceSDKFontStyles, Typeface>> fonts;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKFontUtils.class);

    enum BehanceSDKCustomFonts {
        ADOBE_CLEAN
    }

    enum BehanceSDKFontStyles {
        REGULAR,
        BOLD,
        LIGHT
    }

    private static void setCustomFont(Context context, View view, BehanceSDKCustomFonts behanceSDKCustomFonts, BehanceSDKFontStyles behanceSDKFontStyles) {
        if (fonts == null || fonts.isEmpty()) {
            initializeFonts(context);
        }
        if (view instanceof ViewGroup) {
            setCustomFont((ViewGroup) view, behanceSDKCustomFonts, behanceSDKFontStyles);
        } else if (view instanceof TextView) {
            setCustomFont((TextView) view, behanceSDKCustomFonts, behanceSDKFontStyles);
        }
    }

    private static void setCustomFont(Context context, TextPaint textPaint, BehanceSDKCustomFonts behanceSDKCustomFonts, BehanceSDKFontStyles behanceSDKFontStyles) {
        Typeface typeface;
        if (fonts == null || fonts.isEmpty()) {
            initializeFonts(context);
        }
        Map<BehanceSDKFontStyles, Typeface> map = fonts.get(behanceSDKCustomFonts);
        if (map != null && (typeface = map.get(behanceSDKFontStyles)) != null) {
            textPaint.setTypeface(typeface);
        }
    }

    private static void initializeFonts(Context context) {
        fonts = new HashMap();
        HashMap map = new HashMap();
        map.put(BehanceSDKFontStyles.REGULAR, Typeface.createFromAsset(context.getAssets(), "fonts/adobeclean_regular.ttf"));
        map.put(BehanceSDKFontStyles.BOLD, Typeface.createFromAsset(context.getAssets(), "fonts/adobeclean_bold.ttf"));
        map.put(BehanceSDKFontStyles.LIGHT, Typeface.createFromAsset(context.getAssets(), "fonts/adobeclean_light.ttf"));
        fonts.put(BehanceSDKCustomFonts.ADOBE_CLEAN, map);
    }

    private static void processsViewGroup(ViewGroup viewGroup, int i, BehanceSDKCustomFonts behanceSDKCustomFonts, BehanceSDKFontStyles behanceSDKFontStyles) {
        for (int i2 = 0; i2 < i; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof TextView) {
                setCustomFont((TextView) childAt, behanceSDKCustomFonts, behanceSDKFontStyles);
            } else if (childAt instanceof ViewGroup) {
                setCustomFont((ViewGroup) childAt, behanceSDKCustomFonts, behanceSDKFontStyles);
            }
        }
    }

    private static void setCustomFont(TextView textView, BehanceSDKCustomFonts behanceSDKCustomFonts, BehanceSDKFontStyles behanceSDKFontStyles) {
        Map<BehanceSDKFontStyles, Typeface> map;
        Typeface typeface;
        if (fonts != null && !fonts.isEmpty() && (map = fonts.get(behanceSDKCustomFonts)) != null && (typeface = map.get(behanceSDKFontStyles)) != null) {
            textView.setTypeface(typeface);
        }
    }

    private static void setCustomFont(ViewGroup viewGroup, BehanceSDKCustomFonts behanceSDKCustomFonts, BehanceSDKFontStyles behanceSDKFontStyles) {
        processsViewGroup(viewGroup, viewGroup.getChildCount(), behanceSDKCustomFonts, behanceSDKFontStyles);
    }

    public static Typeface getFontFromRes(Context context, int i, boolean z) {
        FileInputStream fileInputStream;
        InputStream inputStreamOpenRawResource;
        String resourceEntryName = context.getResources().getResourceEntryName(i);
        String str = context.getCacheDir() + TMP + resourceEntryName + RAW;
        try {
            fileInputStream = new FileInputStream(new File(str));
        } catch (FileNotFoundException e2) {
            logger.debug("Font " + resourceEntryName + " is not cached at location " + str, new Object[0]);
            fileInputStream = null;
        }
        if (fileInputStream != null) {
            try {
                logger.debug("Found cached font:" + resourceEntryName + " at location " + str, new Object[0]);
                fileInputStream.close();
            } catch (IOException e3) {
                logger.debug("Exception while closing the inputstream ", e3);
            }
            return Typeface.createFromFile(str);
        }
        try {
            inputStreamOpenRawResource = context.getResources().openRawResource(i);
        } catch (Resources.NotFoundException e4) {
            logger.error("Could not find font " + resourceEntryName + " in resources!", new Object[0]);
            inputStreamOpenRawResource = null;
        }
        try {
            byte[] bArr = new byte[inputStreamOpenRawResource.available()];
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
            while (true) {
                int i2 = inputStreamOpenRawResource.read(bArr);
                if (i2 <= 0) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, i2);
            }
            bufferedOutputStream.close();
            Typeface typefaceCreateFromFile = Typeface.createFromFile(str);
            if (z) {
                new File(str).delete();
            }
            logger.debug("Successfully loaded font.", new Object[0]);
            return typefaceCreateFromFile;
        } catch (IOException e5) {
            logger.error("Error reading in font!", e5);
            return null;
        }
    }

    @SuppressLint({"DefaultLocale"})
    public static void setAdobeCleanFont(Context context, View view, String str) {
        if (BehanceSDKFontStyles.BOLD.toString().toLowerCase().equals(str)) {
            setCustomFont(context, view, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.BOLD);
            return;
        }
        if (BehanceSDKFontStyles.REGULAR.toString().toLowerCase().equals(str)) {
            setCustomFont(context, view, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.REGULAR);
        } else if (BehanceSDKFontStyles.LIGHT.toString().toLowerCase().equals(str)) {
            setCustomFont(context, view, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.LIGHT);
        } else {
            setCustomFont(context, view, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.LIGHT);
        }
    }

    public static void setAdobeCleanFont(Context context, TextPaint textPaint, String str) {
        if (BehanceSDKFontStyles.BOLD.toString().toLowerCase().equals(str)) {
            setCustomFont(context, textPaint, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.BOLD);
            return;
        }
        if (BehanceSDKFontStyles.REGULAR.toString().toLowerCase().equals(str)) {
            setCustomFont(context, textPaint, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.REGULAR);
        } else if (BehanceSDKFontStyles.LIGHT.toString().toLowerCase().equals(str)) {
            setCustomFont(context, textPaint, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.LIGHT);
        } else {
            setCustomFont(context, textPaint, BehanceSDKCustomFonts.ADOBE_CLEAN, BehanceSDKFontStyles.LIGHT);
        }
    }
}
