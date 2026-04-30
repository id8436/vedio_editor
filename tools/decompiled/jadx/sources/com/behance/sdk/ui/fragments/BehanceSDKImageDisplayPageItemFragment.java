package com.behance.sdk.ui.fragments;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.b.a.d.b.e;
import com.b.a.h;
import com.b.a.h.a.d;
import com.b.a.h.b.g;
import com.behance.sdk.R;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.github.chrisbanes.photoview.PhotoView;
import com.i.a.b.a.b;
import com.i.a.b.f.a;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageDisplayPageItemFragment extends Fragment implements a {
    private static final String ARG_URL = "ARG_URL";
    private static final String ARG_ZOOMABLE = "ARG_ZOOMABLE";
    private static final int HARDWARE_RENDERING_MAX_SIZE = 2048;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKImageDisplayPageItemFragment.class);
    private Context mContext;
    private PhotoView mImageView;
    private View progressSpinner;

    public static BehanceSDKImageDisplayPageItemFragment newInstance(String str) {
        return newInstance(str, true);
    }

    public static BehanceSDKImageDisplayPageItemFragment newInstance(String str, boolean z) {
        BehanceSDKImageDisplayPageItemFragment behanceSDKImageDisplayPageItemFragment = new BehanceSDKImageDisplayPageItemFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_URL, str);
        bundle.putBoolean(ARG_ZOOMABLE, z);
        behanceSDKImageDisplayPageItemFragment.setArguments(bundle);
        return behanceSDKImageDisplayPageItemFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.bsdk_adapter_image_display_item, viewGroup, false);
        this.mContext = getActivity();
        Bundle arguments = getArguments();
        String string = arguments.getString(ARG_URL);
        boolean z = arguments.getBoolean(ARG_ZOOMABLE, true);
        try {
            this.mImageView = (PhotoView) viewGroup2.findViewById(R.id.bsdk_imageDisplayActivityImageView);
            this.mImageView.setZoomable(z);
            this.progressSpinner = viewGroup2.findViewById(R.id.bsdk_imageDisplayActivityProgressSpinner);
            showProgressSpinner();
            if (new File(string).exists()) {
                h.a(getActivity()).a(new File(string)).h().b(e.NONE).a(new g<Bitmap>() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageDisplayPageItemFragment.1
                    @Override // com.b.a.h.b.k
                    public void onResourceReady(Bitmap bitmap, d dVar) {
                        BehanceSDKImageDisplayPageItemFragment.this.hideProgressSpinner();
                        BehanceSDKImageDisplayPageItemFragment.this.setImageViewWithBitmap(bitmap);
                    }
                });
            } else {
                h.a(getActivity()).a(string).h().a(new g<Bitmap>() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageDisplayPageItemFragment.2
                    @Override // com.b.a.h.b.k
                    public void onResourceReady(Bitmap bitmap, d dVar) {
                        BehanceSDKImageDisplayPageItemFragment.this.hideProgressSpinner();
                        BehanceSDKImageDisplayPageItemFragment.this.setImageViewWithBitmap(bitmap);
                    }
                });
            }
        } catch (Exception e2) {
            logger.error(e2, "Unknown error while loading image bitmap [exception is %s]", e2.getMessage());
            displayDecodingErrorMessage(null);
        }
        return viewGroup2;
    }

    private void displayDecodingErrorMessage(b bVar) {
        if (getActivity() != null) {
            Toast.makeText(this.mContext, getResources().getString(R.string.bsdk_ida_image_decoding_error), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProgressSpinner() {
        this.progressSpinner.setVisibility(4);
    }

    private void showProgressSpinner() {
        this.progressSpinner.setVisibility(0);
    }

    public void onImageLoadSuccess(Bitmap bitmap) {
        setImageViewWithBitmap(bitmap);
        hideProgressSpinner();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageViewWithBitmap(Bitmap bitmap) {
        try {
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            if (bitmap.getWidth() > 2048 || bitmap.getHeight() > 2048) {
                this.mImageView.setLayerType(1, null);
            } else {
                this.mImageView.setLayerType(2, null);
            }
            if (bitmap.getWidth() < displayMetrics.widthPixels || bitmap.getHeight() < displayMetrics.heightPixels) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                this.mImageView.setLayoutParams(layoutParams);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(13);
                this.mImageView.setLayoutParams(layoutParams2);
            }
            this.mImageView.setImageBitmap(bitmap);
        } catch (Exception e2) {
            logger.error(e2, "Unknown error while displaying image bitmap", new Object[0]);
            displayDecodingErrorMessage(null);
        }
    }

    public void onImageLoadFailure(Exception exc) {
        logger.error(exc, "Unable to load image bitmap", new Object[0]);
        hideProgressSpinner();
        displayDecodingErrorMessage(null);
    }

    @Override // com.i.a.b.f.a
    public void onLoadingCancelled(String str, View view) {
        onImageLoadFailure(new BehanceSDKException("Image loading was cancelled"));
    }

    @Override // com.i.a.b.f.a
    public void onLoadingComplete(String str, View view, Bitmap bitmap) {
        onImageLoadSuccess(bitmap);
    }

    @Override // com.i.a.b.f.a
    public void onLoadingFailed(String str, View view, b bVar) {
        onImageLoadFailure(new BehanceSDKException("Image loading failed"));
    }

    @Override // com.i.a.b.f.a
    public void onLoadingStarted(String str, View view) {
    }
}
