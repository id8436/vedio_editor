package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeUxFragmentController {
    boolean isAtRootFragment();

    boolean onBackPressed();

    void onCreate(FragmentActivity fragmentActivity, int i, Bundle bundle);

    void onDestroy();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();
}
