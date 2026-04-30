package com.l.a.a;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.analytics.Engagement;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.Hashtable;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: MimeTypeFile.java */
/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Hashtable f3595b;

    public g(String str) throws IOException {
        this.f3594a = null;
        this.f3595b = new Hashtable();
        this.f3594a = str;
        FileReader fileReader = new FileReader(new File(this.f3594a));
        try {
            a(new BufferedReader(fileReader));
        } finally {
            try {
                fileReader.close();
            } catch (IOException e2) {
            }
        }
    }

    public g(InputStream inputStream) throws IOException {
        this.f3594a = null;
        this.f3595b = new Hashtable();
        a(new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1")));
    }

    public g() {
        this.f3594a = null;
        this.f3595b = new Hashtable();
    }

    public f a(String str) {
        return (f) this.f3595b.get(str);
    }

    public String b(String str) {
        f fVarA = a(str);
        if (fVarA != null) {
            return fVarA.a();
        }
        return null;
    }

    public void c(String str) {
        try {
            a(new BufferedReader(new StringReader(str)));
        } catch (IOException e2) {
        }
    }

    private void a(BufferedReader bufferedReader) throws IOException {
        String strSubstring = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            if (strSubstring != null) {
                line = new StringBuffer().append(strSubstring).append(line).toString();
            }
            int length = line.length();
            if (line.length() > 0 && line.charAt(length - 1) == '\\') {
                strSubstring = line.substring(0, length - 1);
            } else {
                d(line);
                strSubstring = null;
            }
        }
        if (strSubstring != null) {
            d(strSubstring);
        }
    }

    private void d(String str) {
        String strTrim = str.trim();
        if (strTrim.length() != 0 && strTrim.charAt(0) != '#') {
            if (strTrim.indexOf(61) > 0) {
                a aVar = new a(strTrim);
                String str2 = null;
                while (aVar.a()) {
                    String strB = aVar.b();
                    String strB2 = (aVar.a() && aVar.b().equals(Engagement.Comparison.EQ) && aVar.a()) ? aVar.b() : null;
                    if (strB2 == null) {
                        if (b.a()) {
                            b.a(new StringBuffer().append("Bad .mime.types entry: ").append(strTrim).toString());
                            return;
                        }
                        return;
                    }
                    if (!strB.equals("type")) {
                        if (strB.equals("exts")) {
                            StringTokenizer stringTokenizer = new StringTokenizer(strB2, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                            while (stringTokenizer.hasMoreTokens()) {
                                String strNextToken = stringTokenizer.nextToken();
                                f fVar = new f(str2, strNextToken);
                                this.f3595b.put(strNextToken, fVar);
                                if (b.a()) {
                                    b.a(new StringBuffer().append("Added: ").append(fVar.toString()).toString());
                                }
                            }
                        }
                        strB2 = str2;
                    }
                    str2 = strB2;
                }
                return;
            }
            StringTokenizer stringTokenizer2 = new StringTokenizer(strTrim);
            if (stringTokenizer2.countTokens() != 0) {
                String strNextToken2 = stringTokenizer2.nextToken();
                while (stringTokenizer2.hasMoreTokens()) {
                    String strNextToken3 = stringTokenizer2.nextToken();
                    f fVar2 = new f(strNextToken2, strNextToken3);
                    this.f3595b.put(strNextToken3, fVar2);
                    if (b.a()) {
                        b.a(new StringBuffer().append("Added: ").append(fVar2.toString()).toString());
                    }
                }
            }
        }
    }
}
