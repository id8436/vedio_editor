package com.adobe.creativesdk.foundation.internal.utils;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class BannerViewUtil {
    private EditSummaryBanner _editSummaryBanner;
    private Activity host;

    public BannerViewUtil(Activity activity) {
        this.host = activity;
    }

    public EditSummaryBanner createEditSummaryView() {
        if (this._editSummaryBanner != null) {
            return this._editSummaryBanner;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.host);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.host.getResources().getDimensionPixelSize(R.dimen.adobe_csdk_theme_actionbar_size)));
        relativeLayout.setGravity(17);
        CreativeSDKTextView creativeSDKTextView = new CreativeSDKTextView(this.host);
        ViewGroup.LayoutParams layoutParams = creativeSDKTextView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        } else {
            layoutParams.height = -2;
            layoutParams.width = -2;
        }
        creativeSDKTextView.setLayoutParams(layoutParams);
        creativeSDKTextView.setTextColor(-1);
        creativeSDKTextView.setTextSize(0, this.host.getResources().getDimension(R.dimen.adobe_csdk_assetbrowser_grid_text_size));
        relativeLayout.addView(creativeSDKTextView);
        this._editSummaryBanner = new EditSummaryBanner();
        this._editSummaryBanner.bannerTitle = creativeSDKTextView;
        this._editSummaryBanner.bannerView = relativeLayout;
        this._editSummaryBanner.bannerView.setVisibility(8);
        return this._editSummaryBanner;
    }

    public class EditSummaryBanner {
        private TextView bannerTitle;
        private View bannerView;

        public EditSummaryBanner() {
        }

        public View getBannerView() {
            return this.bannerView;
        }

        public TextView getBannerTitleView() {
            return this.bannerTitle;
        }
    }
}
