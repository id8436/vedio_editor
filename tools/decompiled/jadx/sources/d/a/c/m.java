package d.a.c;

import d.au;
import java.io.IOException;
import java.net.ProtocolException;
import org.mortbay.jetty.HttpVersions;

/* JADX INFO: compiled from: StatusLine.java */
/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final au f4282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4284c;

    public m(au auVar, int i, String str) {
        this.f4282a = auVar;
        this.f4283b = i;
        this.f4284c = str;
    }

    public static m a(String str) throws IOException {
        au auVar;
        String strSubstring;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                auVar = au.HTTP_1_0;
            } else if (iCharAt == 1) {
                auVar = au.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            auVar = au.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        if (str.length() < i + 3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i2 = Integer.parseInt(str.substring(i, i + 3));
            if (str.length() <= i + 3) {
                strSubstring = "";
            } else {
                if (str.charAt(i + 3) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i + 4);
            }
            return new m(auVar, i2, strSubstring);
        } catch (NumberFormatException e2) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4282a == au.HTTP_1_0 ? HttpVersions.HTTP_1_0 : HttpVersions.HTTP_1_1);
        sb.append(' ').append(this.f4283b);
        if (this.f4284c != null) {
            sb.append(' ').append(this.f4284c);
        }
        return sb.toString();
    }
}
