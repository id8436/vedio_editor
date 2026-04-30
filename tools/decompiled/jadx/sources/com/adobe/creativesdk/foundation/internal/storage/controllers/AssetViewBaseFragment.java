package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.support.v4.app.Fragment;
import com.adobe.creativesdk.foundation.internal.customviews.CustomFontTabLayout;

/* JADX INFO: loaded from: classes.dex */
public class AssetViewBaseFragment extends Fragment {
    protected static CustomFontTabLayout tabLayoutLoki;

    public void setVisibilityTab(boolean z) {
        if (tabLayoutLoki != null) {
            if (z) {
                tabLayoutLoki.setVisibility(0);
            } else {
                tabLayoutLoki.setVisibility(8);
            }
        }
    }
}
