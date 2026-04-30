package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.os.Handler;
import c.a.a.a.a.b.a;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowPMHelper;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowActionsManager {
    private List<Adobe360WorkflowAction> _actions = null;
    private boolean mActionTaskInProgress = false;
    private static Adobe360WorkflowActionsManager _sharedInsatnce = null;
    private static String TAG = "Adobe360WorkflowActionsManager";

    public static Adobe360WorkflowActionsManager getSharedInstance() {
        synchronized (Adobe360WorkflowSession.class) {
            if (_sharedInsatnce == null) {
                _sharedInsatnce = new Adobe360WorkflowActionsManager();
            }
        }
        return _sharedInsatnce;
    }

    private static void issueErrorCallback(final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler, final AdobeCSDKException adobeCSDKException) {
        if (iAdobeGenericErrorCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionsManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                });
            } else {
                iAdobeGenericErrorCallback.onError(adobeCSDKException);
            }
        }
    }

    public List<Adobe360WorkflowAction> getActions() {
        return this._actions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getActionsUrl() {
        String str;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "http://apps.adobe.io/v1/actions";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
                str = "http://apps-stage.adobe.io/v1/actions";
                break;
            default:
                str = "http://apps-dev.adobe.io/v1/actions";
                break;
        }
        String language = Locale.getDefault().getLanguage();
        return str + URIUtil.SLASH + language + URIUtil.SLASH + language + ".json";
    }

    public void fetchActions(final IAdobeGenericCompletionCallback<Void> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        synchronized (this) {
            if (this.mActionTaskInProgress) {
                AdobeLogger.log(Level.ERROR, TAG, "Action Registry task in progress.");
                issueErrorCallback(iAdobeGenericErrorCallback, handler, new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorActionRegistryUpdationInProgress, "Action Registry task in progress"));
            } else {
                new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionsManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (Adobe360WorkflowActionsManager.this) {
                            Adobe360WorkflowActionsManager.this.mActionTaskInProgress = true;
                        }
                        try {
                            try {
                                Adobe360WorkflowActionsManager.this._actions = Collections.synchronizedList(new ArrayList());
                                final ReentrantLock reentrantLock = new ReentrantLock();
                                final Condition conditionNewCondition = reentrantLock.newCondition();
                                final boolean[] zArr = {false};
                                final JSONArray[] jSONArrayArr = {null};
                                Adobe360WorkflowSession.getSharedSession().actionRegistryArrayFromPath(Adobe360WorkflowActionsManager.this.getActionsUrl(), new IAdobeGenericCompletionCallback<JSONArray>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionsManager.2.1
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                    public void onCompletion(JSONArray jSONArray) {
                                        reentrantLock.lock();
                                        try {
                                            zArr[0] = true;
                                            jSONArrayArr[0] = jSONArray;
                                            conditionNewCondition.signal();
                                        } finally {
                                            reentrantLock.unlock();
                                        }
                                    }
                                }, new IAdobeGenericErrorCallback<AdobeNetworkException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionsManager.2.2
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                    public void onError(AdobeNetworkException adobeNetworkException) {
                                        reentrantLock.lock();
                                        try {
                                            zArr[0] = true;
                                            conditionNewCondition.signal();
                                        } finally {
                                            reentrantLock.unlock();
                                        }
                                    }
                                }, null);
                                reentrantLock.lock();
                                while (!zArr[0]) {
                                    try {
                                        try {
                                            conditionNewCondition.await();
                                        } catch (InterruptedException e2) {
                                            e2.printStackTrace();
                                        }
                                    } catch (Throwable th) {
                                        reentrantLock.unlock();
                                        throw th;
                                    }
                                }
                                reentrantLock.unlock();
                                if (jSONArrayArr[0] != null) {
                                    for (int i = 0; i < jSONArrayArr[0].length(); i++) {
                                        JSONObject jSONObjectOptJSONObject = jSONArrayArr[0].optJSONObject(i);
                                        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optString("platform").equals(a.ANDROID_CLIENT_TYPE)) {
                                            Adobe360WorkflowActionsManager.this._actions.add(Adobe360WorkflowAction.createActionFromActionRegistryData(jSONObjectOptJSONObject));
                                        }
                                    }
                                }
                                ArrayList<Adobe360WorkflowAction> arrayListFetchActionsFromInstalledApps = Adobe360WorkflowPMHelper.getSharedInsatnce().fetchActionsFromInstalledApps();
                                if (arrayListFetchActionsFromInstalledApps != null) {
                                    Iterator<Adobe360WorkflowAction> it = arrayListFetchActionsFromInstalledApps.iterator();
                                    while (it.hasNext()) {
                                        Adobe360WorkflowActionsManager.this.removeActionFromList(it.next().getApplicationPackageName());
                                    }
                                    Adobe360WorkflowActionsManager.this._actions.addAll(arrayListFetchActionsFromInstalledApps);
                                }
                                if (iAdobeGenericCompletionCallback != null) {
                                    if (handler != null) {
                                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionsManager.2.3
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                iAdobeGenericCompletionCallback.onCompletion(null);
                                            }
                                        });
                                    } else {
                                        iAdobeGenericCompletionCallback.onCompletion(null);
                                    }
                                }
                                synchronized (Adobe360WorkflowActionsManager.this) {
                                    Adobe360WorkflowActionsManager.this.mActionTaskInProgress = false;
                                }
                            } catch (Throwable th2) {
                                synchronized (Adobe360WorkflowActionsManager.this) {
                                    Adobe360WorkflowActionsManager.this.mActionTaskInProgress = false;
                                    throw th2;
                                }
                            }
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            synchronized (Adobe360WorkflowActionsManager.this) {
                                Adobe360WorkflowActionsManager.this.mActionTaskInProgress = false;
                            }
                        }
                    }
                }).start();
            }
        }
    }

    private void filterBasedOnType(List<Adobe360WorkflowAction> list, Adobe360WorkflowActionFilter adobe360WorkflowActionFilter, List<Adobe360WorkflowAction> list2) {
        ArrayList<Adobe360WorkflowActionType> actionTypes;
        boolean z;
        if (adobe360WorkflowActionFilter.getActionTypes() != null && adobe360WorkflowActionFilter.getActionTypes().size() != 0 && (actionTypes = adobe360WorkflowActionFilter.getActionTypes()) != null && actionTypes.size() > 0) {
            AdobeLogger.log(Level.DEBUG, TAG, actionTypes.toString());
            for (Adobe360WorkflowAction adobe360WorkflowAction : list2) {
                int i = 0;
                while (true) {
                    if (i < actionTypes.size()) {
                        if (adobe360WorkflowAction.getType().toString().compareToIgnoreCase(actionTypes.get(i).toString()) != 0) {
                            i++;
                        } else {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    list.remove(adobe360WorkflowAction);
                }
            }
        }
    }

    private void filterBasedOnSubType(List<Adobe360WorkflowAction> list, Adobe360WorkflowActionFilter adobe360WorkflowActionFilter, List<Adobe360WorkflowAction> list2) {
        boolean z;
        if (adobe360WorkflowActionFilter.getSubTypes() != null && adobe360WorkflowActionFilter.getSubTypes().size() != 0) {
            ArrayList<String> subTypes = adobe360WorkflowActionFilter.getSubTypes();
            for (Adobe360WorkflowAction adobe360WorkflowAction : list2) {
                int i = 0;
                while (true) {
                    if (i >= subTypes.size()) {
                        z = false;
                        break;
                    }
                    if (adobe360WorkflowAction.getSubType().compareToIgnoreCase(subTypes.get(i)) != 0) {
                        i++;
                    } else {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    list.remove(adobe360WorkflowAction);
                }
            }
        }
    }

    private void filterBasedOnInputType(List<Adobe360WorkflowAction> list, Adobe360WorkflowActionFilter adobe360WorkflowActionFilter, List<Adobe360WorkflowAction> list2) {
        boolean z;
        if (adobe360WorkflowActionFilter.getInputs() != null && adobe360WorkflowActionFilter.getInputs().size() != 0) {
            ArrayList<Adobe360WorkflowActionInput> inputs = adobe360WorkflowActionFilter.getInputs();
            for (Adobe360WorkflowAction adobe360WorkflowAction : list2) {
                ArrayList<Adobe360WorkflowActionInput> inputs2 = adobe360WorkflowAction.getInputs();
                if (inputs2 == null || inputs2.size() <= 0) {
                    z = false;
                } else {
                    Iterator<Adobe360WorkflowActionInput> it = inputs2.iterator();
                    z = false;
                    while (it.hasNext()) {
                        ArrayList<String> acceptedMediaTypes = it.next().getAcceptedMediaTypes();
                        if (acceptedMediaTypes != null && acceptedMediaTypes.size() > 0) {
                            for (String str : acceptedMediaTypes) {
                                int i = 0;
                                boolean z2 = z;
                                while (true) {
                                    if (i >= inputs.size()) {
                                        z = z2;
                                        break;
                                    }
                                    if (inputs.get(i).getAcceptedMediaTypes() != null) {
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= inputs.get(i).getAcceptedMediaTypes().size()) {
                                                break;
                                            }
                                            if (str.compareToIgnoreCase(inputs.get(i).getAcceptedMediaTypes().get(i2)) != 0) {
                                                i2++;
                                            } else {
                                                z2 = true;
                                                break;
                                            }
                                        }
                                    }
                                    if (z2) {
                                        z = z2;
                                        break;
                                    }
                                    i++;
                                }
                                if (z) {
                                    break;
                                }
                            }
                        }
                        z = z;
                    }
                }
                if (!z) {
                    list.remove(adobe360WorkflowAction);
                }
            }
        }
    }

    private void filterBasedOnOutputType(List<Adobe360WorkflowAction> list, Adobe360WorkflowActionFilter adobe360WorkflowActionFilter, List<Adobe360WorkflowAction> list2) {
        boolean z;
        if (adobe360WorkflowActionFilter.getOutputs() != null && adobe360WorkflowActionFilter.getOutputs().size() != 0) {
            ArrayList<Adobe360WorkflowActionOutput> outputs = adobe360WorkflowActionFilter.getOutputs();
            for (Adobe360WorkflowAction adobe360WorkflowAction : list2) {
                ArrayList<Adobe360WorkflowActionOutput> outputs2 = adobe360WorkflowAction.getOutputs();
                if (outputs2 == null || outputs2.size() <= 0) {
                    z = false;
                } else {
                    Iterator<Adobe360WorkflowActionOutput> it = outputs2.iterator();
                    z = false;
                    while (it.hasNext()) {
                        ArrayList<String> types = it.next().getTypes();
                        if (types != null && types.size() > 0) {
                            for (String str : types) {
                                int i = 0;
                                boolean z2 = z;
                                while (true) {
                                    if (i >= outputs.size()) {
                                        z = z2;
                                        break;
                                    }
                                    if (outputs.get(i).getTypes() != null) {
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= outputs.get(i).getTypes().size()) {
                                                break;
                                            }
                                            if (str.compareToIgnoreCase(outputs.get(i).getTypes().get(i2)) != 0) {
                                                i2++;
                                            } else {
                                                z2 = true;
                                                break;
                                            }
                                        }
                                    }
                                    if (z2) {
                                        z = z2;
                                        break;
                                    }
                                    i++;
                                }
                                if (z) {
                                    break;
                                }
                            }
                        }
                        z = z;
                    }
                }
                if (!z) {
                    list.remove(adobe360WorkflowAction);
                }
            }
        }
    }

    public List<Adobe360WorkflowAction> getActions(Adobe360WorkflowActionFilter adobe360WorkflowActionFilter) {
        if (adobe360WorkflowActionFilter == null) {
            return new ArrayList(this._actions);
        }
        ArrayList arrayList = new ArrayList(this._actions);
        ArrayList arrayList2 = new ArrayList(arrayList);
        filterBasedOnType(arrayList2, adobe360WorkflowActionFilter, arrayList);
        arrayList.clear();
        arrayList.addAll(arrayList2);
        filterBasedOnSubType(arrayList2, adobe360WorkflowActionFilter, arrayList);
        arrayList.clear();
        arrayList.addAll(arrayList2);
        filterBasedOnInputType(arrayList2, adobe360WorkflowActionFilter, arrayList);
        arrayList.clear();
        arrayList.addAll(arrayList2);
        filterBasedOnOutputType(arrayList2, adobe360WorkflowActionFilter, arrayList);
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeActionFromList(String str) {
        Iterator<Adobe360WorkflowAction> it = this._actions.iterator();
        while (it.hasNext()) {
            if (it.next().getApplicationPackageName().equals(str)) {
                it.remove();
            }
        }
    }
}
