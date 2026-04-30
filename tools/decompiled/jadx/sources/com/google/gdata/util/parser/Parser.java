package com.google.gdata.util.parser;

import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Parser<T> {
    public static final int NO_MATCH = -1;

    public abstract int parse(char[] cArr, int i, int i2, T t);

    public final int parse(char[] cArr, T t) {
        return parse(cArr, 0, cArr.length, t);
    }

    public final int parse(String str, T t) {
        return parse(str.toCharArray(), t);
    }

    public final int parse(Reader reader, T t) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        try {
            char[] cArr = new char[1024];
            while (true) {
                int i = reader.read(cArr);
                if (i < 0) {
                    break;
                }
                charArrayWriter.write(cArr, 0, i);
            }
        } catch (IOException e2) {
        }
        return parse(charArrayWriter.toCharArray(), t);
    }

    public final Parser<T> repeat(int i) {
        return new Repeat(this, i, i);
    }

    public final Parser<T> repeat(int i, int i2) {
        return new Repeat(this, i, i2);
    }

    public final Parser<T> star() {
        return new Repeat(this, 0);
    }

    public final Parser<T> plus() {
        return new Repeat(this, 1);
    }

    public final Parser<T> optional() {
        return repeat(0, 1);
    }

    public final Parser<T> list(Parser<? super T> parser) {
        return sequence(this, sequence(parser, this).star());
    }

    public final <U extends T> Parser<U> action(Callback<U> callback) {
        return new Action(this, callback);
    }

    public static <T> Parser<T> alternative(Parser<? super T> parser, Parser<? super T> parser2) {
        return new Alternative(parser, parser2);
    }

    public static <T> Parser<T> intersection(Parser<? super T> parser, Parser<? super T> parser2) {
        return new Intersection(parser, parser2);
    }

    public static <T> Parser<T> difference(Parser<? super T> parser, Parser<? super T> parser2) {
        return new Difference(parser, parser2);
    }

    public static <T> Parser<T> sequence(Parser<? super T> parser, Parser<? super T> parser2) {
        return new Sequence(parser, parser2);
    }

    public static <T> Parser<T> sequence(Parser<? super T> parser, Parser<? super T> parser2, Parser<? super T> parser3) {
        return sequence(parser, sequence(parser2, parser3));
    }

    public static <T> Parser<T> sequence(Parser<? super T> parser, Parser<? super T> parser2, Parser<? super T> parser3, Parser<? super T> parser4) {
        return sequence(parser, sequence(parser2, sequence(parser3, parser4)));
    }

    public static <T> Parser<T> sequence(Parser<? super T> parser, Parser<? super T> parser2, Parser<? super T> parser3, Parser<? super T> parser4, Parser<? super T> parser5) {
        return sequence(parser, sequence(parser2, sequence(parser3, sequence(parser4, parser5))));
    }
}
