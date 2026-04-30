package com.google.gdata.util.parser;

/* JADX INFO: loaded from: classes3.dex */
public class Action<T, U extends T> extends Parser<U> {
    private Callback<U> callback;
    private Parser<T> subject;

    public Action(Parser<T> parser, Callback<U> callback) {
        this.subject = parser;
        this.callback = callback;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, U u) {
        int i3 = this.subject.parse(cArr, i, i2, u);
        if (i3 != -1) {
            this.callback.handle(cArr, i, i + i3, u);
        }
        return i3;
    }
}
