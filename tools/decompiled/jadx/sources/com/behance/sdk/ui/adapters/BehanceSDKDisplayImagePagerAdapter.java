package com.behance.sdk.ui.adapters;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.behance.sdk.ui.fragments.BehanceSDKImageDisplayGifPageItemFragment;
import com.behance.sdk.ui.fragments.BehanceSDKImageDisplayPageItemFragment;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKDisplayImagePagerAdapter extends FragmentStatePagerAdapter {
    private String[] mImageURLsArray;
    private int mNumberOfImages;

    public BehanceSDKDisplayImagePagerAdapter(FragmentManager fragmentManager, String[] strArr) {
        super(fragmentManager);
        this.mImageURLsArray = strArr;
        if (strArr != null) {
            this.mNumberOfImages = strArr.length;
        } else {
            this.mNumberOfImages = 0;
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mNumberOfImages;
    }

    @Override // android.support.v4.app.FragmentStatePagerAdapter
    public Fragment getItem(int i) {
        String str = this.mImageURLsArray[i];
        return str.substring(str.length() + (-5), str.length()).contains(AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF) ? BehanceSDKImageDisplayGifPageItemFragment.newInstance(this.mImageURLsArray[i], true) : BehanceSDKImageDisplayPageItemFragment.newInstance(this.mImageURLsArray[i], true);
    }
}
