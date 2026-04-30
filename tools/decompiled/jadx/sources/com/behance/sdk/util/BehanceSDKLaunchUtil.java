package com.behance.sdk.util;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.behance.sdk.BehanceSDKImageSelectorOptions;
import com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKLaunchUtil {
    public static void launchAlbumsViewToPickPicture(BehanceSDKImageSelectorDialogFragment.Callbacks callbacks, BehanceSDKImageSelectorOptions behanceSDKImageSelectorOptions, FragmentManager fragmentManager, String str) {
        BehanceSDKImageSelectorDialogFragment behanceSDKImageSelectorDialogFragment = BehanceSDKImageSelectorDialogFragment.getInstance(callbacks, behanceSDKImageSelectorOptions);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(str);
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        behanceSDKImageSelectorDialogFragment.show(fragmentTransactionBeginTransaction, str);
    }
}
