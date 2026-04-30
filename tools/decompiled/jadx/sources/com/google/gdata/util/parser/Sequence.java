package com.google.gdata.util.parser;

/* JADX INFO: loaded from: classes3.dex */
public class Sequence<T> extends Parser<T> {
    private Parser<? super T> left;
    private Parser<? super T> right;

    public Sequence(Parser<? super T> parser, Parser<? super T> parser2) {
        this.left = parser;
        this.right = parser2;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, T t) {
        int i3;
        int i4 = this.left.parse(cArr, i, i2, t);
        if (i4 == -1 || (i3 = this.right.parse(cArr, i + i4, i2, t)) == -1) {
            return -1;
        }
        return i4 + i3;
    }
}
