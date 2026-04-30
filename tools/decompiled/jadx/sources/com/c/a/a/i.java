package com.c.a.a;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import com.google.gdata.data.Category;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: UriUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f1313a = Pattern.compile("%[0-9A-Fa-f]{2}");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final char[] f1314b = {':', IOUtils.DIR_SEPARATOR_UNIX, ',', '?', '#', '[', ']', '@'};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final char[] f1315c = {'!', '$', '&', '\'', '(', ')', '*', '+', ',', ';', '=', '<', '>', Category.SCHEME_PREFIX, Category.SCHEME_SUFFIX};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final BitSet f1316d = new BitSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final BitSet f1317e;

    static {
        for (int i = 0; i < f1314b.length; i++) {
            f1316d.set(f1314b[i]);
        }
        f1316d.set(32);
        f1316d.set(37);
        f1316d.set(124);
        f1316d.set(92);
        f1316d.set(96);
        f1316d.set(34);
        f1316d.set(94);
        for (int i2 = 0; i2 < f1315c.length; i2++) {
            f1316d.set(f1315c[i2]);
        }
        f1317e = new BitSet();
        f1317e.set(60);
        f1317e.set(62);
        f1317e.set(37);
        f1317e.set(34);
        f1317e.set(123);
        f1317e.set(125);
        f1317e.set(124);
        f1317e.set(92);
        f1317e.set(94);
        f1317e.set(91);
        f1317e.set(93);
        f1317e.set(96);
    }

    public static String a(String str) throws UnsupportedEncodingException {
        Matcher matcher = f1313a.matcher(str);
        ArrayList<int[]> arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(new int[]{matcher.start(), matcher.end()});
        }
        if (arrayList.isEmpty()) {
            return a(str, f1317e);
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (int[] iArr : arrayList) {
            sb.append(a(str.substring(i, iArr[0]), f1317e));
            sb.append(str.substring(iArr[0], iArr[1]));
            i = iArr[1];
        }
        sb.append(a(str.substring(i, str.length()), f1317e));
        return sb.toString();
    }

    public static String b(String str) throws UnsupportedEncodingException {
        return a(str, f1316d);
    }

    private static String a(String str, BitSet bitSet) throws UnsupportedEncodingException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (byte b2 : str.getBytes(Charset.forName("UTF-8"))) {
            if (bitSet.get(b2 & UnsignedBytes.MAX_VALUE) || b2 <= 32) {
                byteArrayOutputStream.write(37);
                char upperCase = Character.toUpperCase(Character.forDigit((b2 >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(b2 & Ascii.SI, 16));
                byteArrayOutputStream.write(upperCase);
                byteArrayOutputStream.write(upperCase2);
            } else {
                byteArrayOutputStream.write(b2);
            }
        }
        return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
    }
}
