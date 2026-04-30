package com.behance.sdk.util;

import com.google.gdata.data.analytics.Engagement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorEmbedUtils {
    public static String getWidth(String str) {
        Matcher matcher = Pattern.compile("width=\"(.*?)\"").matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return str;
    }

    public static String setHtmlPosition(String str) {
        return str.contains("style=") ? str : str.replaceFirst(Engagement.Comparison.GT, " style=\"position:absolute; top:0; left:0;\">");
    }
}
