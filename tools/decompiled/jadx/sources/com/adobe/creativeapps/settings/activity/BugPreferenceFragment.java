package com.adobe.creativeapps.settings.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativeapps.settings.R;
import com.h.a.d;

/* JADX INFO: loaded from: classes.dex */
public class BugPreferenceFragment extends BasePreferenceFragment {
    private static final int MAX_HEIGHT = 1080;
    private static final int MAX_WIDTH = 1920;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bug_preference, viewGroup, false);
        d.a(viewInflate);
        setUX(viewInflate);
        return viewInflate;
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment
    protected void setUX(View view) {
        setSwitchUX(view);
        setPreviewUX(view);
        setAssetChangeUX(view);
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment
    protected void setPreviewUX(View view) {
        float f2;
        float f3;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.bug_preview_wrapper);
        ImageView imageView = (ImageView) view.findViewById(R.id.bug_frame);
        imageView.getLayoutParams().width = this.width;
        imageView.getLayoutParams().height = (this.width * 9) / 16;
        relativeLayout.getLayoutParams().width = this.width;
        relativeLayout.getLayoutParams().height = (this.width * 9) / 16;
        ImageView imageView2 = (ImageView) view.findViewById(R.id.bug_preview);
        this.assetPath = this.ccAppSettingsPreference.getBugPath();
        this.assetName = this.ccAppSettingsPreference.getBugName();
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.asset_load);
        int i = this.width;
        int i2 = imageView.getLayoutParams().height;
        imageView.setImageBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.background_bug), i, i2, true));
        TextView textView = (TextView) view.findViewById(R.id.change_asset);
        if (this.assetPath == null || this.assetPath.equals("")) {
            imageView2.setImageURI(null);
            relativeLayout.setVisibility(8);
            view.findViewById(R.id.bug_preview_title_wrapper).setVisibility(8);
            textView.setText(getString(R.string.select_asset));
            return;
        }
        view.findViewById(R.id.bug_preview_title_wrapper).setVisibility(0);
        relativeLayout.setVisibility(0);
        textView.setText(getString(R.string.change_bug_asset));
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(this.assetPath, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        float f4 = i / i2;
        float f5 = i3 / i4;
        if (i3 > i4) {
            f3 = (i / 1920.0f) * i3;
            f2 = f3 / f5;
        } else {
            f2 = i4 * (i2 / 1080.0f);
            f3 = f2 * f5;
        }
        if (f3 > i || f2 > i2) {
            if (f5 > f4) {
                f3 = i;
                f2 = i / f5;
            } else {
                f3 = i2 * f5;
                f2 = i2;
            }
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(this.assetPath);
        if (bitmapDecodeFile != null) {
            imageView2.setImageBitmap(Bitmap.createScaledBitmap(bitmapDecodeFile, (int) f3, (int) f2, true));
        }
        progressBar.setVisibility(4);
        ((TextView) view.findViewById(R.id.bug_file_name)).setText(this.assetName);
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment
    protected void setPreferenceState(boolean z) {
        this.ccAppSettingsPreference.setBugState(z);
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment, android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.assetState = this.ccAppSettingsPreference.getBugState();
        this.assetPath = this.ccAppSettingsPreference.getBugPath();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.width = point.x - ((int) (2.0f * activity.getResources().getDimension(R.dimen.bug_preview_margin)));
        this.height = (this.width * 9) / 16;
    }

    private void setAssetChangeUX(View view) {
        view.findViewById(R.id.change_asset_view).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.BugPreferenceFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BugPreferenceFragment.this.ccAppSettingsPreference.onRequestMedia();
            }
        });
    }
}
