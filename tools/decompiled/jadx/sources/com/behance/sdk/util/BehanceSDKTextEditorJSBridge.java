package com.behance.sdk.util;

import android.util.Log;
import android.webkit.JavascriptInterface;
import com.behance.sdk.dto.BehanceSDKTextSelectionState;
import com.behance.sdk.dto.parser.BehanceSDKTextSelectionStateParser;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKTextEditorJSBridge {
    private static final String TAG = BehanceSDKTextEditorJSBridge.class.getSimpleName();
    private ITextEditorJSBridge callbacks;

    /* JADX INFO: loaded from: classes2.dex */
    public interface ITextEditorJSBridge {
        void onBlur();

        void onEditorLoaded();

        void onEmptyCheck(boolean z);

        void onFocus();

        void onKeyUp();

        void onLoadComplete();

        void onSelectionChanged(boolean z);

        void onSelectionStateFetched(BehanceSDKTextSelectionState behanceSDKTextSelectionState);

        void onTextChanged(String str);
    }

    BehanceSDKTextEditorJSBridge(ITextEditorJSBridge iTextEditorJSBridge) {
        this.callbacks = iTextEditorJSBridge;
    }

    @JavascriptInterface
    public void onTextChanged(String str) {
        this.callbacks.onTextChanged(str);
        Log.d(TAG, str);
    }

    @JavascriptInterface
    public void onLoadComplete() {
        this.callbacks.onLoadComplete();
        Log.d(TAG, "onLoadComplete");
    }

    @JavascriptInterface
    public void onFocus() {
        this.callbacks.onFocus();
        Log.d(TAG, "onFocus");
    }

    @JavascriptInterface
    public void onBlur() {
        this.callbacks.onBlur();
        Log.d(TAG, "onBlur");
    }

    @JavascriptInterface
    public void onSelectionChanged(boolean z) {
        this.callbacks.onSelectionChanged(z);
        Log.d(TAG, "onSelectionChanged");
    }

    @JavascriptInterface
    public void onKeyUp() {
        this.callbacks.onKeyUp();
        Log.d(TAG, "onKeyUp");
    }

    @JavascriptInterface
    public void onEditorLoaded() {
        this.callbacks.onEditorLoaded();
        Log.d(TAG, "onEditorLoaded");
    }

    @JavascriptInterface
    public void onStateUpdated() {
        Log.d(TAG, "onStateUpdated");
    }

    @JavascriptInterface
    public void onStateFetched(String str) {
        try {
            this.callbacks.onSelectionStateFetched(BehanceSDKTextSelectionStateParser.parseState(str));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        Log.d(TAG, "onStateFetched " + str);
    }

    @JavascriptInterface
    public void onEmptyCheck(boolean z) {
        this.callbacks.onEmptyCheck(z);
        Log.d(TAG, "onEmptyCheck");
    }
}
