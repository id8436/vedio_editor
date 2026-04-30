package com.behance.sdk.fragments.headless;

import android.support.v4.app.Fragment;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.ui.fragments.BehanceSDKCopyrightSettingsDialog;
import com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialogOld;
import com.facebook.GraphRequest;
import com.facebook.aj;
import com.facebook.as;
import com.facebook.login.x;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPublishProjectHeadlessFragment extends Fragment implements BehanceSDKCopyrightSettingsDialog.Callbacks, BehanceSDKCreativeFieldsFilterDialogOld.Callbacks {
    private Callbacks callbacks;
    private boolean getFacebookUserIdInProgress = false;
    private x loginResult = null;

    public interface Callbacks {
        void onCopyrightSettingSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption);

        void onCreativeFieldsSelected(List<BehanceSDKCreativeFieldDTO> list);

        void onGetFacebookUserIdComplete(String str);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public BehanceSDKPublishProjectHeadlessFragment() {
        setRetainInstance(true);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKCreativeFieldsFilterDialogOld.Callbacks
    public void onCreativeFieldsSelected(List<BehanceSDKCreativeFieldDTO> list) {
        if (this.callbacks != null) {
            this.callbacks.onCreativeFieldsSelected(list);
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKCopyrightSettingsDialog.Callbacks
    public void onCopyrightSettingSelected(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        if (this.callbacks != null) {
            this.callbacks.onCopyrightSettingSelected(behanceSDKCopyrightOption);
        }
    }

    public void loadFacebookUserId(x xVar) {
        setGetFacebookUserIdInProgress(true);
        GraphRequest.a(xVar.a(), new aj() { // from class: com.behance.sdk.fragments.headless.BehanceSDKPublishProjectHeadlessFragment.1
            @Override // com.facebook.aj
            public void onCompleted(JSONObject jSONObject, as asVar) {
                BehanceSDKPublishProjectHeadlessFragment.this.setGetFacebookUserIdInProgress(false);
                if (BehanceSDKPublishProjectHeadlessFragment.this.callbacks != null) {
                    if (jSONObject != null) {
                        BehanceSDKPublishProjectHeadlessFragment.this.callbacks.onGetFacebookUserIdComplete(jSONObject.optString("name"));
                    } else {
                        BehanceSDKPublishProjectHeadlessFragment.this.callbacks.onGetFacebookUserIdComplete(null);
                    }
                }
            }
        }).j();
    }

    public boolean isGetFacebookUserIdInProgress() {
        return this.getFacebookUserIdInProgress;
    }

    public void setGetFacebookUserIdInProgress(boolean z) {
        this.getFacebookUserIdInProgress = z;
    }

    public x getLoginResult() {
        return this.loginResult;
    }

    public void setLoginResult(x xVar) {
        this.loginResult = xVar;
    }
}
