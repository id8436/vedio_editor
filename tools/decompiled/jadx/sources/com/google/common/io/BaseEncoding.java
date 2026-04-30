package com.google.common.io;

import com.dropbox.core.util.StringUtil;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.io.GwtWorkarounds;
import com.google.common.math.IntMath;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class BaseEncoding {
    private static final BaseEncoding BASE64 = new StandardBaseEncoding("base64()", StringUtil.Base64Digits, '=');
    private static final BaseEncoding BASE64_URL = new StandardBaseEncoding("base64Url()", StringUtil.UrlSafeBase64Digits, '=');
    private static final BaseEncoding BASE32 = new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
    private static final BaseEncoding BASE32_HEX = new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final BaseEncoding BASE16 = new StandardBaseEncoding("base16()", "0123456789ABCDEF", null);

    abstract GwtWorkarounds.ByteInput decodingStream(GwtWorkarounds.CharInput charInput);

    abstract GwtWorkarounds.ByteOutput encodingStream(GwtWorkarounds.CharOutput charOutput);

    @CheckReturnValue
    public abstract BaseEncoding lowerCase();

    abstract int maxDecodedSize(int i);

    abstract int maxEncodedSize(int i);

    @CheckReturnValue
    public abstract BaseEncoding omitPadding();

    abstract CharMatcher padding();

    @CheckReturnValue
    public abstract BaseEncoding upperCase();

    @CheckReturnValue
    public abstract BaseEncoding withPadChar(char c2);

    @CheckReturnValue
    public abstract BaseEncoding withSeparator(String str, int i);

    BaseEncoding() {
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }

        DecodingException(Throwable th) {
            initCause(th);
        }
    }

    public String encode(byte[] bArr) {
        return encode((byte[]) Preconditions.checkNotNull(bArr), 0, bArr.length);
    }

    public final String encode(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        GwtWorkarounds.CharOutput charOutputStringBuilderOutput = GwtWorkarounds.stringBuilderOutput(maxEncodedSize(i2));
        GwtWorkarounds.ByteOutput byteOutputEncodingStream = encodingStream(charOutputStringBuilderOutput);
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                byteOutputEncodingStream.write(bArr[i + i3]);
            } catch (IOException e2) {
                throw new AssertionError("impossible");
            }
        }
        byteOutputEncodingStream.close();
        return charOutputStringBuilderOutput.toString();
    }

    @GwtIncompatible("Writer,OutputStream")
    public final OutputStream encodingStream(Writer writer) {
        return GwtWorkarounds.asOutputStream(encodingStream(GwtWorkarounds.asCharOutput(writer)));
    }

    @GwtIncompatible("ByteSink,CharSink")
    public final ByteSink encodingSink(final CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        return new ByteSink() { // from class: com.google.common.io.BaseEncoding.1
            @Override // com.google.common.io.ByteSink
            public OutputStream openStream() throws IOException {
                return BaseEncoding.this.encodingStream(charSink.openStream());
            }
        };
    }

    private static byte[] extract(byte[] bArr, int i) {
        if (i != bArr.length) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            return bArr2;
        }
        return bArr;
    }

    public final byte[] decode(CharSequence charSequence) {
        try {
            return decodeChecked(charSequence);
        } catch (DecodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    final byte[] decodeChecked(CharSequence charSequence) throws DecodingException {
        String strTrimTrailingFrom = padding().trimTrailingFrom(charSequence);
        GwtWorkarounds.ByteInput byteInputDecodingStream = decodingStream(GwtWorkarounds.asCharInput(strTrimTrailingFrom));
        byte[] bArr = new byte[maxDecodedSize(strTrimTrailingFrom.length())];
        int i = 0;
        try {
            int i2 = byteInputDecodingStream.read();
            while (i2 != -1) {
                int i3 = i + 1;
                bArr[i] = (byte) i2;
                i2 = byteInputDecodingStream.read();
                i = i3;
            }
            return extract(bArr, i);
        } catch (DecodingException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }

    @GwtIncompatible("Reader,InputStream")
    public final InputStream decodingStream(Reader reader) {
        return GwtWorkarounds.asInputStream(decodingStream(GwtWorkarounds.asCharInput(reader)));
    }

    @GwtIncompatible("ByteSource,CharSource")
    public final ByteSource decodingSource(final CharSource charSource) {
        Preconditions.checkNotNull(charSource);
        return new ByteSource() { // from class: com.google.common.io.BaseEncoding.2
            @Override // com.google.common.io.ByteSource
            public InputStream openStream() throws IOException {
                return BaseEncoding.this.decodingStream(charSource.openStream());
            }
        };
    }

    public static BaseEncoding base64() {
        return BASE64;
    }

    public static BaseEncoding base64Url() {
        return BASE64_URL;
    }

    public static BaseEncoding base32() {
        return BASE32;
    }

    public static BaseEncoding base32Hex() {
        return BASE32_HEX;
    }

    public static BaseEncoding base16() {
        return BASE16;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class Alphabet extends CharMatcher {
        final int bitsPerChar;
        final int bytesPerChunk;
        private final char[] chars;
        final int charsPerChunk;
        private final byte[] decodabet;
        final int mask;
        private final String name;
        private final boolean[] validPadding;

        Alphabet(String str, char[] cArr) {
            this.name = (String) Preconditions.checkNotNull(str);
            this.chars = (char[]) Preconditions.checkNotNull(cArr);
            try {
                this.bitsPerChar = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                int iMin = Math.min(8, Integer.lowestOneBit(this.bitsPerChar));
                this.charsPerChunk = 8 / iMin;
                this.bytesPerChunk = this.bitsPerChar / iMin;
                this.mask = cArr.length - 1;
                byte[] bArr = new byte[128];
                Arrays.fill(bArr, (byte) -1);
                for (int i = 0; i < cArr.length; i++) {
                    char c2 = cArr[i];
                    Preconditions.checkArgument(CharMatcher.ASCII.matches(c2), "Non-ASCII character: %s", Character.valueOf(c2));
                    Preconditions.checkArgument(bArr[c2] == -1, "Duplicate character: %s", Character.valueOf(c2));
                    bArr[c2] = (byte) i;
                }
                this.decodabet = bArr;
                boolean[] zArr = new boolean[this.charsPerChunk];
                for (int i2 = 0; i2 < this.bytesPerChunk; i2++) {
                    zArr[IntMath.divide(i2 * 8, this.bitsPerChar, RoundingMode.CEILING)] = true;
                }
                this.validPadding = zArr;
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }

        char encode(int i) {
            return this.chars[i];
        }

        boolean isValidPaddingStartPosition(int i) {
            return this.validPadding[i % this.charsPerChunk];
        }

        int decode(char c2) throws IOException {
            if (c2 > 127 || this.decodabet[c2] == -1) {
                throw new DecodingException("Unrecognized character: " + c2);
            }
            return this.decodabet[c2];
        }

        private boolean hasLowerCase() {
            for (char c2 : this.chars) {
                if (Ascii.isLowerCase(c2)) {
                    return true;
                }
            }
            return false;
        }

        private boolean hasUpperCase() {
            for (char c2 : this.chars) {
                if (Ascii.isUpperCase(c2)) {
                    return true;
                }
            }
            return false;
        }

        Alphabet upperCase() {
            if (hasLowerCase()) {
                Preconditions.checkState(!hasUpperCase(), "Cannot call upperCase() on a mixed-case alphabet");
                char[] cArr = new char[this.chars.length];
                for (int i = 0; i < this.chars.length; i++) {
                    cArr[i] = Ascii.toUpperCase(this.chars[i]);
                }
                return new Alphabet(this.name + ".upperCase()", cArr);
            }
            return this;
        }

        Alphabet lowerCase() {
            if (hasUpperCase()) {
                Preconditions.checkState(!hasLowerCase(), "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr = new char[this.chars.length];
                for (int i = 0; i < this.chars.length; i++) {
                    cArr[i] = Ascii.toLowerCase(this.chars[i]);
                }
                return new Alphabet(this.name + ".lowerCase()", cArr);
            }
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c2) {
            return CharMatcher.ASCII.matches(c2) && this.decodabet[c2] != -1;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.name;
        }
    }

    final class StandardBaseEncoding extends BaseEncoding {
        private final Alphabet alphabet;
        private transient BaseEncoding lowerCase;

        @Nullable
        private final Character paddingChar;
        private transient BaseEncoding upperCase;

        StandardBaseEncoding(String str, String str2, @Nullable Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        StandardBaseEncoding(Alphabet alphabet, @Nullable Character ch) {
            this.alphabet = (Alphabet) Preconditions.checkNotNull(alphabet);
            Preconditions.checkArgument(ch == null || !alphabet.matches(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.paddingChar = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        CharMatcher padding() {
            return this.paddingChar == null ? CharMatcher.NONE : CharMatcher.is(this.paddingChar.charValue());
        }

        @Override // com.google.common.io.BaseEncoding
        int maxEncodedSize(int i) {
            return this.alphabet.charsPerChunk * IntMath.divide(i, this.alphabet.bytesPerChunk, RoundingMode.CEILING);
        }

        @Override // com.google.common.io.BaseEncoding
        GwtWorkarounds.ByteOutput encodingStream(final GwtWorkarounds.CharOutput charOutput) {
            Preconditions.checkNotNull(charOutput);
            return new GwtWorkarounds.ByteOutput() { // from class: com.google.common.io.BaseEncoding.StandardBaseEncoding.1
                int bitBuffer = 0;
                int bitBufferLength = 0;
                int writtenChars = 0;

                @Override // com.google.common.io.GwtWorkarounds.ByteOutput
                public void write(byte b2) throws IOException {
                    this.bitBuffer <<= 8;
                    this.bitBuffer |= b2 & UnsignedBytes.MAX_VALUE;
                    this.bitBufferLength += 8;
                    while (this.bitBufferLength >= StandardBaseEncoding.this.alphabet.bitsPerChar) {
                        charOutput.write(StandardBaseEncoding.this.alphabet.encode((this.bitBuffer >> (this.bitBufferLength - StandardBaseEncoding.this.alphabet.bitsPerChar)) & StandardBaseEncoding.this.alphabet.mask));
                        this.writtenChars++;
                        this.bitBufferLength -= StandardBaseEncoding.this.alphabet.bitsPerChar;
                    }
                }

                @Override // com.google.common.io.GwtWorkarounds.ByteOutput
                public void flush() throws IOException {
                    charOutput.flush();
                }

                @Override // com.google.common.io.GwtWorkarounds.ByteOutput
                public void close() throws IOException {
                    if (this.bitBufferLength > 0) {
                        charOutput.write(StandardBaseEncoding.this.alphabet.encode((this.bitBuffer << (StandardBaseEncoding.this.alphabet.bitsPerChar - this.bitBufferLength)) & StandardBaseEncoding.this.alphabet.mask));
                        this.writtenChars++;
                        if (StandardBaseEncoding.this.paddingChar != null) {
                            while (this.writtenChars % StandardBaseEncoding.this.alphabet.charsPerChunk != 0) {
                                charOutput.write(StandardBaseEncoding.this.paddingChar.charValue());
                                this.writtenChars++;
                            }
                        }
                    }
                    charOutput.close();
                }
            };
        }

        @Override // com.google.common.io.BaseEncoding
        int maxDecodedSize(int i) {
            return (int) (((((long) this.alphabet.bitsPerChar) * ((long) i)) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        GwtWorkarounds.ByteInput decodingStream(final GwtWorkarounds.CharInput charInput) {
            Preconditions.checkNotNull(charInput);
            return new GwtWorkarounds.ByteInput() { // from class: com.google.common.io.BaseEncoding.StandardBaseEncoding.2
                final CharMatcher paddingMatcher;
                int bitBuffer = 0;
                int bitBufferLength = 0;
                int readChars = 0;
                boolean hitPadding = false;

                {
                    this.paddingMatcher = StandardBaseEncoding.this.padding();
                }

                /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
                
                    throw new com.google.common.io.BaseEncoding.DecodingException("Padding cannot start at index " + r5.readChars);
                 */
                @Override // com.google.common.io.GwtWorkarounds.ByteInput
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public int read() throws java.io.IOException {
                    /*
                        Method dump skipped, instruction units count: 230
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.StandardBaseEncoding.AnonymousClass2.read():int");
                }

                @Override // com.google.common.io.GwtWorkarounds.ByteInput
                public void close() throws IOException {
                    charInput.close();
                }
            };
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.paddingChar == null ? this : new StandardBaseEncoding(this.alphabet, null);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c2) {
            if (8 % this.alphabet.bitsPerChar != 0) {
                return (this.paddingChar == null || this.paddingChar.charValue() != c2) ? new StandardBaseEncoding(this.alphabet, Character.valueOf(c2)) : this;
            }
            return this;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            Preconditions.checkNotNull(str);
            Preconditions.checkArgument(padding().or(this.alphabet).matchesNoneOf(str), "Separator cannot contain alphabet or padding characters");
            return new SeparatedBaseEncoding(this, str, i);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            BaseEncoding standardBaseEncoding = this.upperCase;
            if (standardBaseEncoding == null) {
                Alphabet alphabetUpperCase = this.alphabet.upperCase();
                standardBaseEncoding = alphabetUpperCase == this.alphabet ? this : new StandardBaseEncoding(alphabetUpperCase, this.paddingChar);
                this.upperCase = standardBaseEncoding;
            }
            return standardBaseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            BaseEncoding standardBaseEncoding = this.lowerCase;
            if (standardBaseEncoding == null) {
                Alphabet alphabetLowerCase = this.alphabet.lowerCase();
                standardBaseEncoding = alphabetLowerCase == this.alphabet ? this : new StandardBaseEncoding(alphabetLowerCase, this.paddingChar);
                this.lowerCase = standardBaseEncoding;
            }
            return standardBaseEncoding;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.alphabet.toString());
            if (8 % this.alphabet.bitsPerChar != 0) {
                if (this.paddingChar == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar(").append(this.paddingChar).append(')');
                }
            }
            return sb.toString();
        }
    }

    static GwtWorkarounds.CharInput ignoringInput(final GwtWorkarounds.CharInput charInput, final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charInput);
        Preconditions.checkNotNull(charMatcher);
        return new GwtWorkarounds.CharInput() { // from class: com.google.common.io.BaseEncoding.3
            @Override // com.google.common.io.GwtWorkarounds.CharInput
            public int read() throws IOException {
                int i;
                do {
                    i = charInput.read();
                    if (i == -1) {
                        break;
                    }
                } while (charMatcher.matches((char) i));
                return i;
            }

            @Override // com.google.common.io.GwtWorkarounds.CharInput
            public void close() throws IOException {
                charInput.close();
            }
        };
    }

    static GwtWorkarounds.CharOutput separatingOutput(final GwtWorkarounds.CharOutput charOutput, final String str, final int i) {
        Preconditions.checkNotNull(charOutput);
        Preconditions.checkNotNull(str);
        Preconditions.checkArgument(i > 0);
        return new GwtWorkarounds.CharOutput() { // from class: com.google.common.io.BaseEncoding.4
            int charsUntilSeparator;

            {
                this.charsUntilSeparator = i;
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void write(char c2) throws IOException {
                if (this.charsUntilSeparator == 0) {
                    for (int i2 = 0; i2 < str.length(); i2++) {
                        charOutput.write(str.charAt(i2));
                    }
                    this.charsUntilSeparator = i;
                }
                charOutput.write(c2);
                this.charsUntilSeparator--;
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void flush() throws IOException {
                charOutput.flush();
            }

            @Override // com.google.common.io.GwtWorkarounds.CharOutput
            public void close() throws IOException {
                charOutput.close();
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class SeparatedBaseEncoding extends BaseEncoding {
        private final int afterEveryChars;
        private final BaseEncoding delegate;
        private final String separator;
        private final CharMatcher separatorChars;

        SeparatedBaseEncoding(BaseEncoding baseEncoding, String str, int i) {
            this.delegate = (BaseEncoding) Preconditions.checkNotNull(baseEncoding);
            this.separator = (String) Preconditions.checkNotNull(str);
            this.afterEveryChars = i;
            Preconditions.checkArgument(i > 0, "Cannot add a separator after every %s chars", Integer.valueOf(i));
            this.separatorChars = CharMatcher.anyOf(str).precomputed();
        }

        @Override // com.google.common.io.BaseEncoding
        CharMatcher padding() {
            return this.delegate.padding();
        }

        @Override // com.google.common.io.BaseEncoding
        int maxEncodedSize(int i) {
            int iMaxEncodedSize = this.delegate.maxEncodedSize(i);
            return iMaxEncodedSize + (this.separator.length() * IntMath.divide(Math.max(0, iMaxEncodedSize - 1), this.afterEveryChars, RoundingMode.FLOOR));
        }

        @Override // com.google.common.io.BaseEncoding
        GwtWorkarounds.ByteOutput encodingStream(GwtWorkarounds.CharOutput charOutput) {
            return this.delegate.encodingStream(separatingOutput(charOutput, this.separator, this.afterEveryChars));
        }

        @Override // com.google.common.io.BaseEncoding
        int maxDecodedSize(int i) {
            return this.delegate.maxDecodedSize(i);
        }

        @Override // com.google.common.io.BaseEncoding
        GwtWorkarounds.ByteInput decodingStream(GwtWorkarounds.CharInput charInput) {
            return this.delegate.decodingStream(ignoringInput(charInput, this.separatorChars));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.delegate.omitPadding().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c2) {
            return this.delegate.withPadChar(c2).withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            throw new UnsupportedOperationException("Already have a separator");
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            return this.delegate.upperCase().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            return this.delegate.lowerCase().withSeparator(this.separator, this.afterEveryChars);
        }

        public String toString() {
            return this.delegate.toString() + ".withSeparator(\"" + this.separator + "\", " + this.afterEveryChars + ")";
        }
    }
}
