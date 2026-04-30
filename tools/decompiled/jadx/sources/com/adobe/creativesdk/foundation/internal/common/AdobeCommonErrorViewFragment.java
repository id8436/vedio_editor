package com.adobe.creativesdk.foundation.internal.common;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.auth.R;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommonErrorViewFragment extends Fragment {
    ViewGroup fragmentContainer = null;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_csdk_common_errorview, viewGroup, false);
        this.fragmentContainer = viewGroup;
        return viewInflate;
    }

    public void setMessage(String str) {
        if (this.fragmentContainer != null) {
            ((TextView) this.fragmentContainer.findViewById(R.id.adobe_csdk_common_view_error_message)).setText(str.toCharArray(), 0, str.length());
        }
    }
}
