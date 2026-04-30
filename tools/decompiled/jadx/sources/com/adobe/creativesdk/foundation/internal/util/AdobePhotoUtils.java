package com.adobe.creativesdk.foundation.internal.util;

import com.adobe.creativesdk.foundation.storage.AdobePhotoErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoUtils {
    public static String generateGUID() {
        return UUID.randomUUID().toString().replace("-", "").toLowerCase();
    }

    public static JSONObject JSONObjectWithData(String str) throws AdobePhotoException {
        try {
            Matcher matcher = Pattern.compile("while \\(1\\) \\{\\}").matcher(str);
            if (matcher.find()) {
                str = matcher.replaceAll("").trim();
            }
            return new JSONObject(str);
        } catch (Exception e2) {
            throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, null, "Parsed collection data is not of type dictionary.");
        }
    }
}
