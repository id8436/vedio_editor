package com.adobe.premiereclip.mediabrowser;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.provider.MediaStore;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.util.Utilities;
import com.google.android.gms.common.AccountPicker;
import com.google.gdata.data.webmastertools.Keyword;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    public static Cursor initPhoneMedia(Context context) {
        try {
            String[] strArr = {"_data", "_id", GalleryActivity.INTENT_ARG_MEDIA_TYPE, "duration", "bucket_id", "bucket_display_name", "_size", "latitude", "longitude", "datetaken"};
            String[] strArr2 = {"3gp", "3gpp", "3gpp2", "3g2", AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4, AdobeAssetFileExtensions.kAdobeFileExtensionTypeMOV, "jpg", "jpeg", "png", AdobeAssetFileExtensions.kAdobeFileExtensionTypeBMP, AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF, AdobeAssetFileExtensions.kAdobeFileExtensionTypeTIFF};
            return context.getContentResolver().query(MediaStore.Files.getContentUri(Keyword.Source.EXTERNAL), strArr, "( media_type=1 OR ( media_type=3 AND duration>0 ) ) AND ( " + Utilities.getQueryForSelectingExtensions(strArr2.length) + " )", Utilities.getRegexFromExtensions(strArr2), "date_added DESC");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static ArrayList<ThumbnailData> getThumbnailDataFromBuckets(ArrayList<Bucket> arrayList) {
        ArrayList<ThumbnailData> arrayList2 = new ArrayList<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                Bucket bucket = arrayList.get(i2);
                arrayList2.add(new ThumbnailData(bucket));
                if (bucket.getState() == Bucket.State.EXPANDED) {
                    arrayList2.addAll(bucket.getThumbnailItems());
                }
                i = i2 + 1;
            } else {
                return arrayList2;
            }
        }
    }

    public static void pickUserAccount(Activity activity, String str, String str2) {
        Intent intentNewChooseAccountIntent;
        String[] strArr = {str};
        if (str2 != null) {
            intentNewChooseAccountIntent = AccountPicker.newChooseAccountIntent(new Account(str2, str), null, strArr, true, null, null, null, null);
        } else {
            intentNewChooseAccountIntent = AccountPicker.newChooseAccountIntent(null, null, strArr, true, null, null, null, null);
        }
        activity.startActivityForResult(intentNewChooseAccountIntent, 2);
    }
}
