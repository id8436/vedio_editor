package com.google.gdata.util.common.html;

import com.google.gdata.util.common.base.StringUtil;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class HtmlToText {
    public static final int EMAIL_LINE_WIDTH_MAX = 72;
    private static final Pattern htmlNewlinePattern = Pattern.compile("\\s*<(br|/?p)>\\s*");
    private static final Pattern htmlListPattern = Pattern.compile("\\s*<li>\\s*");
    private static final Pattern htmlTagPattern = Pattern.compile("</?([^<]*)>");

    private HtmlToText() {
    }

    public static String htmlToPlainText(String str) {
        if (str == null) {
            throw new NullPointerException("Html parameter may not be null.");
        }
        return StringUtil.fixedWidth(StringUtil.unescapeHTML(htmlTagPattern.matcher(htmlListPattern.matcher(htmlNewlinePattern.matcher(StringUtil.stripAndCollapse(str)).replaceAll(IOUtils.LINE_SEPARATOR_UNIX)).replaceAll("\n- ")).replaceAll("")).trim().split(IOUtils.LINE_SEPARATOR_UNIX), 72);
    }
}
