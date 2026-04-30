package com.adobe.creativeapps.settings.utils;

import android.content.Context;
import android.util.Base64;
import com.adobe.creativeapps.settings.AppPreferences;
import com.adobe.creativeapps.settings.utils.BehanceSource;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.behance.sdk.BehanceSDKUserProfile;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class UserProfileHandler {
    public static Context mContext;
    private static volatile UserProfileHandler sharedInstance = null;
    private static BehanceSDKUserProfile userProfile = null;
    private static AppPreferences preferences = null;
    private static String adobeID = null;

    public interface IAdobeGetUserProfileListener {
        void onGetUserProfileSuccess();
    }

    public static UserProfileHandler getSharedInstance(Context context) {
        mContext = context;
        if (sharedInstance == null) {
            synchronized (UserProfileHandler.class) {
                if (sharedInstance == null) {
                    preferences = AppPreferences.getSharedInstance();
                    adobeID = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getAdobeID();
                    getBehanceUserProfile(new IAdobeGetUserProfileListener() { // from class: com.adobe.creativeapps.settings.utils.UserProfileHandler.1
                        @Override // com.adobe.creativeapps.settings.utils.UserProfileHandler.IAdobeGetUserProfileListener
                        public void onGetUserProfileSuccess() {
                        }
                    });
                    sharedInstance = new UserProfileHandler();
                    String preference = preferences.getPreference(String.format(AppPreferences.ID_PROFILE_FIRST_NAME, adobeID), "");
                    String preference2 = preferences.getPreference(String.format(AppPreferences.ID_PROFILE_LAST_NAME, adobeID), "");
                    String preference3 = preferences.getPreference(String.format(AppPreferences.ID_PROFILE_OCCUPATION, adobeID), (String) null);
                    String preference4 = preferences.getPreference(String.format(AppPreferences.ID_PROFILE_COMPANY, adobeID), (String) null);
                    String preference5 = preferences.getPreference(String.format(AppPreferences.ID_PROFILE_ADDRESS, adobeID), (String) null);
                    userProfile = new BehanceSDKUserProfile();
                    userProfile.setFirstName(preference);
                    userProfile.setLastName(preference2);
                    userProfile.setOccupation(preference3);
                    userProfile.setCompany(preference4);
                    if (preference5 != null) {
                        try {
                            JSONObject jSONObject = new JSONObject(preference5);
                            BehanceSDKCityDTO behanceSDKCityDTO = (BehanceSDKCityDTO) deserializeString((String) jSONObject.get(BehanceSDKUrlUtil.PARAM_KEY_CITY));
                            BehanceSDKStateDTO behanceSDKStateDTO = (BehanceSDKStateDTO) deserializeString((String) jSONObject.get("state"));
                            BehanceSDKCountryDTO behanceSDKCountryDTO = (BehanceSDKCountryDTO) deserializeString((String) jSONObject.get(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY));
                            userProfile.setCity(behanceSDKCityDTO);
                            userProfile.setState(behanceSDKStateDTO);
                            userProfile.setCountry(behanceSDKCountryDTO);
                        } catch (Exception e2) {
                        }
                    }
                    return sharedInstance;
                }
                return sharedInstance;
            }
        }
        return sharedInstance;
    }

    private static void getBehanceUserProfile(final IAdobeGetUserProfileListener iAdobeGetUserProfileListener) {
        if (CreativeCloudSource.getInstance().isLoggedIn()) {
            BehanceSource.getInstance().getBehanceAccountDetails(new BehanceSource.IBehanceAccountDetailsUpdate() { // from class: com.adobe.creativeapps.settings.utils.UserProfileHandler.2
                @Override // com.adobe.creativeapps.settings.utils.BehanceSource.IBehanceAccountDetailsUpdate
                public void behanceDetailsUpdated(BehanceSDKUserProfile behanceSDKUserProfile, Exception exc) {
                    if (behanceSDKUserProfile != null) {
                        BehanceSDKUserProfile unused = UserProfileHandler.userProfile = behanceSDKUserProfile;
                        UserProfileHandler.preferences.setPreference(String.format(AppPreferences.ID_PROFILE_FIRST_NAME, UserProfileHandler.adobeID), behanceSDKUserProfile.getFirstName());
                        UserProfileHandler.preferences.setPreference(String.format(AppPreferences.ID_PROFILE_LAST_NAME, UserProfileHandler.adobeID), behanceSDKUserProfile.getLastName());
                        UserProfileHandler.preferences.setPreference(String.format(AppPreferences.ID_PROFILE_OCCUPATION, UserProfileHandler.adobeID), behanceSDKUserProfile.getOccupation());
                        UserProfileHandler.preferences.setPreference(String.format(AppPreferences.ID_PROFILE_COMPANY, UserProfileHandler.adobeID), behanceSDKUserProfile.getCompany());
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put(BehanceSDKUrlUtil.PARAM_KEY_CITY, UserProfileHandler.serializeString(behanceSDKUserProfile.getCity()));
                            jSONObject.put("state", UserProfileHandler.serializeString(behanceSDKUserProfile.getState()));
                            jSONObject.put(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY, UserProfileHandler.serializeString(behanceSDKUserProfile.getCountry()));
                        } catch (Exception e2) {
                        }
                        UserProfileHandler.preferences.setPreference(String.format(AppPreferences.ID_PROFILE_ADDRESS, UserProfileHandler.adobeID), jSONObject.toString());
                        iAdobeGetUserProfileListener.onGetUserProfileSuccess();
                    }
                }
            }, mContext);
        }
    }

    public BehanceSDKUserProfile getUserProfile() {
        return userProfile;
    }

    public void updateUserProfile(IAdobeGetUserProfileListener iAdobeGetUserProfileListener) {
        getBehanceUserProfile(iAdobeGetUserProfileListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String serializeString(Serializable serializable) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(serializable);
        objectOutputStream.close();
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    private static Object deserializeString(String str) throws ClassNotFoundException, IOException {
        ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str, 0)));
        Object object = objectInputStream.readObject();
        objectInputStream.close();
        return object;
    }

    public void flush() {
        sharedInstance = null;
        userProfile = null;
    }
}
