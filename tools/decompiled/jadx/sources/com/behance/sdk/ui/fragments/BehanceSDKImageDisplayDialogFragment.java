package com.behance.sdk.ui.fragments;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.BehanceSDKDisplayImagePagerAdapter;
import com.behance.sdk.ui.animations.BehanceSDKZoomOutPageTransformer;
import com.behance.sdk.ui.components.BehanceSDKHackyViewPager;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageDisplayDialogFragment extends DialogFragment {
    private static final String ARG_IMAGES_URLS_ARRAY = "ARG_IMAGES_URLS_ARRAY";
    private static final String ARG_STARTING_IMAGE_NUMBER = "ARG_STARTING_IMAGE_NUMBER";

    public static BehanceSDKImageDisplayDialogFragment getInstance(String[] strArr, int i) {
        BehanceSDKImageDisplayDialogFragment behanceSDKImageDisplayDialogFragment = new BehanceSDKImageDisplayDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putStringArray(ARG_IMAGES_URLS_ARRAY, strArr);
        bundle.putInt(ARG_STARTING_IMAGE_NUMBER, i);
        behanceSDKImageDisplayDialogFragment.setArguments(bundle);
        return behanceSDKImageDisplayDialogFragment;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BsdkImageDisplayDialogTheme);
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.requestWindowFeature(1);
        return dialogOnCreateDialog;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        BehanceSDKHackyViewPager behanceSDKHackyViewPager = (BehanceSDKHackyViewPager) layoutInflater.inflate(R.layout.bsdk_fragment_image_display, viewGroup, false);
        int i = getArguments().getInt(ARG_STARTING_IMAGE_NUMBER);
        behanceSDKHackyViewPager.setAdapter(new BehanceSDKDisplayImagePagerAdapter(getChildFragmentManager(), getArguments().getStringArray(ARG_IMAGES_URLS_ARRAY)));
        behanceSDKHackyViewPager.setPageTransformer(false, new BehanceSDKZoomOutPageTransformer());
        behanceSDKHackyViewPager.setCurrentItem(i, false);
        return behanceSDKHackyViewPager;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
