package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat;
import android.support.v4.graphics.TypefaceCompat;
import android.support.v4.provider.FontsContractCompat;
import android.support.v7.widget.ActivityChooserView;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class TypefaceCompatBaseImpl implements TypefaceCompat.TypefaceCompatImpl {
    private static final String CACHE_FILE_PREFIX = "cached_font_";
    private static final String TAG = "TypefaceCompatBaseImpl";

    interface StyleExtractor<T> {
        int getWeight(T t);

        boolean isItalic(T t);
    }

    TypefaceCompatBaseImpl() {
    }

    private static <T> T findBestFont(T[] tArr, int i, StyleExtractor<T> styleExtractor) {
        T t;
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t2 = null;
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int length = tArr.length;
        int i4 = 0;
        while (i4 < length) {
            T t3 = tArr[i4];
            int iAbs = (styleExtractor.isItalic(t3) == z ? 0 : 1) + (Math.abs(styleExtractor.getWeight(t3) - i2) * 2);
            if (t2 == null || i3 > iAbs) {
                i3 = iAbs;
                t = t3;
            } else {
                t = t2;
            }
            i4++;
            t2 = t;
        }
        return t2;
    }

    protected FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) findBestFont(fontInfoArr, i, new StyleExtractor<FontsContractCompat.FontInfo>() { // from class: android.support.v4.graphics.TypefaceCompatBaseImpl.1
            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.getWeight();
            }

            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.isItalic();
            }
        });
    }

    protected Typeface createFromInputStream(Context context, InputStream inputStream) {
        Typeface typefaceCreateFromFile = null;
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                    typefaceCreateFromFile = Typeface.createFromFile(tempFile.getPath());
                }
            } catch (RuntimeException e2) {
            } finally {
                tempFile.delete();
            }
        }
        return typefaceCreateFromFile;
    }

    @Override // android.support.v4.graphics.TypefaceCompat.TypefaceCompatImpl
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Throwable th;
        Typeface typefaceCreateFromInputStream = null;
        if (fontInfoArr.length >= 1) {
            try {
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(findBestInfo(fontInfoArr, i).getUri());
            } catch (IOException e2) {
                inputStreamOpenInputStream = null;
            } catch (Throwable th2) {
                inputStreamOpenInputStream = null;
                th = th2;
            }
            try {
                typefaceCreateFromInputStream = createFromInputStream(context, inputStreamOpenInputStream);
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
            } catch (IOException e3) {
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
            } catch (Throwable th3) {
                th = th3;
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
                throw th;
            }
        }
        return typefaceCreateFromInputStream;
    }

    private FontResourcesParserCompat.FontFileResourceEntry findBestEntry(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i) {
        return (FontResourcesParserCompat.FontFileResourceEntry) findBestFont(fontFamilyFilesResourceEntry.getEntries(), i, new StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry>() { // from class: android.support.v4.graphics.TypefaceCompatBaseImpl.2
            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.getWeight();
            }

            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.isItalic();
            }
        });
    }

    @Override // android.support.v4.graphics.TypefaceCompat.TypefaceCompatImpl
    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntryFindBestEntry = findBestEntry(fontFamilyFilesResourceEntry, i);
        if (fontFileResourceEntryFindBestEntry == null) {
            return null;
        }
        return TypefaceCompat.createFromResourcesFontFile(context, resources, fontFileResourceEntryFindBestEntry.getResourceId(), fontFileResourceEntryFindBestEntry.getFileName(), i);
    }

    @Override // android.support.v4.graphics.TypefaceCompat.TypefaceCompatImpl
    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceCreateFromFile = null;
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                    typefaceCreateFromFile = Typeface.createFromFile(tempFile.getPath());
                }
            } catch (RuntimeException e2) {
            } finally {
                tempFile.delete();
            }
        }
        return typefaceCreateFromFile;
    }
}
