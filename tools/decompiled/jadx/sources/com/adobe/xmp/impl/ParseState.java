package com.adobe.xmp.impl;

import com.adobe.xmp.XMPException;

/* JADX INFO: compiled from: ISO8601Converter.java */
/* JADX INFO: loaded from: classes2.dex */
class ParseState {
    private int pos = 0;
    private String str;

    public ParseState(String str) {
        this.str = str;
    }

    public int length() {
        return this.str.length();
    }

    public boolean hasNext() {
        return this.pos < this.str.length();
    }

    public char ch(int i) {
        if (i < this.str.length()) {
            return this.str.charAt(i);
        }
        return (char) 0;
    }

    public char ch() {
        if (this.pos < this.str.length()) {
            return this.str.charAt(this.pos);
        }
        return (char) 0;
    }

    public void skip() {
        this.pos++;
    }

    public int pos() {
        return this.pos;
    }

    public int gatherInt(String str, int i) throws XMPException {
        char cCh = ch(this.pos);
        boolean z = false;
        int i2 = 0;
        while ('0' <= cCh && cCh <= '9') {
            this.pos++;
            i2 = (i2 * 10) + (cCh - '0');
            z = true;
            cCh = ch(this.pos);
        }
        if (z) {
            if (i2 <= i) {
                if (i2 < 0) {
                    return 0;
                }
                return i2;
            }
            return i;
        }
        throw new XMPException(str, 5);
    }
}
