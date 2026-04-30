package com.google.gdata.data.media.mediarss;

import java.text.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public class NormalPlayTime {
    public static final NormalPlayTime NOW = new NormalPlayTime(true, -1);
    private boolean isNow;
    private long ms;

    public NormalPlayTime(long j) {
        this(false, j);
    }

    private NormalPlayTime(boolean z, long j) {
        this.isNow = z;
        this.ms = j;
    }

    public boolean isNow() {
        return this.isNow;
    }

    public long getTimeOffsetMs() {
        return this.ms;
    }

    public static NormalPlayTime parse(String str) throws ParseException {
        if (str == null) {
            return null;
        }
        if ("now".equals(str)) {
            return NOW;
        }
        return new NormalPlayTime(new NPTParser(str).parse());
    }

    public String toString() {
        return getNptSecondsRepresentation();
    }

    public String getNptSecondsRepresentation() {
        if (this.isNow) {
            return "now";
        }
        long j = this.ms / 1000;
        long j2 = this.ms % 1000;
        if (j2 == 0) {
            return Long.toString(j);
        }
        return String.format("%1$d.%2$03d", Long.valueOf(j), Long.valueOf(j2));
    }

    public String getNptHhmmssRepresentation() {
        if (this.isNow) {
            return "now";
        }
        long j = this.ms % 1000;
        long j2 = this.ms / 1000;
        long j3 = j2 % 60;
        long j4 = j2 / 60;
        long j5 = j4 % 60;
        long j6 = j4 / 60;
        if (j > 0) {
            return String.format("%1$02d:%2$02d:%3$02d.%4$03d", Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j3), Long.valueOf(j));
        }
        return String.format("%1$02d:%2$02d:%3$02d", Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j3));
    }

    class NPTParser {
        private static final char EOF = 0;
        private char current;
        private int currentIndex = -1;
        private final int length;
        private final String text;

        public NPTParser(String str) {
            this.text = str;
            this.length = str.length();
            next();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long parse() throws ParseException {
            long number;
            int number2 = parseNumber();
            if (this.current == ':') {
                next();
                long number3 = parseNumber();
                assertCurrentIs(':');
                next();
                number = ((((((long) number2) * 60) + number3) * 60) + ((long) parseNumber())) * 1000;
            } else {
                number = ((long) number2) * 1000;
            }
            if (this.current == '.') {
                next();
                int i = 100;
                int i2 = 0;
                while (i2 <= 3 && isDigit()) {
                    long jDigitValue = ((long) (digitValue() * i)) + number;
                    next();
                    i2++;
                    i /= 10;
                    number = jDigitValue;
                }
                parseNumber();
            }
            assertCurrentIs((char) 0);
            return number;
        }

        private int parseNumber() {
            int iDigitValue = 0;
            while (isDigit()) {
                iDigitValue = (iDigitValue * 10) + digitValue();
                next();
            }
            return iDigitValue;
        }

        private int digitValue() {
            return this.current - '0';
        }

        private boolean isDigit() {
            return this.current >= '0' && this.current <= '9';
        }

        private void assertCurrentIs(char c2) throws ParseException {
            if (c2 != this.current) {
                throw new ParseException("Unexpected character", this.currentIndex);
            }
        }

        private void next() {
            this.currentIndex++;
            if (this.currentIndex >= this.length) {
                this.current = (char) 0;
            } else {
                this.current = this.text.charAt(this.currentIndex);
            }
        }
    }
}
