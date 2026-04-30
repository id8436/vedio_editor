package com.google.gdata.util.parser;

/* JADX INFO: loaded from: classes3.dex */
public class Repeat<T> extends Parser<T> {
    private int max;
    private int min;
    private Parser<T> subject;

    public Repeat(Parser<T> parser, int i) {
        this(parser, i, -1);
    }

    public Repeat(Parser<T> parser, int i, int i2) {
        this.subject = parser;
        this.min = i;
        this.max = i2;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, T t) {
        int i3;
        int i4 = 0;
        for (int i5 = 0; i5 != this.max && (i3 = this.subject.parse(cArr, i + i4, i2, t)) != 0; i5++) {
            if (i3 == -1) {
                if (i5 < this.min) {
                    return -1;
                }
                return i4;
            }
            i4 += i3;
        }
        return i4;
    }
}
