package com.facebook.i;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;

/* JADX INFO: compiled from: FacebookDialogFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class u extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f2373a;

    public void a(Dialog dialog) {
        this.f2373a = dialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        ba abVar;
        super.onCreate(bundle);
        if (this.f2373a == null) {
            FragmentActivity activity = getActivity();
            Bundle bundleC = ah.c(activity.getIntent());
            if (!bundleC.getBoolean("is_fallback", false)) {
                String string = bundleC.getString(AdobeAnalyticsSDKReporter.AnalyticAction);
                Bundle bundle2 = bundleC.getBundle("params");
                if (as.a(string)) {
                    as.a("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                    activity.finish();
                    return;
                }
                abVar = new bf(activity, string, bundle2).a(new v(this)).a();
            } else {
                String string2 = bundleC.getString("url");
                if (as.a(string2)) {
                    as.a("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    activity.finish();
                    return;
                } else {
                    abVar = new ab(activity, string2, String.format("fb%s://bridge/", com.facebook.w.i()));
                    abVar.a(new w(this));
                }
            }
            this.f2373a = abVar;
        }
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f2373a == null) {
            a((Bundle) null, (com.facebook.q) null);
            setShowsDialog(false);
        }
        return this.f2373a;
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f2373a instanceof ba) {
            ((ba) this.f2373a).d();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle, com.facebook.q qVar) {
        FragmentActivity activity = getActivity();
        activity.setResult(qVar == null ? -1 : 0, ah.a(activity.getIntent(), bundle, qVar));
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle) {
        FragmentActivity activity = getActivity();
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }
}
