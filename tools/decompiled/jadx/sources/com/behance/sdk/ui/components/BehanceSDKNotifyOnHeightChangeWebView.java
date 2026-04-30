package com.behance.sdk.ui.components;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKNotifyOnHeightChangeWebView extends WebView {
    private HeightChangeCallbacks callbacks;
    private int height;
    private int id;
    private boolean notifyOnlyIncrease;

    public interface HeightChangeCallbacks {
        void onHeightChange(int i, int i2);
    }

    public BehanceSDKNotifyOnHeightChangeWebView(Context context) {
        super(context);
        this.notifyOnlyIncrease = true;
        this.height = 0;
    }

    public BehanceSDKNotifyOnHeightChangeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.notifyOnlyIncrease = true;
        this.height = 0;
    }

    public BehanceSDKNotifyOnHeightChangeWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.notifyOnlyIncrease = true;
        this.height = 0;
    }

    public void setCallbacks(HeightChangeCallbacks heightChangeCallbacks, int i) {
        this.callbacks = heightChangeCallbacks;
        this.id = i;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if ((this.notifyOnlyIncrease && getContentHeight() > this.height) || getContentHeight() != this.height) {
            this.height = getContentHeight();
            if (this.callbacks != null) {
                this.callbacks.onHeightChange(this.height, this.id);
            }
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        this.height = 0;
    }

    public void setNotifyOnlyIncrease(boolean z) {
        this.notifyOnlyIncrease = z;
    }

    public void setHeight(int i) {
        this.height = i;
    }
}
