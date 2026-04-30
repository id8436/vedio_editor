package com.adobe.premiereclip.media;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Log;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.util.FileOps;
import com.adobe.utility.AndroidMiscUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import org.apache.commons.io.IOUtils;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class TitleImage {
    public static final String DEFAULT_BACKGROUND_COLOR = "#000000";
    public static final String DEFAULT_TEXT_COLOR = "#ffffff";
    public static final int HEIGHT = 1080;
    public static final int WIDTH = 1920;
    private String adobeId;
    private String assetId;
    private String backgroundColor;
    private String filepath;
    private ArrayList<Integer> lineHeightTable;
    private String projectId;
    private String textColor;
    private String titleText;
    public static final String DEFAULT_TITLE_TEXT = PremiereClipApplication.getContext().getResources().getString(R.string.title_image_default_title);
    private static final String STORAGE_DIRECTORY = PremiereClipApplication.getContext().getApplicationInfo().dataDir;
    private static float SCALE = PremiereClipApplication.getContext().getResources().getDisplayMetrics().density;

    public TitleImage(String str, String str2, String str3, String str4, String str5) {
        this.titleText = str3 == null ? DEFAULT_TITLE_TEXT : str3;
        this.textColor = str4 == null ? DEFAULT_TEXT_COLOR : str4;
        this.backgroundColor = str5 == null ? DEFAULT_BACKGROUND_COLOR : str5;
        this.adobeId = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        this.projectId = str2;
        this.assetId = str;
        constructLineHeightTable();
        update();
    }

    public TitleImage copy() {
        return new TitleImage(UUID.randomUUID().toString(), this.projectId, this.titleText, this.textColor, this.backgroundColor);
    }

    public String makeFilePath() {
        this.filepath = STORAGE_DIRECTORY + File.separator + "appSavedItems" + File.separator + "Projects" + File.separator + "v01" + File.separator + this.adobeId + File.separator + this.projectId;
        new File(this.filepath).mkdirs();
        this.filepath += File.separator + "TI" + System.currentTimeMillis() + AndroidMiscUtils.IMAGE_TYPE;
        return this.filepath;
    }

    public String getTitleText() {
        return this.titleText;
    }

    public void setTitleText(String str) {
        this.titleText = str;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public void setTextColor(String str) {
        this.textColor = str;
    }

    public String getBackgroundColor() {
        return this.backgroundColor;
    }

    public void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public String getFilePath() {
        return this.filepath;
    }

    public ClipAsset getClipAsset() {
        ClipAsset clipAsset = new ClipAsset();
        clipAsset.clipAssetID = this.assetId;
        clipAsset.assetType = "title";
        String str = this.filepath;
        clipAsset.filePath = str;
        clipAsset.originalPath = str;
        clipAsset.originalAssetDate = DCXUtils.getFormattedDate(new Date(new File(this.filepath).lastModified()));
        clipAsset.width = 1920;
        clipAsset.height = 1080;
        clipAsset.rotation = Rotation.NORMAL;
        clipAsset.titleText = this.titleText;
        clipAsset.textColor = this.textColor;
        clipAsset.backgroundColor = this.backgroundColor;
        return clipAsset;
    }

    private void constructLineHeightTable() {
        this.lineHeightTable = new ArrayList<>();
        Paint paint = new Paint(1);
        Rect rect = new Rect();
        for (int i = 1; i <= 24; i++) {
            paint.setTextSize((int) (i * SCALE));
            paint.getTextBounds("Ajy", 0, "Ajy".length(), rect);
            int iRound = Math.round(rect.height() * 1.5f);
            this.lineHeightTable.add(Integer.valueOf(iRound));
            Log.d(DCXProjectKeys.kDCXKey_MediaRef_componentTitle_name, "i = " + i + ", height = " + iRound);
        }
    }

    private int calcFontSizeFromLineCount(int i, int i2) {
        int i3 = i2 / i;
        for (int size = this.lineHeightTable.size() - 1; size >= 0; size--) {
            if (i3 > this.lineHeightTable.get(size).intValue()) {
                return size + 1;
            }
        }
        return 0;
    }

    private int wrapLine(ArrayList<String> arrayList, int i, int i2, Paint paint, boolean z) {
        int iIntValue;
        int i3 = 0;
        String str = arrayList.get(i2);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < str.length(); i4++) {
            if (Character.isSpaceChar(Character.valueOf(str.charAt(i4)).charValue())) {
                arrayList3.add(Integer.valueOf(i4));
            }
        }
        Rect rect = new Rect();
        int iIntValue2 = -1;
        int i5 = 0;
        while (i3 < arrayList3.size()) {
            paint.getTextBounds(str, i5, ((Integer) arrayList3.get(i3)).intValue(), rect);
            if (rect.width() > i) {
                if (iIntValue2 == -1) {
                    iIntValue2 = ((Integer) arrayList3.get(i3)).intValue() - 1;
                    while (true) {
                        if (iIntValue2 <= i5) {
                            iIntValue2 = i5;
                            break;
                        }
                        paint.getTextBounds(str, i5, iIntValue2, rect);
                        if (rect.width() < i) {
                            arrayList2.add(str.substring(i5, iIntValue2));
                            break;
                        }
                        iIntValue2--;
                    }
                } else {
                    arrayList2.add(str.substring(i5, iIntValue2));
                }
                i3--;
                iIntValue = -1;
            } else {
                iIntValue = ((Integer) arrayList3.get(i3)).intValue();
                iIntValue2 = i5;
            }
            i3++;
            i5 = iIntValue2;
            iIntValue2 = iIntValue;
        }
        while (true) {
            if (i5 >= str.length()) {
                break;
            }
            paint.getTextBounds(str, i5, str.length(), rect);
            if (rect.width() > i) {
                if (iIntValue2 != -1) {
                    arrayList2.add(str.substring(i5, iIntValue2));
                    i5 = iIntValue2;
                    iIntValue2 = -1;
                } else {
                    int length = str.length();
                    while (true) {
                        if (length > i5) {
                            paint.getTextBounds(str, i5, length, rect);
                            if (rect.width() < i) {
                                arrayList2.add(str.substring(i5, length));
                                i5 = length;
                                break;
                            }
                            length--;
                        }
                    }
                }
            } else {
                arrayList2.add(str.substring(i5));
                break;
            }
        }
        if (z && arrayList2.size() > 1) {
            arrayList.remove(i2);
            arrayList.addAll(i2, arrayList2);
        }
        return arrayList2.size();
    }

    private int calcFontSize(ArrayList<String> arrayList, int i, int i2) {
        int size = arrayList.size();
        int iCalcFontSizeFromLineCount = calcFontSizeFromLineCount(size, i2);
        Paint paint = new Paint(1);
        paint.setTextSize((int) (iCalcFontSizeFromLineCount * SCALE));
        int i3 = 0;
        int i4 = size;
        int i5 = iCalcFontSizeFromLineCount;
        while (i3 < arrayList.size()) {
            int iWrapLine = wrapLine(arrayList, i, i3, paint, false);
            int i6 = (i4 + iWrapLine) - 1;
            if (iWrapLine > 1 && i5 > calcFontSizeFromLineCount(i6, i2)) {
                i5--;
                paint.setTextSize((int) (i5 * SCALE));
                i3 = -1;
                i6 = size;
            }
            i3++;
            i4 = i6;
            i5 = i5;
        }
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            wrapLine(arrayList, i, i7, paint, true);
        }
        return i5;
    }

    private Bitmap drawBitmap() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1920, 1080, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.eraseColor(Color.parseColor(this.backgroundColor));
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        ArrayList<String> arrayList = new ArrayList<>(Arrays.asList(this.titleText.split(IOUtils.LINE_SEPARATOR_UNIX, HttpStatus.ORDINAL_999_Unknown)));
        int iIntValue = this.lineHeightTable.get(calcFontSize(arrayList, bitmapCreateBitmap.getWidth() - 416, bitmapCreateBitmap.getHeight() - 80) - 1).intValue();
        Paint paint = new Paint(1);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setColor(Color.parseColor(this.textColor));
        paint.setTextSize((int) (r4 * SCALE));
        int width = bitmapCreateBitmap.getWidth() / 2;
        int height = (bitmapCreateBitmap.getHeight() - (arrayList.size() * iIntValue)) / 2;
        Iterator<String> it = arrayList.iterator();
        while (true) {
            int i = height;
            if (it.hasNext()) {
                canvas.drawText(it.next(), width, ((iIntValue * 5) / 6) + i, paint);
                height = i + iIntValue;
            } else {
                return bitmapCreateBitmap;
            }
        }
    }

    public void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Bitmap bitmapDrawBitmap = drawBitmap();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        Log.d("TitleImage", "draw bitmap time = " + (jCurrentTimeMillis2 - jCurrentTimeMillis));
        if (this.filepath != null) {
            FileOps.delete(this.filepath);
        }
        makeFilePath();
        FileOps.saveBitmap(bitmapDrawBitmap, this.filepath, Bitmap.CompressFormat.PNG, 90);
        Log.d("TitleImage", "saving to disk time = " + (System.currentTimeMillis() - jCurrentTimeMillis2));
        bitmapDrawBitmap.recycle();
    }
}
