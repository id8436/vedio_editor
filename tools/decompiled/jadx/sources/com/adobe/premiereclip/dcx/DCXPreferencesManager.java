package com.adobe.premiereclip.dcx;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.util.FileOps;
import com.adobe.sync.database.PreferenceCompositeLoader;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class DCXPreferencesManager {
    private static final String TAG = "DCXPreferencesManager";
    public static final String defaultBumperPath = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/bumper/promo_roll.mp4";
    private static DCXPreferencesManager instance = null;
    private static final String kPremiereHrefRootPreferences = "assets/adobe-premiereclip-preferences/";

    public static void initAssets() {
        new File(defaultBumperPath.substring(0, defaultBumperPath.lastIndexOf(URIUtil.SLASH))).mkdirs();
        FileOps.copyRawFileToStorage(PremiereClipApplication.getContext(), R.raw.promo_roll, defaultBumperPath);
    }

    public static DCXPreferencesManager getInstance() {
        if (instance == null) {
            instance = new DCXPreferencesManager();
        }
        return instance;
    }

    public AdobeDCXComposite setupPreferences(String str) {
        String str2 = DCXModelController.getInstance().getPathToUserCompositionDirectory() + File.separator + "preferences";
        if (new File(str2).exists()) {
            Log.w(TAG, "Error - preferences project already present");
            return null;
        }
        AdobeDCXComposite adobeDCXCompositeNewPreferencesProjectWithName = DCXProjectFactory.newPreferencesProjectWithName("preferences", str, str2, "preferences");
        Log.d(TAG, "New preferences with projectID " + adobeDCXCompositeNewPreferencesProjectWithName.getCompositeId());
        return adobeDCXCompositeNewPreferencesProjectWithName;
    }

    public void resetPreferences() {
        AdobeDCXComposite adobeDCXCompositeLoadComposite = PreferenceCompositeLoader.getInstance().loadComposite("preferences", null, null);
        if (adobeDCXCompositeLoadComposite != null) {
            resetStateForNodeWithPath(DCXProjectKeys.kDCXKey_OverlayNode_absolutePath, adobeDCXCompositeLoadComposite);
            resetStateForNodeWithPath(DCXProjectKeys.kDCXKey_BumperNode_absolutePath, adobeDCXCompositeLoadComposite);
            DCXUtils.removeUnusedMediaRefNodesInPreferences(adobeDCXCompositeLoadComposite.getCurrent());
            DCXModelController.getInstance().pushProjectToServer(adobeDCXCompositeLoadComposite);
        }
    }

    private void resetStateForNodeWithPath(String str, AdobeDCXComposite adobeDCXComposite) {
        JSONObject stateForPreferences;
        AdobeDCXManifestNode childWithAbsolutePath = adobeDCXComposite.getCurrent().getChildWithAbsolutePath(str);
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (childWithAbsolutePath != null && (stateForPreferences = DCXUtils.setStateForPreferences(childWithAbsolutePath, false)) != null) {
            AdobeDCXMutableManifestNode mutableCopy = childWithAbsolutePath.getMutableCopy();
            DCXUtils.setAppPropertiesForNode(mutableCopy, stateForPreferences);
            JSONObject jSONObjectRemoveKeyInNodeProperties = DCXUtils.removeKeyInNodeProperties(mutableCopy, DCXProjectKeys.kDCXKey_Clip_mediaRef);
            if (jSONObjectRemoveKeyInNodeProperties != null) {
                if (DCXProjectKeys.kDCXKey_BumperNode_absolutePath.equals(str)) {
                    try {
                        jSONObjectRemoveKeyInNodeProperties.putOpt("state", false);
                        jSONObjectRemoveKeyInNodeProperties.putOpt(DCXProjectKeys.kDCXKey_Bumper_Video_isDefault, true);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                DCXUtils.setAppPropertiesForNode(mutableCopy, jSONObjectRemoveKeyInNodeProperties);
                try {
                    current.updateChild(mutableCopy);
                } catch (AdobeDCXException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    public String hrefForCompositeID(String str) {
        return kPremiereHrefRootPreferences + str;
    }
}
