package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.util.LruCache;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeGetUserProfilePic {
    private static LruCache<String, String> mURLCache;
    private static LruCache<String, Bitmap> pictureCache;
    private static HashMap<String, IAdobeProfilePicCallback> pictureRequestQueue;
    private static String API_KEY = "spFzOBHcTLsIoXWyKjayKRW5gBZ55wWh";
    private static String CLIENT_ID = "TU7NfEJ94OGF29SkePTunHHM8QOImepU";
    private static AdobeNetworkHttpService service = null;
    private static int MAX_ITEMS = 10;

    interface IAdobeUserProfilePictureResponse {
        void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

        void onError(AdobeNetworkException adobeNetworkException);
    }

    public static void getUrlFromUserID(String str, final IAdobeGetBitmapUrlCallback iAdobeGetBitmapUrlCallback) {
        synchronized (AdobeGetUserProfilePic.class) {
            if (mURLCache == null) {
                mURLCache = new LruCache<>(MAX_ITEMS);
            }
        }
        final String str2 = AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS ? "https://net.s2stagehance.com/v2/users/" + str : "https://www.behance.net/v2/users/" + str;
        String str3 = mURLCache.get(str2);
        if (str3 != null) {
            iAdobeGetBitmapUrlCallback.onComplete(str3);
        } else {
            getResponse(str2, true, new IAdobeUserProfilePictureResponse() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.1
                @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    try {
                        String string = AdobeGetUserProfilePic.getString((JSONObject) new JSONObject(new String(adobeNetworkHttpResponse.getDataBytes(), "UTF-8")).getJSONObject("user").get("images"));
                        iAdobeGetBitmapUrlCallback.onComplete(string);
                        AdobeGetUserProfilePic.mURLCache.put(str2, string);
                    } catch (UnsupportedEncodingException | JSONException e2) {
                        onError(null);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGetBitmapUrlCallback.onError();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getString(JSONObject jSONObject) throws JSONException {
        String string;
        int i;
        int i2 = 50;
        String str = "";
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                int i3 = Integer.parseInt(next);
                if (i3 >= i2) {
                    string = jSONObject.getString(next);
                    i = i3;
                } else {
                    string = str;
                    i = i2;
                }
                i2 = i;
                str = string;
            }
            return str;
        } catch (JSONException e2) {
            return (String) jSONObject.get("50");
        }
    }

    public static void getAvatarFromUserID(final String str, final IAdobeProfilePicCallback iAdobeProfilePicCallback) {
        synchronized (AdobeGetUserProfilePic.class) {
            if (pictureRequestQueue == null) {
                pictureRequestQueue = new HashMap<>();
            }
            if (str == null || str.length() == 0) {
                iAdobeProfilePicCallback.onError();
                return;
            }
            if (pictureCache == null) {
                pictureCache = new LruCache<>(MAX_ITEMS);
            } else {
                Bitmap bitmap = pictureCache.get(str);
                if (bitmap != null) {
                    iAdobeProfilePicCallback.onComplete(bitmap);
                    return;
                }
            }
            if (mURLCache == null) {
                mURLCache = new LruCache<>(MAX_ITEMS);
            }
            if (!pictureRequestQueue.containsKey(str)) {
                final String str2 = AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS ? "https://net.s2stagehance.com/v2/users/" + str : "https://www.behance.net/v2/users/" + str;
                String str3 = mURLCache.get(str2);
                if (str3 != null) {
                    getRenditionFromImageUrl(str, iAdobeProfilePicCallback, str3);
                    return;
                } else {
                    getResponse(str2, true, new IAdobeUserProfilePictureResponse() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.2
                        @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
                        public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                            try {
                                AdobeGetUserProfilePic.getRendition(str2, new JSONObject(new String(adobeNetworkHttpResponse.getDataBytes(), "UTF-8")), str, iAdobeProfilePicCallback);
                            } catch (UnsupportedEncodingException | JSONException e2) {
                                onError(null);
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
                        public void onError(AdobeNetworkException adobeNetworkException) {
                            iAdobeProfilePicCallback.onError();
                        }
                    });
                    return;
                }
            }
            pictureRequestQueue.put(str, iAdobeProfilePicCallback);
        }
    }

    public static void getAvatarFromURL(final String str, final IAdobeProfilePicCallback iAdobeProfilePicCallback) {
        synchronized (AdobeGetUserProfilePic.class) {
            if (pictureRequestQueue == null) {
                pictureRequestQueue = new HashMap<>();
            }
            if (str == null || str.length() == 0) {
                iAdobeProfilePicCallback.onError();
                return;
            }
            if (pictureCache == null) {
                pictureCache = new LruCache<>(MAX_ITEMS);
            } else {
                Bitmap bitmap = pictureCache.get(str);
                if (bitmap != null) {
                    iAdobeProfilePicCallback.onComplete(bitmap);
                    return;
                }
            }
            if (!pictureRequestQueue.containsKey(str)) {
                getResponse(str, false, new IAdobeUserProfilePictureResponse() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.3
                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
                    public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                        byte[] dataBytes = adobeNetworkHttpResponse.getDataBytes();
                        if (dataBytes != null) {
                            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(dataBytes, 0, dataBytes.length);
                            if (bitmapDecodeByteArray != null) {
                                if (AdobeGetUserProfilePic.pictureCache != null) {
                                    AdobeGetUserProfilePic.pictureCache.put(str, bitmapDecodeByteArray);
                                }
                                iAdobeProfilePicCallback.onComplete(bitmapDecodeByteArray);
                                AdobeGetUserProfilePic.handleOtherPictureRequests(str, bitmapDecodeByteArray, true);
                                return;
                            }
                            iAdobeProfilePicCallback.onError();
                            AdobeGetUserProfilePic.handleOtherPictureRequests(str, null, false);
                            return;
                        }
                        iAdobeProfilePicCallback.onError();
                        AdobeGetUserProfilePic.handleOtherPictureRequests(str, null, false);
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
                    public void onError(AdobeNetworkException adobeNetworkException) {
                        iAdobeProfilePicCallback.onError();
                        AdobeGetUserProfilePic.handleOtherPictureRequests(str, null, false);
                    }
                });
            } else {
                pictureRequestQueue.put(str, iAdobeProfilePicCallback);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void getRendition(String str, JSONObject jSONObject, String str2, IAdobeProfilePicCallback iAdobeProfilePicCallback) {
        try {
            String string = getString((JSONObject) jSONObject.getJSONObject("user").get("images"));
            mURLCache.put(str, string);
            getRenditionFromImageUrl(str2, iAdobeProfilePicCallback, string);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private static void getRenditionFromImageUrl(final String str, final IAdobeProfilePicCallback iAdobeProfilePicCallback, String str2) {
        getResponse(str2, false, new IAdobeUserProfilePictureResponse() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.4
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                byte[] dataBytes = adobeNetworkHttpResponse.getDataBytes();
                if (dataBytes != null) {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(dataBytes, 0, dataBytes.length);
                    if (str != null && AdobeGetUserProfilePic.pictureCache != null) {
                        AdobeGetUserProfilePic.pictureCache.put(str, bitmapDecodeByteArray);
                    }
                    iAdobeProfilePicCallback.onComplete(bitmapDecodeByteArray);
                    AdobeGetUserProfilePic.handleOtherPictureRequests(str, bitmapDecodeByteArray, true);
                    return;
                }
                iAdobeProfilePicCallback.onError();
                AdobeGetUserProfilePic.handleOtherPictureRequests(str, null, false);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.IAdobeUserProfilePictureResponse
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeProfilePicCallback.onError();
                AdobeGetUserProfilePic.handleOtherPictureRequests(str, null, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleOtherPictureRequests(String str, Bitmap bitmap, boolean z) {
        if (pictureRequestQueue.containsKey(str)) {
            if (z) {
                pictureRequestQueue.get(str).onComplete(bitmap);
            } else {
                pictureRequestQueue.get(str).onError();
            }
            pictureRequestQueue.remove(str);
        }
    }

    private static void getResponse(String str, boolean z, final IAdobeUserProfilePictureResponse iAdobeUserProfilePictureResponse) {
        Handler handler;
        try {
            URL url = new URL(str);
            synchronized (AdobeGetUserProfilePic.class) {
                if (service == null) {
                    service = new AdobeNetworkHttpService(null, null, null);
                }
            }
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null);
            if (z) {
                HashMap map = new HashMap();
                if (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS) {
                    map.put(BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, CLIENT_ID);
                } else {
                    map.put(BehanceSDKConstants.ADOBE_API_CLIENT_ID_PARAM, API_KEY);
                }
                adobeNetworkHttpRequest.setQueryParams(map);
            }
            try {
                handler = new Handler();
            } catch (Exception e2) {
                handler = null;
            }
            service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic.5
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    iAdobeUserProfilePictureResponse.onComplete(adobeNetworkHttpResponse);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeUserProfilePictureResponse.onError(adobeNetworkException);
                }
            }, handler);
        } catch (MalformedURLException e3) {
            iAdobeUserProfilePictureResponse.onError(null);
        }
    }
}
