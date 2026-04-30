package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.FrameLayout;
import com.behance.sdk.R;
import com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment;
import com.behance.sdk.listeners.BehanceSDKImageLoadListener;
import com.behance.sdk.ui.components.BehanceSDKCropView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCropperActivity extends AppCompatActivity implements BehanceSDKCropperHeadlessFragment.Callbacks {
    private static final String HEADLESS_FRAGMENT_TAG = "HEADLESS_FRAGMENT_TAG_CROPPER";
    public static final String INTENT_EXTRA_IMAGE_PATH = "INTENT_EXTRA_IMAGE_PATH";
    public static final String INTENT_EXTRA_IMAGE_SAVED_TO_PATH = "INTENT_EXTRA_IMAGE_SAVED_TO_PATH";
    private FloatingActionButton bsdkCropperFab;
    private FrameLayout bsdkCropperLoader;
    private BehanceSDKCropView bsdkCropperView;
    private BehanceSDKCropperHeadlessFragment headlessFragment;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_cropper);
        this.bsdkCropperView = (BehanceSDKCropView) findViewById(R.id.bsdk_cropper_view);
        this.bsdkCropperLoader = (FrameLayout) findViewById(R.id.bsdk_cropper_loader);
        this.bsdkCropperFab = (FloatingActionButton) findViewById(R.id.bsdk_cropper_fab);
        this.headlessFragment = (BehanceSDKCropperHeadlessFragment) getSupportFragmentManager().findFragmentByTag(HEADLESS_FRAGMENT_TAG);
        if (this.headlessFragment == null) {
            this.headlessFragment = new BehanceSDKCropperHeadlessFragment();
            getSupportFragmentManager().beginTransaction().add(this.headlessFragment, HEADLESS_FRAGMENT_TAG).commit();
        }
        this.headlessFragment.setCallbacks(this);
        this.bsdkCropperView.setAspectRatio(1.0f);
        this.bsdkCropperLoader.setVisibility(0);
        if (this.headlessFragment.getFilePath() == null) {
            setupCropView(true);
            setupCropClickListener();
        } else if (this.headlessFragment.isCropInProgress()) {
            setupCropView(false);
        } else {
            handleSuccess(this.headlessFragment.getFilePath());
        }
    }

    private void setupCropView(boolean z) {
        if (getIntent() != null && getIntent().getExtras().getString(INTENT_EXTRA_IMAGE_PATH) != null) {
            if (z) {
                this.bsdkCropperView.setImageUri(Uri.parse("file://" + getIntent().getExtras().getString(INTENT_EXTRA_IMAGE_PATH)), new BehanceSDKImageLoadListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKCropperActivity.1
                    @Override // com.behance.sdk.listeners.BehanceSDKImageLoadListener
                    public void onImageLoadComplete() {
                        BehanceSDKCropperActivity.this.bsdkCropperLoader.setVisibility(8);
                    }
                });
            } else {
                this.bsdkCropperView.setImageUri(Uri.parse("file://" + getIntent().getExtras().getString(INTENT_EXTRA_IMAGE_PATH)));
            }
        }
    }

    private void setupCropClickListener() {
        this.bsdkCropperFab.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.activities.BehanceSDKCropperActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKCropperActivity.this.bsdkCropperLoader.setVisibility(0);
                BehanceSDKCropperActivity.this.headlessFragment.saveBitmap(BehanceSDKCropperActivity.this.bsdkCropperView.crop());
            }
        });
    }

    private void handleSuccess(String str) {
        Intent intent = new Intent();
        intent.putExtra(INTENT_EXTRA_IMAGE_SAVED_TO_PATH, str);
        setResult(-1, intent);
        finish();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.Callbacks
    public void onSaveSuccess(String str) {
        handleSuccess(str);
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.Callbacks
    public void onSaveFailure(Exception exc) {
        setResult(0);
        finish();
    }
}
