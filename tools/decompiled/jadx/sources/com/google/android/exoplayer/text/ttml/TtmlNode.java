package com.google.android.exoplayer.text.ttml;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
final class TtmlNode {
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SMPTE_DATA = "smpte:data";
    public static final String TAG_SMPTE_IMAGE = "smpte:image";
    public static final String TAG_SMPTE_INFORMATION = "smpte:information";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final long UNDEFINED_TIME = -1;
    private List<TtmlNode> children;
    public final long endTimeUs;
    public final boolean isTextNode;
    public final long startTimeUs;
    public final String tag;
    public final String text;

    public static TtmlNode buildTextNode(String str) {
        return new TtmlNode(null, applySpacePolicy(str, true), -1L, -1L);
    }

    public static TtmlNode buildNode(String str, long j, long j2) {
        return new TtmlNode(str, null, j, j2);
    }

    private TtmlNode(String str, String str2, long j, long j2) {
        this.tag = str;
        this.text = str2;
        this.isTextNode = str2 != null;
        this.startTimeUs = j;
        this.endTimeUs = j2;
    }

    public boolean isActive(long j) {
        return (this.startTimeUs == -1 && this.endTimeUs == -1) || (this.startTimeUs <= j && this.endTimeUs == -1) || ((this.startTimeUs == -1 && j < this.endTimeUs) || (this.startTimeUs <= j && j < this.endTimeUs));
    }

    public void addChild(TtmlNode ttmlNode) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(ttmlNode);
    }

    public TtmlNode getChild(int i) {
        if (this.children == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.children.get(i);
    }

    public int getChildCount() {
        if (this.children == null) {
            return 0;
        }
        return this.children.size();
    }

    public long[] getEventTimesUs() {
        int i = 0;
        TreeSet<Long> treeSet = new TreeSet<>();
        getEventTimes(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + 1;
                jArr[i2] = it.next().longValue();
            } else {
                return jArr;
            }
        }
    }

    private void getEventTimes(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = TAG_P.equals(this.tag);
        if (z || zEquals) {
            if (this.startTimeUs != -1) {
                treeSet.add(Long.valueOf(this.startTimeUs));
            }
            if (this.endTimeUs != -1) {
                treeSet.add(Long.valueOf(this.endTimeUs));
            }
        }
        if (this.children != null) {
            for (int i = 0; i < this.children.size(); i++) {
                this.children.get(i).getEventTimes(treeSet, z || zEquals);
            }
        }
    }

    public String getText(long j) {
        StringBuilder sb = new StringBuilder();
        getText(j, sb, false);
        return applySpacePolicy(sb.toString().replaceAll("\n$", ""), false);
    }

    private void getText(long j, StringBuilder sb, boolean z) {
        if (this.isTextNode && z) {
            sb.append(this.text);
            return;
        }
        if (TAG_BR.equals(this.tag) && z) {
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            return;
        }
        if (!"metadata".equals(this.tag) && isActive(j)) {
            boolean zEquals = TAG_P.equals(this.tag);
            int length = sb.length();
            for (int i = 0; i < getChildCount(); i++) {
                getChild(i).getText(j, sb, z || zEquals);
            }
            if (zEquals && length != sb.length()) {
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
        }
    }

    private static String applySpacePolicy(String str, boolean z) {
        String strReplaceAll = str.replaceAll("\r\n", IOUtils.LINE_SEPARATOR_UNIX).replaceAll(" *\n *", IOUtils.LINE_SEPARATOR_UNIX);
        if (z) {
            strReplaceAll = strReplaceAll.replaceAll(IOUtils.LINE_SEPARATOR_UNIX, " ");
        }
        return strReplaceAll.replaceAll("[ \t\\x0B\f\r]+", " ");
    }
}
