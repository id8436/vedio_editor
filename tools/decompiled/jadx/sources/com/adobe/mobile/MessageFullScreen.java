package com.adobe.mobile;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
final class MessageFullScreen extends Message {
    private static final String JSON_CONFIG_HTML = "html";
    private static final String MESSAGE_SCHEME = "adbinapp";
    private static final String MESSAGE_SCHEME_PATH_CANCEL = "cancel";
    private static final String MESSAGE_SCHEME_PATH_CONFIRM = "confirm";
    protected String html;
    protected Activity messageFullScreenActivity;
    protected String replacedHtml;
    protected ViewGroup rootViewGroup;
    private WebView webView;

    MessageFullScreen() {
    }

    @Override // com.adobe.mobile.Message
    protected boolean initWithPayloadObject(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0 || !super.initWithPayloadObject(jSONObject)) {
            return false;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_PAYLOAD);
            if (jSONObject2.length() <= 0) {
                StaticMethods.logDebugFormat("Messages - Unable to create fullscreen message \"%s\", payload is empty", this.messageId);
                return false;
            }
            try {
                this.html = jSONObject2.getString("html");
                if (this.html.length() <= 0) {
                    StaticMethods.logDebugFormat("Messages - Unable to create fullscreen message \"%s\", html is empty", this.messageId);
                    return false;
                }
                try {
                    JSONArray jSONArray = jSONObject2.getJSONArray("assets");
                    if (jSONArray != null && jSONArray.length() > 0) {
                        this.assets = new ArrayList<>();
                        int length = jSONArray.length();
                        for (int i = 0; i < length; i++) {
                            JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                            if (jSONArray2 != null && jSONArray2.length() > 0) {
                                ArrayList<String> arrayList = new ArrayList<>();
                                int length2 = jSONArray2.length();
                                for (int i2 = 0; i2 < length2; i2++) {
                                    arrayList.add(jSONArray2.getString(i2));
                                }
                                this.assets.add(arrayList);
                            }
                        }
                    }
                } catch (JSONException e2) {
                    StaticMethods.logDebugFormat("Messages - No assets found for fullscreen message \"%s\"", this.messageId);
                }
                return true;
            } catch (JSONException e3) {
                StaticMethods.logDebugFormat("Messages - Unable to create fullscreen message \"%s\", html is required", this.messageId);
                return false;
            }
        } catch (JSONException e4) {
            StaticMethods.logDebugFormat("Messages - Unable to create fullscreen message \"%s\", payload is required", this.messageId);
            return false;
        }
    }

    protected void showInRootViewGroup() {
        int currentOrientation = StaticMethods.getCurrentOrientation();
        if (!this.isVisible || this.orientationWhenShown != currentOrientation) {
            this.orientationWhenShown = currentOrientation;
            new Handler(Looper.getMainLooper()).post(new MessageFullScreenRunner(this));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b4  */
    @Override // com.adobe.mobile.Message
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void show() {
        /*
            r12 = this;
            r4 = 1
            r5 = 0
            android.app.Activity r6 = com.adobe.mobile.StaticMethods.getCurrentActivity()     // Catch: com.adobe.mobile.StaticMethods.NullActivityException -> L76
            super.show()
            com.adobe.mobile.Messages.setCurrentMessageFullscreen(r12)
            java.util.HashMap r7 = new java.util.HashMap
            r7.<init>()
            java.util.ArrayList<java.util.ArrayList<java.lang.String>> r0 = r12.assets
            if (r0 == 0) goto L83
            java.util.ArrayList<java.util.ArrayList<java.lang.String>> r0 = r12.assets
            int r0 = r0.size()
            if (r0 <= 0) goto L83
            java.util.ArrayList<java.util.ArrayList<java.lang.String>> r0 = r12.assets
            java.util.Iterator r8 = r0.iterator()
        L23:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L83
            java.lang.Object r0 = r8.next()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            int r9 = r0.size()
            if (r9 <= 0) goto L23
            java.lang.Object r1 = r0.get(r5)
            java.lang.String r1 = (java.lang.String) r1
            r3 = 0
            java.util.Iterator r10 = r0.iterator()
        L40:
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto Lb6
            java.lang.Object r2 = r10.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r11 = "messageImages"
            java.io.File r2 = com.adobe.mobile.RemoteDownload.getFileForCachedURL(r2, r11)
            if (r2 == 0) goto L40
            java.net.URI r2 = r2.toURI()
            java.lang.String r2 = r2.toString()
        L5d:
            if (r2 != 0) goto Lb4
            int r3 = r9 + (-1)
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = com.adobe.mobile.RemoteDownload.stringIsUrl(r0)
            if (r3 != 0) goto L81
            r3 = r4
        L6e:
            if (r3 == 0) goto Lb4
        L70:
            if (r0 == 0) goto L23
            r7.put(r1, r0)
            goto L23
        L76:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            java.lang.Object[] r1 = new java.lang.Object[r5]
            com.adobe.mobile.StaticMethods.logErrorFormat(r0, r1)
        L80:
            return
        L81:
            r3 = r5
            goto L6e
        L83:
            java.lang.String r0 = r12.html
            java.lang.String r0 = com.adobe.mobile.StaticMethods.expandTokens(r0, r7)
            r12.replacedHtml = r0
            android.content.Intent r0 = new android.content.Intent     // Catch: android.content.ActivityNotFoundException -> La4
            android.content.Context r1 = r6.getApplicationContext()     // Catch: android.content.ActivityNotFoundException -> La4
            java.lang.Class<com.adobe.mobile.MessageFullScreenActivity> r2 = com.adobe.mobile.MessageFullScreenActivity.class
            r0.<init>(r1, r2)     // Catch: android.content.ActivityNotFoundException -> La4
            r1 = 65536(0x10000, float:9.18355E-41)
            r0.addFlags(r1)     // Catch: android.content.ActivityNotFoundException -> La4
            r6.startActivity(r0)     // Catch: android.content.ActivityNotFoundException -> La4
            r0 = 0
            r1 = 0
            r6.overridePendingTransition(r0, r1)     // Catch: android.content.ActivityNotFoundException -> La4
            goto L80
        La4:
            r0 = move-exception
            java.lang.String r1 = "Messages - Must declare MessageFullScreenActivity in AndroidManifest.xml in order to show full screen messages (%s)"
            java.lang.Object[] r2 = new java.lang.Object[r4]
            java.lang.String r0 = r0.getMessage()
            r2[r5] = r0
            com.adobe.mobile.StaticMethods.logWarningFormat(r1, r2)
            goto L80
        Lb4:
            r0 = r2
            goto L70
        Lb6:
            r2 = r3
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.MessageFullScreen.show():void");
    }

    class MessageFullScreenRunner implements Runnable {
        private MessageFullScreen message;

        protected MessageFullScreenRunner(MessageFullScreen messageFullScreen) {
            this.message = messageFullScreen;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.message.webView = new WebView(this.message.messageFullScreenActivity);
                this.message.webView.setVerticalScrollBarEnabled(false);
                this.message.webView.setHorizontalScrollBarEnabled(false);
                this.message.webView.setBackgroundColor(0);
                this.message.webView.setWebViewClient(new MessageFullScreenWebViewClient(this.message));
                WebSettings settings = this.message.webView.getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setAllowFileAccess(true);
                settings.setDefaultTextEncodingName("UTF-8");
                this.message.webView.loadDataWithBaseURL("file:///android_asset/", this.message.replacedHtml, MimeTypes.TEXT_HTML, "UTF-8", null);
                if (this.message.rootViewGroup == null) {
                    StaticMethods.logErrorFormat("Messages - unable to get root view group from os", new Object[0]);
                    MessageFullScreen.killMessageActivity(this.message);
                    return;
                }
                int measuredWidth = this.message.rootViewGroup.getMeasuredWidth();
                int measuredHeight = this.message.rootViewGroup.getMeasuredHeight();
                if (measuredWidth == 0 || measuredHeight == 0) {
                    StaticMethods.logErrorFormat("Messages - root view hasn't been measured, cannot show message", new Object[0]);
                    MessageFullScreen.killMessageActivity(this.message);
                    return;
                }
                if (this.message.isVisible) {
                    this.message.rootViewGroup.addView(this.message.webView, measuredWidth, measuredHeight);
                } else {
                    TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, measuredHeight, 0.0f);
                    translateAnimation.setDuration(300L);
                    this.message.webView.setAnimation(translateAnimation);
                    this.message.rootViewGroup.addView(this.message.webView, measuredWidth, measuredHeight);
                }
                this.message.isVisible = true;
            } catch (Exception e2) {
                StaticMethods.logDebugFormat("Messages - Failed to show full screen message (%s)", e2.getMessage());
            }
        }
    }

    class MessageFullScreenWebViewClient extends WebViewClient {
        private MessageFullScreen message;

        protected MessageFullScreenWebViewClient(MessageFullScreen messageFullScreen) {
            this.message = messageFullScreen;
        }

        private void dismissMessage(WebView webView) {
            if (this.message.rootViewGroup == null) {
                StaticMethods.logErrorFormat("Messages - unable to get root view group from os", new Object[0]);
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, this.message.rootViewGroup.getMeasuredHeight());
            translateAnimation.setDuration(300L);
            translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.mobile.MessageFullScreen.MessageFullScreenWebViewClient.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    MessageFullScreen.killMessageActivity(MessageFullScreenWebViewClient.this.message);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            webView.setAnimation(translateAnimation);
            this.message.rootViewGroup.removeView(webView);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith(MessageFullScreen.MESSAGE_SCHEME)) {
                if (str.contains(MessageFullScreen.MESSAGE_SCHEME_PATH_CANCEL)) {
                    this.message.viewed();
                    dismissMessage(webView);
                } else if (str.contains(MessageFullScreen.MESSAGE_SCHEME_PATH_CONFIRM)) {
                    this.message.clickedThrough();
                    dismissMessage(webView);
                    int iIndexOf = str.indexOf("url=");
                    if (iIndexOf >= 0) {
                        String strSubstring = str.substring(iIndexOf + 4);
                        HashMap map = new HashMap();
                        map.put("{userId}", StaticMethods.getVisitorID() == null ? "" : StaticMethods.getVisitorID());
                        map.put("{trackingId}", StaticMethods.getAID() == null ? "" : StaticMethods.getAID());
                        map.put("{messageId}", this.message.messageId);
                        map.put("{lifetimeValue}", AnalyticsTrackLifetimeValueIncrease.getLifetimeValue().toString());
                        String strExpandTokens = StaticMethods.expandTokens(strSubstring, map);
                        try {
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(strExpandTokens));
                            this.message.messageFullScreenActivity.startActivity(intent);
                        } catch (Exception e2) {
                            StaticMethods.logDebugFormat("Messages - unable to launch intent from full screen message (%s)", e2.getMessage());
                        }
                    }
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void killMessageActivity(MessageFullScreen messageFullScreen) {
        messageFullScreen.messageFullScreenActivity.finish();
        messageFullScreen.messageFullScreenActivity.overridePendingTransition(0, 0);
        messageFullScreen.isVisible = false;
    }
}
