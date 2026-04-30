package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowAction {
    private static final String kWorkflowActionDefaultLocale = "en_US";
    private static final String kWorkflowActionId = "id";
    private static final String kWorkflowActionKeyAppPackageName = "app-store-id";
    private static final String kWorkflowActionKeyComponentName = "component-name";
    private static final String kWorkflowActionKeyDescription = "description";
    private static final String kWorkflowActionKeyHeight = "height";
    private static final String kWorkflowActionKeyHref = "href";
    private static final String kWorkflowActionKeyIcon = "icon";
    private static final String kWorkflowActionKeyInputs = "inputs";
    private static final String kWorkflowActionKeyLinks = "_links";
    private static final String kWorkflowActionKeyName = "name";
    private static final String kWorkflowActionKeyOutputs = "outputs";
    private static final String kWorkflowActionKeySubType = "subtype";
    private static final String kWorkflowActionKeyType = "type";
    private static final String kWorkflowActionKeyTypes = "types";
    private static final String kWorkflowActionKeyWidth = "width";
    private static final String kWorkflowActionKeyXPlatform = "x-platform";
    private String _actionDescription;
    private Drawable _actionIcon;
    private String _actionId;
    private String _actionName;
    private String _applicationPackageName;
    private String _componentName;
    private int _iconHeight;
    private String _iconHref;
    private String _iconType;
    private int _iconWidth;
    private JSONObject _localizedDescription;
    private JSONObject _localizedString;
    private ArrayList<Adobe360WorkflowActionInput> _privateInputs;
    private ArrayList<Adobe360WorkflowActionOutput> _privateOutputs;
    private boolean _readFromPackageManager;
    private String _subType;
    private Adobe360WorkflowActionType _type;

    Adobe360WorkflowAction() {
        this._privateInputs = new ArrayList<>();
        this._privateOutputs = new ArrayList<>();
    }

    Adobe360WorkflowAction(String str, String str2, Adobe360WorkflowActionType adobe360WorkflowActionType, String str3, ArrayList<Adobe360WorkflowActionInput> arrayList, ArrayList<Adobe360WorkflowActionOutput> arrayList2) {
        this._applicationPackageName = str;
        this._componentName = str2;
        this._type = adobe360WorkflowActionType;
        this._subType = str3;
        this._privateInputs = new ArrayList<>(arrayList);
        this._privateOutputs = new ArrayList<>(arrayList2);
    }

    public static Adobe360WorkflowAction createActionFromActionRegistryData(JSONObject jSONObject) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (jSONObject == null) {
            return null;
        }
        Adobe360WorkflowAction adobe360WorkflowAction = new Adobe360WorkflowAction();
        adobe360WorkflowAction._actionId = jSONObject.optString("id");
        adobe360WorkflowAction._localizedString = jSONObject.optJSONObject("name");
        adobe360WorkflowAction._localizedDescription = jSONObject.optJSONObject("description");
        adobe360WorkflowAction._type = Adobe360WorkflowActionType.getActionType(jSONObject.optString("type"));
        adobe360WorkflowAction._subType = jSONObject.optString(kWorkflowActionKeySubType);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(kWorkflowActionKeyXPlatform);
        adobe360WorkflowAction._applicationPackageName = jSONObject.optString(kWorkflowActionKeyAppPackageName);
        adobe360WorkflowAction._componentName = jSONObjectOptJSONObject.optString(kWorkflowActionKeyComponentName);
        adobe360WorkflowAction._iconHref = jSONObject.optJSONObject("_links").optJSONObject(kWorkflowActionKeyIcon).optString("href");
        adobe360WorkflowAction._iconType = jSONObject.optJSONObject("_links").optJSONObject(kWorkflowActionKeyIcon).optString("type");
        adobe360WorkflowAction._iconWidth = jSONObject.optJSONObject("_links").optJSONObject(kWorkflowActionKeyIcon).optInt("width");
        adobe360WorkflowAction._iconHeight = jSONObject.optJSONObject("_links").optJSONObject(kWorkflowActionKeyIcon).optInt("height");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("inputs");
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
            String strOptString = jSONObjectOptJSONObject2.optString("name");
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray(kWorkflowActionKeyTypes);
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList(jSONArrayOptJSONArray2.length());
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    arrayList3.add(jSONArrayOptJSONArray2.optString(i2));
                }
                arrayList2 = arrayList3;
            } else {
                arrayList2 = null;
            }
            adobe360WorkflowAction._privateInputs.add(new Adobe360WorkflowActionInput(strOptString, arrayList2));
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("outputs");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray3.optJSONObject(i3);
                String strOptString2 = jSONObjectOptJSONObject3.optString("name");
                JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject3.optJSONArray(kWorkflowActionKeyTypes);
                if (jSONArrayOptJSONArray4 != null) {
                    ArrayList arrayList4 = new ArrayList(jSONArrayOptJSONArray4.length());
                    for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                        arrayList4.add(jSONArrayOptJSONArray4.optString(i4));
                    }
                    arrayList = arrayList4;
                } else {
                    arrayList = null;
                }
                adobe360WorkflowAction._privateOutputs.add(new Adobe360WorkflowActionOutput(strOptString2, arrayList));
            }
        }
        adobe360WorkflowAction._readFromPackageManager = false;
        return adobe360WorkflowAction;
    }

    public static Adobe360WorkflowAction createActionFromPackageManagerData(String str, String str2, Adobe360WorkflowActionType adobe360WorkflowActionType, String str3, String str4, Drawable drawable, JSONObject jSONObject) {
        Adobe360WorkflowAction adobe360WorkflowAction = new Adobe360WorkflowAction();
        adobe360WorkflowAction._applicationPackageName = str;
        adobe360WorkflowAction._componentName = str2;
        adobe360WorkflowAction._type = adobe360WorkflowActionType;
        adobe360WorkflowAction._actionId = jSONObject.optString("id");
        adobe360WorkflowAction._subType = jSONObject.optString(kWorkflowActionKeySubType);
        adobe360WorkflowAction._actionName = str3;
        adobe360WorkflowAction._actionDescription = str4;
        adobe360WorkflowAction._actionIcon = drawable;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("inputs");
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            String strOptString = jSONObjectOptJSONObject.optString("name");
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(kWorkflowActionKeyTypes);
            ArrayList arrayList = null;
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList2 = new ArrayList(jSONArrayOptJSONArray2.length());
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    arrayList2.add(jSONArrayOptJSONArray2.optString(i2));
                }
                arrayList = arrayList2;
            }
            adobe360WorkflowAction._privateInputs.add(new Adobe360WorkflowActionInput(strOptString, arrayList));
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("outputs");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray3.optJSONObject(i3);
                String strOptString2 = jSONObjectOptJSONObject2.optString("name");
                JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject2.optJSONArray(kWorkflowActionKeyTypes);
                ArrayList arrayList3 = null;
                if (jSONArrayOptJSONArray4 != null) {
                    ArrayList arrayList4 = new ArrayList(jSONArrayOptJSONArray4.length());
                    for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                        arrayList4.add(jSONArrayOptJSONArray4.optString(i4));
                    }
                    arrayList3 = arrayList4;
                }
                adobe360WorkflowAction._privateOutputs.add(new Adobe360WorkflowActionOutput(strOptString2, arrayList3));
            }
        }
        adobe360WorkflowAction._readFromPackageManager = true;
        return adobe360WorkflowAction;
    }

    void addInput(Adobe360WorkflowActionInput adobe360WorkflowActionInput) {
        this._privateInputs.add(adobe360WorkflowActionInput);
    }

    void addOutput(Adobe360WorkflowActionOutput adobe360WorkflowActionOutput) {
        this._privateOutputs.add(adobe360WorkflowActionOutput);
    }

    void removeInput(Adobe360WorkflowActionInput adobe360WorkflowActionInput) {
        this._privateInputs.remove(adobe360WorkflowActionInput);
    }

    void removeOutput(Adobe360WorkflowActionOutput adobe360WorkflowActionOutput) {
        this._privateOutputs.remove(adobe360WorkflowActionOutput);
    }

    public void retriveAppIcon(final IAdobeGenericCompletionCallback<Bitmap> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        if (!this._readFromPackageManager) {
            Adobe360WorkflowSession.getSharedSession().downloadAppIconFromPath(this._iconHref, new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowAction.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(byte[] bArr) {
                    iAdobeGenericCompletionCallback.onCompletion(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                }
            }, new IAdobeGenericErrorCallback<AdobeNetworkException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowAction.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGenericErrorCallback.onError(adobeNetworkException);
                }
            }, handler);
        } else if (iAdobeGenericCompletionCallback != null) {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowAction.3
                @Override // java.lang.Runnable
                public void run() {
                    final Bitmap bitmap = ((BitmapDrawable) Adobe360WorkflowAction.this._actionIcon).getBitmap();
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowAction.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericCompletionCallback.onCompletion(bitmap);
                            }
                        });
                    } else {
                        iAdobeGenericCompletionCallback.onCompletion(bitmap);
                    }
                }
            }).start();
        }
    }

    public String getActionId() {
        return this._actionId;
    }

    public String getApplicationPackageName() {
        return this._applicationPackageName;
    }

    public String getComponentName() {
        return this._componentName;
    }

    public Adobe360WorkflowActionType getType() {
        return this._type;
    }

    public String getSubType() {
        return this._subType;
    }

    public URL getImageURL() {
        try {
            return new URL(this._iconHref);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String getName() {
        if (this._readFromPackageManager) {
            return this._actionName;
        }
        return this._localizedString.optString(Locale.getDefault().getLanguage());
    }

    public String getDescription() {
        if (this._readFromPackageManager) {
            return this._actionDescription;
        }
        return this._localizedDescription.optString(Locale.getDefault().getLanguage());
    }

    public ArrayList<Adobe360WorkflowActionInput> getInputs() {
        return this._privateInputs;
    }

    public ArrayList<Adobe360WorkflowActionOutput> getOutputs() {
        return this._privateOutputs;
    }

    public boolean readFromPackageManager() {
        return this._readFromPackageManager;
    }
}
