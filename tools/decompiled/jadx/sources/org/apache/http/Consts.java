package org.apache.http;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes3.dex */
public final class Consts {
    public static final int CR = 13;
    public static final int HT = 9;
    public static final int LF = 10;
    public static final int SP = 32;
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final Charset ASCII = Charset.forName(CharEncoding.US_ASCII);
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    private Consts() {
    }
}
