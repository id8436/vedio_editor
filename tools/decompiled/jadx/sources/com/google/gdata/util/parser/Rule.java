package com.google.gdata.util.parser;

/* JADX INFO: loaded from: classes3.dex */
public class Rule<T> extends Parser<T> {
    private Parser<T> subject;

    public Rule() {
        this(null);
    }

    public Rule(Parser<T> parser) {
        this.subject = parser;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, T t) {
        if (this.subject != null) {
            return this.subject.parse(cArr, i, i2, t);
        }
        return -1;
    }

    public void set(Parser<T> parser) {
        this.subject = parser;
    }
}
