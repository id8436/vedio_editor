package com.adobe.creativesdk.foundation.internal.adobe360;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowAction;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionType;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowPMHelper {
    private static Adobe360WorkflowPMHelper _sharedInsatnce = null;
    public static final String kAdobeActionCapture = "com.adobe.360action.CAPTURE";
    public static final String kAdobeActionCaptureN = "com.adobe.360action.CAPTUREN";
    public static final String kAdobeActionEdit = "com.adobe.360action.EDIT";
    public static final String kAdobeActionEmbed = "com.adobe.360action.EMBED";
    public static final String kAdobeActionEmbedN = "com.adobe.360action.EMBEDN";
    private static final String kAdobeMetadataKey = "com.adobe.360action.metadata";
    private static final String kAdobeTypeKey = "action-type";
    private ArrayList<String> _actionList;

    public Adobe360WorkflowPMHelper() {
        this._actionList = null;
        this._actionList = new ArrayList<>();
        this._actionList.add(kAdobeActionEdit);
        this._actionList.add(kAdobeActionCapture);
        this._actionList.add(kAdobeActionEmbed);
        this._actionList.add(kAdobeActionEmbedN);
        this._actionList.add(kAdobeActionCaptureN);
    }

    public static Adobe360WorkflowPMHelper getSharedInsatnce() {
        synchronized (Adobe360WorkflowSession.class) {
            if (_sharedInsatnce == null) {
                _sharedInsatnce = new Adobe360WorkflowPMHelper();
            }
        }
        return _sharedInsatnce;
    }

    private String get360WorkflowActionType(String str) {
        if (str.equals(kAdobeActionEdit)) {
            return Adobe360WorkflowActionType.Adobe360WorkflowActionEdit.toString();
        }
        if (str.equals(kAdobeActionCapture)) {
            return Adobe360WorkflowActionType.Adobe360WorkflowActionCapture.toString();
        }
        if (str.equals(kAdobeActionEmbed)) {
            return Adobe360WorkflowActionType.Adobe360WorkflowActionEmbed.toString();
        }
        if (str.equals(kAdobeActionEmbedN)) {
            return Adobe360WorkflowActionType.Adobe360WorkflowActionEmbedN.toString();
        }
        if (str.equals(kAdobeActionCaptureN)) {
            return Adobe360WorkflowActionType.Adobe360WorkflowActionCaptureN.toString();
        }
        return null;
    }

    private JSONObject getMatcingActionDict(String str, JSONArray jSONArray) {
        String str2 = get360WorkflowActionType(str);
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject.optString(kAdobeTypeKey).equals(str2)) {
                return jSONObjectOptJSONObject;
            }
        }
        return null;
    }

    public ArrayList<Adobe360WorkflowAction> fetchActionsFromInstalledApps() {
        PackageManager packageManager = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getPackageManager();
        ArrayList<Adobe360WorkflowAction> arrayList = new ArrayList<>();
        for (String str : this._actionList) {
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent(str), 0)) {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), 129);
                    CharSequence charSequenceLoadLabel = activityInfo.applicationInfo.loadLabel(packageManager);
                    if (charSequenceLoadLabel == null) {
                        charSequenceLoadLabel = resolveInfo.nonLocalizedLabel;
                    }
                    StringBuilder sb = new StringBuilder(charSequenceLoadLabel.length());
                    sb.append(charSequenceLoadLabel);
                    String string = sb.toString();
                    try {
                        JSONObject matcingActionDict = getMatcingActionDict(str, new JSONArray(activityInfo.metaData.getString(kAdobeMetadataKey)));
                        String str2 = get360WorkflowActionType(str);
                        CharSequence charSequenceLoadLabel2 = resolveInfo.loadLabel(packageManager);
                        if (charSequenceLoadLabel2 == null) {
                            charSequenceLoadLabel2 = resolveInfo.nonLocalizedLabel;
                        }
                        StringBuilder sb2 = new StringBuilder(charSequenceLoadLabel2.length());
                        sb2.append(charSequenceLoadLabel2);
                        arrayList.add(Adobe360WorkflowAction.createActionFromPackageManagerData(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name, Adobe360WorkflowActionType.getActionType(str2), string, sb2.toString(), resolveInfo.loadIcon(packageManager), matcingActionDict));
                    } catch (Exception e2) {
                        AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowPMHelper", null, e2);
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowPMHelper", null, e3);
                }
            }
        }
        return arrayList;
    }
}
