package com.google.gdata.util.common.base;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UnicodeEscaper implements Escaper {
    private static final int DEST_PAD = 32;
    private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal<char[]>() { // from class: com.google.gdata.util.common.base.UnicodeEscaper.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public char[] initialValue() {
            return new char[1024];
        }
    };

    protected abstract char[] escape(int i);

    protected int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            int iCodePointAt = codePointAt(charSequence, i, i2);
            if (iCodePointAt < 0 || escape(iCodePointAt) != null) {
                break;
            }
            i += Character.isSupplementaryCodePoint(iCodePointAt) ? 2 : 1;
        }
        return i;
    }

    @Override // com.google.gdata.util.common.base.Escaper
    public String escape(String str) {
        int length = str.length();
        int iNextEscapeIndex = nextEscapeIndex(str, 0, length);
        return iNextEscapeIndex == length ? str : escapeSlow(str, iNextEscapeIndex);
    }

    protected final String escapeSlow(String str, int i) {
        int length = str.length();
        int i2 = 0;
        char[] cArrGrowBuffer = DEST_TL.get();
        int length2 = 0;
        while (i < length) {
            int iCodePointAt = codePointAt(str, i, length);
            if (iCodePointAt < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] cArrEscape = escape(iCodePointAt);
            if (cArrEscape != null) {
                int i3 = i - i2;
                int length3 = length2 + i3 + cArrEscape.length;
                if (cArrGrowBuffer.length < length3) {
                    cArrGrowBuffer = growBuffer(cArrGrowBuffer, length2, length3 + (length - i) + 32);
                }
                if (i3 > 0) {
                    str.getChars(i2, i, cArrGrowBuffer, length2);
                    length2 += i3;
                }
                if (cArrEscape.length > 0) {
                    System.arraycopy(cArrEscape, 0, cArrGrowBuffer, length2, cArrEscape.length);
                    length2 += cArrEscape.length;
                }
            }
            int i4 = (Character.isSupplementaryCodePoint(iCodePointAt) ? 2 : 1) + i;
            i = nextEscapeIndex(str, i4, length);
            i2 = i4;
        }
        int i5 = length - i2;
        if (i5 > 0) {
            int i6 = i5 + length2;
            if (cArrGrowBuffer.length < i6) {
                cArrGrowBuffer = growBuffer(cArrGrowBuffer, length2, i6);
            }
            str.getChars(i2, length, cArrGrowBuffer, length2);
            length2 = i6;
        }
        return new String(cArrGrowBuffer, 0, length2);
    }

    @Override // com.google.gdata.util.common.base.Escaper
    public Appendable escape(final Appendable appendable) {
        Preconditions.checkNotNull(appendable);
        return new Appendable() { // from class: com.google.gdata.util.common.base.UnicodeEscaper.1
            int pendingHighSurrogate = -1;
            char[] decodedChars = new char[2];

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence) throws IOException {
                return append(charSequence, 0, charSequence.length());
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
                int i3;
                if (i < i2) {
                    if (this.pendingHighSurrogate != -1) {
                        i3 = i + 1;
                        char cCharAt = charSequence.charAt(i);
                        if (!Character.isLowSurrogate(cCharAt)) {
                            throw new IllegalArgumentException("Expected low surrogate character but got " + cCharAt);
                        }
                        char[] cArrEscape = UnicodeEscaper.this.escape(Character.toCodePoint((char) this.pendingHighSurrogate, cCharAt));
                        if (cArrEscape != null) {
                            outputChars(cArrEscape, cArrEscape.length);
                            i++;
                        } else {
                            appendable.append((char) this.pendingHighSurrogate);
                        }
                        this.pendingHighSurrogate = -1;
                    } else {
                        i3 = i;
                    }
                    while (true) {
                        int iNextEscapeIndex = UnicodeEscaper.this.nextEscapeIndex(charSequence, i3, i2);
                        if (iNextEscapeIndex > i) {
                            appendable.append(charSequence, i, iNextEscapeIndex);
                        }
                        if (iNextEscapeIndex == i2) {
                            break;
                        }
                        int iCodePointAt = UnicodeEscaper.codePointAt(charSequence, iNextEscapeIndex, i2);
                        if (iCodePointAt < 0) {
                            this.pendingHighSurrogate = -iCodePointAt;
                            break;
                        }
                        char[] cArrEscape2 = UnicodeEscaper.this.escape(iCodePointAt);
                        if (cArrEscape2 != null) {
                            outputChars(cArrEscape2, cArrEscape2.length);
                        } else {
                            outputChars(this.decodedChars, Character.toChars(iCodePointAt, this.decodedChars, 0));
                        }
                        i = iNextEscapeIndex + (Character.isSupplementaryCodePoint(iCodePointAt) ? 2 : 1);
                        i3 = i;
                    }
                }
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c2) throws IOException {
                if (this.pendingHighSurrogate != -1) {
                    if (!Character.isLowSurrogate(c2)) {
                        throw new IllegalArgumentException("Expected low surrogate character but got '" + c2 + "' with value " + ((int) c2));
                    }
                    char[] cArrEscape = UnicodeEscaper.this.escape(Character.toCodePoint((char) this.pendingHighSurrogate, c2));
                    if (cArrEscape != null) {
                        outputChars(cArrEscape, cArrEscape.length);
                    } else {
                        appendable.append((char) this.pendingHighSurrogate);
                        appendable.append(c2);
                    }
                    this.pendingHighSurrogate = -1;
                } else if (Character.isHighSurrogate(c2)) {
                    this.pendingHighSurrogate = c2;
                } else {
                    if (Character.isLowSurrogate(c2)) {
                        throw new IllegalArgumentException("Unexpected low surrogate character '" + c2 + "' with value " + ((int) c2));
                    }
                    char[] cArrEscape2 = UnicodeEscaper.this.escape(c2);
                    if (cArrEscape2 != null) {
                        outputChars(cArrEscape2, cArrEscape2.length);
                    } else {
                        appendable.append(c2);
                    }
                }
                return this;
            }

            private void outputChars(char[] cArr, int i) throws IOException {
                for (int i2 = 0; i2 < i; i2++) {
                    appendable.append(cArr[i2]);
                }
            }
        };
    }

    protected static final int codePointAt(CharSequence charSequence, int i, int i2) {
        if (i < i2) {
            int i3 = i + 1;
            char cCharAt = charSequence.charAt(i);
            if (cCharAt >= 55296 && cCharAt <= 57343) {
                if (cCharAt <= 56319) {
                    if (i3 == i2) {
                        return -cCharAt;
                    }
                    char cCharAt2 = charSequence.charAt(i3);
                    if (Character.isLowSurrogate(cCharAt2)) {
                        return Character.toCodePoint(cCharAt, cCharAt2);
                    }
                    throw new IllegalArgumentException("Expected low surrogate but got char '" + cCharAt2 + "' with value " + ((int) cCharAt2) + " at index " + i3);
                }
                throw new IllegalArgumentException("Unexpected low surrogate character '" + cCharAt + "' with value " + ((int) cCharAt) + " at index " + (i3 - 1));
            }
            return cCharAt;
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static final char[] growBuffer(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }
}
