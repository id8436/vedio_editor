package com.google.gdata.util.parser;

/* JADX INFO: loaded from: classes3.dex */
public class Alternative<T> extends Parser<T> {
    private Parser<? super T> left;
    private Parser<? super T> right;

    public Alternative(Parser<? super T> parser, Parser<? super T> parser2) {
        this.left = parser;
        this.right = parser2;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, T t) {
        int i3 = this.left.parse(cArr, i, i2, t);
        return i3 != -1 ? i3 : this.right.parse(cArr, i, i2, t);
    }
}
