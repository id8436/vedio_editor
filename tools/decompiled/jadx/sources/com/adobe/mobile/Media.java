package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Media {
    private static final String NO_ANALYTICS_MESSAGE = "Analytics - ADBMobile is not configured correctly to use Analytics.";

    public interface MediaCallback<T> {
        void call(T t);
    }

    public static MediaSettings settingsWith(String str, double d2, String str2, String str3) {
        return MediaSettings.settingsWith(str, d2, str2, str3);
    }

    public static MediaSettings adSettingsWith(String str, double d2, String str2, String str3, String str4, double d3, String str5) {
        return MediaSettings.adSettingsWith(str, d2, str2, str3, str4, d3, str5);
    }

    public static void open(final MediaSettings mediaSettings, final MediaCallback mediaCallback) {
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.1
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().open(mediaSettings, mediaCallback);
            }
        });
    }

    public static void close(final String str) {
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.2
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().close(str);
            }
        });
    }

    public static void play(final String str, final double d2) {
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.3
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().play(str, d2);
            }
        });
    }

    public static void complete(final String str, final double d2) {
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.4
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().complete(str, d2);
            }
        });
    }

    public static void stop(final String str, final double d2) {
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.5
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().stop(str, d2);
            }
        });
    }

    public static void click(final String str, final double d2) {
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.6
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().click(str, d2);
            }
        });
    }

    public static void track(final String str, Map<String, Object> map) {
        MediaAnalytics.sharedInstance().setTrackCalledOnItem(str);
        final HashMap map2 = map != null ? new HashMap(map) : null;
        StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.Media.7
            @Override // java.lang.Runnable
            public void run() {
                MediaAnalytics.sharedInstance().track(str, map2);
            }
        });
    }
}
