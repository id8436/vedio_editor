package com.behance.sdk.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.webkit.WebView;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetTextEditorConfigTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetTextEditorConfigParams;
import com.behance.sdk.asynctasks.BehanceSDKGetTextEditorConfigAsyncTask;
import com.behance.sdk.util.BehanceSDKTextEditorJSBridge;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPublishTextUtils {
    public static final String TEXT_EDITOR_FILE_NAME_CONFIG = "text_editor_config.txt";
    private static final String TEXT_EDITOR_FILE_NAME_HTML = "BehanceSDKTextEditorHTML.html";
    public static final String TEXT_EDITOR_FILE_NAME_JAVASCRIPT = "text_editor_js.txt";

    public static void prepTextEditor(Context context, IBehanceSDKGetTextEditorConfigTaskListener iBehanceSDKGetTextEditorConfigTaskListener) {
        BehanceSDKGetTextEditorConfigAsyncTask behanceSDKGetTextEditorConfigAsyncTask = new BehanceSDKGetTextEditorConfigAsyncTask(iBehanceSDKGetTextEditorConfigTaskListener);
        BehanceSDKGetTextEditorConfigParams behanceSDKGetTextEditorConfigParams = new BehanceSDKGetTextEditorConfigParams();
        behanceSDKGetTextEditorConfigParams.setClientId(BehanceSDK.getInstance().getClientId());
        behanceSDKGetTextEditorConfigParams.setContext(context);
        behanceSDKGetTextEditorConfigAsyncTask.execute(behanceSDKGetTextEditorConfigParams);
    }

    public static void writeFileToDisk(Context context, String str, String str2) throws IOException {
        FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(str, 0);
        fileOutputStreamOpenFileOutput.write(str2.getBytes());
        fileOutputStreamOpenFileOutput.close();
    }

    private static String readFileFromDisk(Context context, String str) throws IOException {
        FileInputStream fileInputStreamOpenFileInput = context.openFileInput(str);
        byte[] bArr = new byte[fileInputStreamOpenFileInput.available()];
        while (fileInputStreamOpenFileInput.read(bArr) != -1) {
        }
        fileInputStreamOpenFileInput.close();
        return new String(bArr);
    }

    public static String getTextEditorHTML(Context context) throws IOException {
        InputStream inputStreamOpen = context.getAssets().open(TEXT_EDITOR_FILE_NAME_HTML);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = inputStreamOpen.read(); i != -1; i = inputStreamOpen.read()) {
            byteArrayOutputStream.write(i);
        }
        inputStreamOpen.close();
        return byteArrayOutputStream.toString().replace("@android_textEditorJavaScript", readFileFromDisk(context, TEXT_EDITOR_FILE_NAME_JAVASCRIPT)).replace("@android_config", readFileFromDisk(context, TEXT_EDITOR_FILE_NAME_CONFIG));
    }

    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
    public static void setupTextEditWebView(WebView webView, Context context, BehanceSDKTextEditorJSBridge.ITextEditorJSBridge iTextEditorJSBridge) throws IOException {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(new BehanceSDKTextEditorJSBridge(iTextEditorJSBridge), AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_PLATFORM_ANDROID);
        webView.loadDataWithBaseURL("file:///android_asset/", getTextEditorHTML(context), MimeTypes.TEXT_HTML, "utf-8", null);
    }

    private static void callJS(final WebView webView, final String str) {
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.behance.sdk.util.BehanceSDKPublishTextUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    webView.loadUrl("javascript:" + str);
                }
            });
        }
    }

    private static void callEditorJS(WebView webView, String str) {
        callJS(webView, "getEditor()." + str);
    }

    public static void setText(WebView webView, String str) {
        callEditorJS(webView, "setData('" + str + "')");
    }

    public static void focus(WebView webView) {
        webView.requestFocus();
        callEditorJS(webView, "focus()");
    }

    public static void blur(WebView webView) {
        callEditorJS(webView, "blur()");
    }

    public static void checkEmpty(WebView webView) {
        callJS(webView, "checkEmpty()");
    }

    public static void moveCursorToEnd(WebView webView) {
        callEditorJS(webView, "selectEditEnd()");
    }

    public static void clearSelection(WebView webView) {
        callEditorJS(webView, "clearSelection()");
    }

    public static void toggleBold(WebView webView) {
        callEditorJS(webView, "toggleBold()");
    }

    public static void toggleItalic(WebView webView) {
        callEditorJS(webView, "toggleItalic()");
    }

    public static void toggleUnderline(WebView webView) {
        callEditorJS(webView, "toggleUnderline()");
    }

    public static void toggleUppercase(WebView webView) {
        callEditorJS(webView, "toggleUppercase()");
    }

    public static void alignLeft(WebView webView) {
        callEditorJS(webView, "setAlignmentLeft()");
    }

    public static void alignCenter(WebView webView) {
        callEditorJS(webView, "setAlignmentCenter()");
    }

    public static void alignRight(WebView webView) {
        callEditorJS(webView, "setAlignmentRight()");
    }

    public static void setColor(WebView webView, int i) {
        callEditorJS(webView, "setColor('" + String.format("#%06X", Integer.valueOf(16777215 & i)) + "')");
    }

    public static void setLink(WebView webView, @Nullable String str) {
        if (str == null || str.isEmpty()) {
            callEditorJS(webView, "removeLink()");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("href", str);
            jSONObject.put("target", "_blank");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        callEditorJS(webView, "createLink('" + jSONObject + "')");
    }

    public static void setStyle(WebView webView, String str) {
        callEditorJS(webView, "setBlockStyle('" + str + "')");
    }

    public static void setFont(WebView webView, String str) {
        callEditorJS(webView, "setFontFamily('" + str + "')");
    }

    public static void setTextSize(WebView webView, int i) {
        callEditorJS(webView, "setFontSize('" + i + "px')");
    }

    public static void clearFormatting(WebView webView) {
        callEditorJS(webView, "removeFormat()");
    }

    public static void getState(WebView webView) {
        callJS(webView, "getEditorState()");
    }
}
