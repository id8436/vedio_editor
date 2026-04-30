package com.google.gdata.util.parser;

/* JADX INFO: loaded from: classes3.dex */
public class Strlit extends Parser<Object> {
    private String str;

    public Strlit(String str) {
        this.str = str;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, Object obj) {
        for (int i3 = 0; i3 < this.str.length(); i3++) {
            if (i >= i2 || cArr[i] != this.str.charAt(i3)) {
                return -1;
            }
            i++;
        }
        return this.str.length();
    }
}
