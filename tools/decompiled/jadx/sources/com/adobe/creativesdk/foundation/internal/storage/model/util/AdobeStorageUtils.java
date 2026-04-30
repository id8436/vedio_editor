package com.adobe.creativesdk.foundation.internal.storage.model.util;

import android.net.Uri;
import android.util.Base64;
import android.webkit.MimeTypeMap;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestExecutor;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeRequestParameters;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.c.a.a.e;
import com.google.common.primitives.UnsignedBytes;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.Charsets;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageUtils {
    public static final int BUFFER_LEN = 65536;
    private static final String ESCAPE_CHARS = "%/:;=";
    private static AdobeNetworkHttpRequestExecutor _queue = null;
    private static SimpleDateFormat[] _sDateFormats;

    public static synchronized String MD5HashFromStream(InputStream inputStream, boolean z) {
        String strReplaceFirst = null;
        synchronized (AdobeStorageUtils.class) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                    }
                    byte[] bArrDigest = messageDigest.digest();
                    if (z) {
                        StringBuilder sb = new StringBuilder();
                        for (byte b2 : bArrDigest) {
                            String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
                            while (hexString.length() < 2) {
                                hexString = "0" + hexString;
                            }
                            sb.append(hexString);
                        }
                        strReplaceFirst = sb.toString();
                    } else {
                        try {
                            strReplaceFirst = new String(Base64.encode(bArrDigest, 0), "UTF-8").replaceFirst("\\s+$", "");
                        } catch (UnsupportedEncodingException e2) {
                        }
                    }
                } catch (IOException e3) {
                }
            } catch (NoSuchAlgorithmException e4) {
                e4.printStackTrace();
            }
        }
        return strReplaceFirst;
    }

    public static synchronized void MD5HashFromStream(final InputStream inputStream, final boolean z, final IHashCompletionHandler iHashCompletionHandler) {
        if (_queue == null) {
            _queue = new AdobeNetworkHttpRequestExecutor(4, 4, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        }
        _queue.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils.1
            @Override // java.lang.Runnable
            public void run() {
                iHashCompletionHandler.onCompletion(AdobeStorageUtils.MD5HashFromStream(inputStream, z));
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    AdobeLogger.log(Level.ERROR, AdobeStorageUtils.class.getSimpleName(), null, e2);
                }
            }
        });
    }

    public static synchronized void MD5HashOfFile(String str, boolean z, IHashCompletionHandler iHashCompletionHandler) {
        try {
            MD5HashFromStream(new FileInputStream(str), z, iHashCompletionHandler);
        } catch (FileNotFoundException e2) {
            iHashCompletionHandler.onCompletion(null);
        }
    }

    public static JSONObject JSONObjectWithData(String str) {
        if (str != null) {
            try {
                return new JSONObject(str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static String generateUuid() {
        return UUID.randomUUID().toString().toUpperCase();
    }

    public static String getMD5HashOfString(String str, boolean z) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(Charsets.UTF_8));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            if (z) {
                for (byte b2 : bArrDigest) {
                    String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
                    while (hexString.length() < 2) {
                        hexString = "0" + hexString;
                    }
                    sb.append(hexString);
                }
                return sb.toString();
            }
            try {
                return new String(Base64.encode(bArrDigest, 0), "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (NoSuchAlgorithmException e3) {
            return null;
        }
    }

    private static synchronized Date convertToDate(SimpleDateFormat simpleDateFormat, String str) {
        Date date;
        date = null;
        if (simpleDateFormat != null) {
            try {
                date = simpleDateFormat.parse(str);
            } catch (ParseException e2) {
            }
        }
        return date;
    }

    public static Date convertStringToDate(String str) {
        Date dateConvertToDate = null;
        synchronized (AdobeStorageUtils.class) {
            if (_sDateFormats == null) {
                _sDateFormats = new SimpleDateFormat[6];
                _sDateFormats[0] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
                _sDateFormats[1] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
                _sDateFormats[2] = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
                _sDateFormats[3] = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.US);
                _sDateFormats[4] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
                _sDateFormats[5] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);
            }
        }
        if (str != null) {
            for (int i = 0; i < _sDateFormats.length && dateConvertToDate == null; i++) {
                _sDateFormats[i].setTimeZone(TimeZone.getTimeZone("GMT"));
                dateConvertToDate = convertToDate(_sDateFormats[i], str);
            }
        }
        return dateConvertToDate;
    }

    public static AdobeAssetMimeTypes getMimeTypeFromString(String str) {
        if (str != null) {
            for (AdobeAssetMimeTypes adobeAssetMimeTypes : AdobeAssetMimeTypes.values()) {
                if (str.equalsIgnoreCase(adobeAssetMimeTypes.getMimeType())) {
                    return adobeAssetMimeTypes;
                }
            }
        }
        return null;
    }

    public static boolean isMimeTypeFilterPresent(EnumSet<AdobeAssetMimeTypes> enumSet, String str) {
        AdobeAssetMimeTypes mimeTypeFromString = getMimeTypeFromString(str);
        if (mimeTypeFromString != null) {
            return enumSet.contains(mimeTypeFromString);
        }
        return false;
    }

    public static boolean shouldFilterAssetMimeType(EnumSet<AdobeAssetMimeTypes> enumSet, String str, boolean z) {
        if (enumSet == null || enumSet.size() == 0) {
            return false;
        }
        boolean zIsMimeTypeFilterPresent = isMimeTypeFilterPresent(enumSet, str);
        return z ? !zIsMimeTypeFilterPresent : zIsMimeTypeFilterPresent;
    }

    public static long currentMemoryUsage() {
        try {
            Runtime runtime = Runtime.getRuntime();
            return runtime.totalMemory() - runtime.freeMemory();
        } catch (Exception e2) {
            e2.printStackTrace();
            return Long.MAX_VALUE;
        }
    }

    public static String cacheKeyForAsset(AdobeAsset adobeAsset, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i) {
        return String.format("%s-%d_%d-%d-%d", adobeAsset.getGUID(), Integer.valueOf(adobeAssetFileRenditionType.getIntVal()), Integer.valueOf((int) adobeAssetImageDimensions.width), Integer.valueOf((int) adobeAssetImageDimensions.height), Integer.valueOf(i));
    }

    public static String encodeURL(String str) {
        try {
            String strGenerateUuid = generateUuid();
            str = URLEncoder.encode(str.replace(" ", strGenerateUuid), "UTF-8").replace("%2F", URIUtil.SLASH);
            return str.replace(strGenerateUuid, "%20");
        } catch (UnsupportedEncodingException e2) {
            String str2 = str;
            e2.printStackTrace();
            return str2;
        }
    }

    public static String getFileExtensionFromUrl(String str) {
        return MimeTypeMap.getFileExtensionFromUrl(str);
    }

    public static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        if (mimeTypeFromExtension == null) {
            String mimeTypeForExtension = AdobeAssetFileExtensions.getMimeTypeForExtension(fileExtensionFromUrl);
            if (mimeTypeForExtension == null) {
                return URLConnection.getFileNameMap().getContentTypeFor(str);
            }
            return mimeTypeForExtension;
        }
        return mimeTypeFromExtension;
    }

    public static String getFormattedLink(String str, AdobeRequestParameters adobeRequestParameters) {
        if (str == null) {
            return null;
        }
        e eVarA = e.a(str);
        for (String str2 : eVarA.b()) {
            String paramaterValue = adobeRequestParameters.getParamaterValue(str2);
            if (paramaterValue != null && !paramaterValue.isEmpty()) {
                eVarA.a(str2, paramaterValue);
            }
        }
        return Uri.encode(eVarA.d(), ESCAPE_CHARS);
    }
}
