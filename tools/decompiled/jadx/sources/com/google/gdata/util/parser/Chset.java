package com.google.gdata.util.parser;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class Chset extends Parser<Object> implements Cloneable {
    private static final char MAX_ASCII_CHAR = 127;
    protected static final char MIN_CHAR = 0;
    private BitSet asciiSet;
    private ArrayList<Range> ranges;
    protected static final char MAX_CHAR = 65535;
    public static final Chset ANYCHAR = new Chset(0, MAX_CHAR);
    public static final Chset NOTHING = new Chset();
    public static final Chset ALNUM = new Chset("a-zA-Z0-9");
    public static final Chset ALPHA = new Chset("a-zA-Z");
    public static final Chset DIGIT = new Chset("0-9");
    public static final Chset XDIGIT = new Chset("0-9a-fA-F");
    public static final Chset LOWER = new Chset("a-z");
    public static final Chset UPPER = new Chset("A-Z");
    public static final Chset WHITESPACE = new Chset(" \t\r\n\f");
    public static final Chset ASCII = new Chset(0, 127);

    public Chset() {
        this.ranges = new ArrayList<>();
        this.asciiSet = new BitSet(128);
    }

    public Chset(char c2) {
        this(c2, c2);
    }

    public Chset(char c2, char c3) {
        this.ranges = new ArrayList<>();
        this.asciiSet = new BitSet(128);
        this.ranges.add(new Range(c2, c3));
        refreshAsciiSet();
    }

    public Chset(String str) {
        this.ranges = new ArrayList<>();
        this.asciiSet = new BitSet(128);
        int i = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (i + 1 < str.length() && str.charAt(i + 1) == '-') {
                if (i + 2 < str.length()) {
                    set(new Range(cCharAt, str.charAt(i + 2)));
                    i += 3;
                } else {
                    set(new Range(cCharAt, cCharAt));
                    set(new Range(45, 45));
                    return;
                }
            } else {
                set(new Range(cCharAt, cCharAt));
                i++;
            }
        }
    }

    public Object clone() {
        Chset chset = new Chset();
        for (Range range : this.ranges) {
            chset.ranges.add(new Range(range.first, range.last));
        }
        chset.refreshAsciiSet();
        return chset;
    }

    @Override // com.google.gdata.util.parser.Parser
    public int parse(char[] cArr, int i, int i2, Object obj) {
        return (i >= i2 || !test(cArr[i])) ? -1 : 1;
    }

    public boolean test(char c2) {
        return c2 <= 127 ? this.asciiSet.get(c2) : testRanges(c2);
    }

    protected boolean testRanges(char c2) {
        int size = this.ranges.size();
        if (size == 0) {
            return false;
        }
        if (size == 1) {
            return this.ranges.get(0).includes(c2);
        }
        int iFind = find(c2);
        if (iFind == size || !this.ranges.get(iFind).includes(c2)) {
            return iFind != 0 && this.ranges.get(iFind + (-1)).includes(c2);
        }
        return true;
    }

    protected void set(char c2, char c3) {
        set(new Range(c2, c3));
    }

    private void set(Range range) {
        if (this.ranges.isEmpty()) {
            this.ranges.add(range);
            refreshAsciiSet();
            return;
        }
        int iFind = find(range.first);
        if (iFind == this.ranges.size() || !this.ranges.get(iFind).includes(range)) {
            if (iFind == 0 || !this.ranges.get(iFind - 1).includes(range)) {
                if (iFind != 0 && this.ranges.get(iFind - 1).mergeable(range)) {
                    merge(iFind - 1, range);
                } else if (iFind != this.ranges.size() && this.ranges.get(iFind).mergeable(range)) {
                    merge(iFind, range);
                } else {
                    this.ranges.add(iFind, range);
                }
                refreshAsciiSet();
            }
        }
    }

    protected void clear(char c2, char c3) {
        clear(new Range(c2, c3));
    }

    private void clear(Range range) {
        if (!this.ranges.isEmpty()) {
            int iFind = find(range.first);
            if (iFind > 0) {
                Range range2 = this.ranges.get(iFind - 1);
                if (range2.includes(range.first)) {
                    if (range2.last > range.last) {
                        Range range3 = new Range(range.last + 1, range2.last);
                        range2.last = range.first - 1;
                        this.ranges.add(iFind, range3);
                        refreshAsciiSet();
                        return;
                    }
                    range2.last = range.first - 1;
                }
            }
            while (iFind < this.ranges.size() && range.includes(this.ranges.get(iFind))) {
                this.ranges.remove(iFind);
            }
            if (iFind < this.ranges.size() && this.ranges.get(iFind).includes(range.last)) {
                this.ranges.get(iFind).first = range.last + 1;
            }
            refreshAsciiSet();
        }
    }

    private void refreshAsciiSet() {
        this.asciiSet.clear();
        for (char c2 = 0; c2 <= 127; c2 = (char) (c2 + 1)) {
            if (testRanges(c2)) {
                this.asciiSet.set(c2);
            }
        }
    }

    protected int size() {
        return this.ranges.size();
    }

    private int find(int i) {
        int i2;
        int i3;
        int i4 = 0;
        int size = this.ranges.size() - 1;
        while (i4 <= size) {
            int i5 = (i4 + size) / 2;
            Range range = this.ranges.get(i5);
            if (range.first < i) {
                int i6 = size;
                i3 = i5 + 1;
                i2 = i6;
            } else {
                if (range.first <= i) {
                    return i5;
                }
                i2 = i5 - 1;
                i3 = i4;
            }
            i4 = i3;
            size = i2;
        }
        return i4;
    }

    private void merge(int i, Range range) {
        Range range2 = this.ranges.get(i);
        range2.merge(range);
        int i2 = i + 1;
        while (i2 < this.ranges.size() && range2.mergeable(this.ranges.get(i2))) {
            range2.merge(this.ranges.get(i2));
            this.ranges.remove(i2);
        }
    }

    public static Chset not(Chset chset) {
        return difference(ANYCHAR, chset);
    }

    public static Chset union(Chset chset, Chset chset2) {
        Chset chset3 = (Chset) chset.clone();
        Iterator<Range> it = chset2.ranges.iterator();
        while (it.hasNext()) {
            chset3.set(it.next());
        }
        return chset3;
    }

    public static Chset difference(Chset chset, Chset chset2) {
        Chset chset3 = (Chset) chset.clone();
        Iterator<Range> it = chset2.ranges.iterator();
        while (it.hasNext()) {
            chset3.clear(it.next());
        }
        return chset3;
    }

    public static Chset intersection(Chset chset, Chset chset2) {
        return difference(chset, not(chset2));
    }

    public static Chset xor(Chset chset, Chset chset2) {
        return union(difference(chset, chset2), difference(chset2, chset));
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.ranges.size()) {
                Range range = this.ranges.get(i2);
                if (i2 > 0) {
                    stringBuffer.append(" ");
                }
                stringBuffer.append(range.first);
                stringBuffer.append("-");
                stringBuffer.append(range.last);
                i = i2 + 1;
            } else {
                return stringBuffer.toString();
            }
        }
    }

    class Range {
        int first;
        int last;

        Range(int i, int i2) {
            if (i > i2) {
                throw new IllegalArgumentException("descending ranges not supported: " + i + "-" + i2);
            }
            this.first = i;
            this.last = i2;
        }

        boolean includes(int i) {
            return this.first <= i && i <= this.last;
        }

        boolean includes(Range range) {
            return this.first <= range.first && range.last <= this.last;
        }

        boolean mergeable(Range range) {
            return (Math.max(this.last, range.last) + 1) - Math.min(this.first, range.first) <= ((range.last + 1) - range.first) + ((this.last + 1) - this.first);
        }

        void merge(Range range) {
            this.first = Math.min(this.first, range.first);
            this.last = Math.max(this.last, range.last);
        }
    }
}
