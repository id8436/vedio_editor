package com.google.gdata.util.common.base;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharEscaper implements Escaper {
    private static final int DEST_PAD = 32;
    private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal<char[]>() { // from class: com.google.gdata.util.common.base.CharEscaper.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public char[] initialValue() {
            return new char[1024];
        }
    };

    protected abstract char[] escape(char c2);

    @Override // com.google.gdata.util.common.base.Escaper
    public String escape(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (escape(str.charAt(i)) != null) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @Override // com.google.gdata.util.common.base.Escaper
    public Appendable escape(final Appendable appendable) {
        Preconditions.checkNotNull(appendable);
        return new Appendable() { // from class: com.google.gdata.util.common.base.CharEscaper.1
            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence) throws IOException {
                return append(charSequence, 0, charSequence.length());
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
                int i3 = i;
                while (i < i2) {
                    char[] cArrEscape = CharEscaper.this.escape(charSequence.charAt(i));
                    if (cArrEscape != null) {
                        if (i3 < i) {
                            appendable.append(charSequence, i3, i);
                        }
                        outputChars(cArrEscape);
                        i3 = i + 1;
                    }
                    i++;
                }
                if (i3 < i2) {
                    appendable.append(charSequence, i3, i2);
                }
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c2) throws IOException {
                char[] cArrEscape = CharEscaper.this.escape(c2);
                if (cArrEscape == null) {
                    appendable.append(c2);
                } else {
                    outputChars(cArrEscape);
                }
                return this;
            }

            private void outputChars(char[] cArr) throws IOException {
                for (char c2 : cArr) {
                    appendable.append(c2);
                }
            }
        };
    }

    protected String escapeSlow(String str, int i) {
        int i2;
        int length = str.length();
        char[] cArr = DEST_TL.get();
        int length2 = cArr.length;
        int i3 = 0;
        char[] cArrGrowBuffer = cArr;
        int i4 = 0;
        while (i < length) {
            char[] cArrEscape = escape(str.charAt(i));
            if (cArrEscape != null) {
                int length3 = cArrEscape.length;
                int i5 = i - i4;
                int i6 = i3 + i5 + length3;
                if (length2 < i6) {
                    length2 = (length - i) + i6 + 32;
                    cArrGrowBuffer = growBuffer(cArrGrowBuffer, i3, length2);
                }
                if (i5 > 0) {
                    str.getChars(i4, i, cArrGrowBuffer, i3);
                    i2 = i3 + i5;
                } else {
                    i2 = i3;
                }
                if (length3 > 0) {
                    System.arraycopy(cArrEscape, 0, cArrGrowBuffer, i2, length3);
                    i2 += length3;
                }
                i3 = i2;
                i4 = i + 1;
            }
            i++;
        }
        int i7 = length - i4;
        if (i7 > 0) {
            int i8 = i7 + i3;
            if (length2 < i8) {
                cArrGrowBuffer = growBuffer(cArrGrowBuffer, i3, i8);
            }
            str.getChars(i4, length, cArrGrowBuffer, i3);
            i3 = i8;
        }
        return new String(cArrGrowBuffer, 0, i3);
    }

    private static final char[] growBuffer(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }
}
