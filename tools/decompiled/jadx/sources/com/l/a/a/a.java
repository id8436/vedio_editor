package com.l.a.a;

import com.google.gdata.data.analytics.Engagement;
import java.util.NoSuchElementException;
import java.util.Vector;

/* JADX INFO: compiled from: MimeTypeFile.java */
/* JADX INFO: loaded from: classes3.dex */
class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Vector f3577d = new Vector();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3574a = 0;

    public a(String str) {
        this.f3576c = str;
        this.f3575b = str.length();
    }

    private void c() {
        while (this.f3574a < this.f3575b && Character.isWhitespace(this.f3576c.charAt(this.f3574a))) {
            this.f3574a++;
        }
    }

    public boolean a() {
        if (this.f3577d.size() > 0) {
            return true;
        }
        c();
        return this.f3574a < this.f3575b;
    }

    public String b() {
        int size = this.f3577d.size();
        if (size > 0) {
            String str = (String) this.f3577d.elementAt(size - 1);
            this.f3577d.removeElementAt(size - 1);
            return str;
        }
        c();
        if (this.f3574a >= this.f3575b) {
            throw new NoSuchElementException();
        }
        int i = this.f3574a;
        char cCharAt = this.f3576c.charAt(i);
        if (cCharAt == '\"') {
            this.f3574a++;
            boolean z = false;
            while (this.f3574a < this.f3575b) {
                String str2 = this.f3576c;
                int i2 = this.f3574a;
                this.f3574a = i2 + 1;
                char cCharAt2 = str2.charAt(i2);
                if (cCharAt2 == '\\') {
                    this.f3574a++;
                    z = true;
                } else if (cCharAt2 == '\"') {
                    if (z) {
                        StringBuffer stringBuffer = new StringBuffer();
                        for (int i3 = i + 1; i3 < this.f3574a - 1; i3++) {
                            char cCharAt3 = this.f3576c.charAt(i3);
                            if (cCharAt3 != '\\') {
                                stringBuffer.append(cCharAt3);
                            }
                        }
                        return stringBuffer.toString();
                    }
                    return this.f3576c.substring(i + 1, this.f3574a - 1);
                }
            }
        } else if (Engagement.Comparison.EQ.indexOf(cCharAt) >= 0) {
            this.f3574a++;
        } else {
            while (this.f3574a < this.f3575b && Engagement.Comparison.EQ.indexOf(this.f3576c.charAt(this.f3574a)) < 0 && !Character.isWhitespace(this.f3576c.charAt(this.f3574a))) {
                this.f3574a++;
            }
        }
        return this.f3576c.substring(i, this.f3574a);
    }
}
