package com.adobe.creativesdk.foundation.internal.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import com.adobe.creativesdk.foundation.assetux.R;
import java.util.Calendar;
import java.util.Date;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetInfoUtil {
    public static String getModifiedDate(Context context, Date date) {
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(1);
        int i2 = calendar.get(2);
        int i3 = calendar.get(4);
        calendar.get(5);
        long jCalcDifferenceInDaysFromToday = calcDifferenceInDaysFromToday(date, calendar);
        calendar.setTime(date);
        int i4 = i3 - calendar.get(4);
        int i5 = i2 - calendar.get(2);
        int i6 = i - calendar.get(1);
        if (jCalcDifferenceInDaysFromToday < 7) {
            if (jCalcDifferenceInDaysFromToday == 0) {
                return context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_today);
            }
            return jCalcDifferenceInDaysFromToday == 1 ? context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_oneday) : String.format(context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_days), Long.valueOf(jCalcDifferenceInDaysFromToday));
        }
        if (jCalcDifferenceInDaysFromToday < 31) {
            int i7 = (int) (jCalcDifferenceInDaysFromToday / 7);
            if (jCalcDifferenceInDaysFromToday < i7 * 7) {
                i7--;
            }
            return i7 == 1 ? context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_oneweek) : String.format(context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_weeks), Integer.valueOf(i7));
        }
        if (jCalcDifferenceInDaysFromToday < 365) {
            if (i5 <= 0) {
                i5 += 12;
            }
            if (jCalcDifferenceInDaysFromToday < i5 * 31) {
                i5--;
            }
            return i5 == 1 ? context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_onemonth) : String.format(context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_months), Integer.valueOf(i5));
        }
        if (i6 == 0) {
            return context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_thisyear);
        }
        return i6 == 1 ? context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_oneyear) : String.format(context.getResources().getString(R.string.adobe_csdk_IDS_Loki_ModifedDate_years), Integer.valueOf(i6));
    }

    public static String getSizeString(Context context, long j) {
        if (j % 1024 == 0) {
            long j2 = j / 1024;
            if (j2 < 1024) {
                return String.format("%d ", Long.valueOf(j2)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_KB);
            }
            if (j2 % 1024 == 0) {
                long j3 = j2 / 1024;
                return j3 < 1024 ? String.format("%d ", Long.valueOf(j3)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_MB) : j3 % 1024 == 0 ? String.format("%d ", Long.valueOf(j3 / 1024)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_GB) : String.format("%.2f ", Float.valueOf(j3 / 1024.0f)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_GB);
            }
            float f2 = j2 / 1024.0f;
            return f2 < 1024.0f ? String.format("%.2f ", Float.valueOf(f2)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_MB) : String.format("%.2f ", Float.valueOf(f2 / 1024.0f)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_GB);
        }
        float f3 = j / 1024.0f;
        if (f3 < 1024.0f) {
            return String.format("%.2f ", Float.valueOf(f3)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_KB);
        }
        float f4 = f3 / 1024.0f;
        return f4 < 1024.0f ? String.format("%.2f ", Float.valueOf(f4)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_MB) : String.format("%.2f ", Float.valueOf(f4 / 1024.0f)) + context.getResources().getString(R.string.adobe_csdk_IDS_ASSET_DETAILS_GB);
    }

    public static Drawable getEmptyCellImageForExtension(Context context, String str) {
        String string = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_zip);
        String string2 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_xls);
        String string3 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_wav);
        String string4 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_ttf);
        String string5 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_ppt);
        String string6 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_otf);
        String string7 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_mp3);
        String string8 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_doc);
        String string9 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_docx);
        String string10 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_mkv);
        String string11 = context.getResources().getString(R.string.adobe_csdk_IDS_empty_file_extension_xd);
        if (str.equalsIgnoreCase(string)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_zip);
        }
        if (str.equalsIgnoreCase(string2)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_xls);
        }
        if (str.equalsIgnoreCase(string3)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_wav);
        }
        if (str.equalsIgnoreCase(string4)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_ttf);
        }
        if (str.equalsIgnoreCase(string5)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_ppt);
        }
        if (str.equalsIgnoreCase(string6)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_otf);
        }
        if (str.equalsIgnoreCase(string7)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_mp3);
        }
        if (str.equalsIgnoreCase(string8)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_doc);
        }
        if (str.equalsIgnoreCase(string9)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_doc);
        }
        if (str.equalsIgnoreCase(string10)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_mkv);
        }
        if (str.equalsIgnoreCase(string11)) {
            return ContextCompat.getDrawable(context, R.drawable.empty_file_xd);
        }
        return ContextCompat.getDrawable(context, R.drawable.empty_generic_file);
    }

    public static Drawable getGenericImageForExtension(Context context) {
        return ContextCompat.getDrawable(context, R.drawable.empty_generic_file);
    }

    private static long calcDifferenceInDaysFromToday(Date date, Calendar calendar) {
        Date time = calendar.getTime();
        return Math.abs((time.getTime() - date.getTime()) / DateUtils.MILLIS_PER_DAY);
    }
}
