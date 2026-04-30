package javax.mail.internet;

/* JADX INFO: compiled from: MailDateFormat.java */
/* JADX INFO: loaded from: classes3.dex */
class MailDateParser {
    int index = 0;
    char[] orig;

    public MailDateParser(char[] cArr) {
        this.orig = null;
        this.orig = cArr;
    }

    public void skipUntilNumber() throws java.text.ParseException {
        while (true) {
            try {
                switch (this.orig[this.index]) {
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        return;
                    default:
                        this.index++;
                        break;
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new java.text.ParseException("No Number Found", this.index);
            }
            throw new java.text.ParseException("No Number Found", this.index);
        }
    }

    public void skipWhiteSpace() {
        int length = this.orig.length;
        while (this.index < length) {
            switch (this.orig[this.index]) {
                case '\t':
                case '\n':
                case '\r':
                case ' ':
                    this.index++;
                    break;
                default:
                    return;
            }
        }
    }

    public int peekChar() throws java.text.ParseException {
        if (this.index < this.orig.length) {
            return this.orig[this.index];
        }
        throw new java.text.ParseException("No more characters", this.index);
    }

    public void skipChar(char c2) throws java.text.ParseException {
        if (this.index < this.orig.length) {
            if (this.orig[this.index] == c2) {
                this.index++;
                return;
            }
            throw new java.text.ParseException("Wrong char", this.index);
        }
        throw new java.text.ParseException("No more characters", this.index);
    }

    public boolean skipIfChar(char c2) throws java.text.ParseException {
        if (this.index < this.orig.length) {
            if (this.orig[this.index] != c2) {
                return false;
            }
            this.index++;
            return true;
        }
        throw new java.text.ParseException("No more characters", this.index);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int parseNumber() throws java.text.ParseException {
        /*
            r6 = this;
            r0 = 0
            r2 = 1
            char[] r1 = r6.orig
            int r3 = r1.length
            r1 = r0
        L6:
            int r4 = r6.index
            if (r4 >= r3) goto L58
            char[] r4 = r6.orig
            int r5 = r6.index
            char r4 = r4[r5]
            switch(r4) {
                case 48: goto L16;
                case 49: goto L20;
                case 50: goto L25;
                case 51: goto L2a;
                case 52: goto L2f;
                case 53: goto L34;
                case 54: goto L39;
                case 55: goto L3e;
                case 56: goto L43;
                case 57: goto L48;
                default: goto L13;
            }
        L13:
            if (r1 == 0) goto L4d
        L15:
            return r0
        L16:
            int r0 = r0 * 10
        L18:
            int r1 = r6.index
            int r1 = r1 + 1
            r6.index = r1
            r1 = r2
            goto L6
        L20:
            int r0 = r0 * 10
            int r0 = r0 + 1
            goto L18
        L25:
            int r0 = r0 * 10
            int r0 = r0 + 2
            goto L18
        L2a:
            int r0 = r0 * 10
            int r0 = r0 + 3
            goto L18
        L2f:
            int r0 = r0 * 10
            int r0 = r0 + 4
            goto L18
        L34:
            int r0 = r0 * 10
            int r0 = r0 + 5
            goto L18
        L39:
            int r0 = r0 * 10
            int r0 = r0 + 6
            goto L18
        L3e:
            int r0 = r0 * 10
            int r0 = r0 + 7
            goto L18
        L43:
            int r0 = r0 * 10
            int r0 = r0 + 8
            goto L18
        L48:
            int r0 = r0 * 10
            int r0 = r0 + 9
            goto L18
        L4d:
            java.text.ParseException r0 = new java.text.ParseException
            java.lang.String r1 = "No Number found"
            int r2 = r6.index
            r0.<init>(r1, r2)
            throw r0
        L58:
            if (r1 != 0) goto L15
            java.text.ParseException r0 = new java.text.ParseException
            java.lang.String r1 = "No Number found"
            int r2 = r6.index
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MailDateParser.parseNumber():int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int parseMonth() throws java.text.ParseException {
        char[] cArr;
        int i;
        try {
            cArr = this.orig;
            i = this.index;
            this.index = i + 1;
        } catch (ArrayIndexOutOfBoundsException e2) {
        }
        switch (cArr[i]) {
            case 'A':
            case 'a':
                char[] cArr2 = this.orig;
                int i2 = this.index;
                this.index = i2 + 1;
                char c2 = cArr2[i2];
                if (c2 == 'P' || c2 == 'p') {
                    char[] cArr3 = this.orig;
                    int i3 = this.index;
                    this.index = i3 + 1;
                    char c3 = cArr3[i3];
                    if (c3 == 'R' || c3 == 'r') {
                        return 3;
                    }
                } else if (c2 == 'U' || c2 == 'u') {
                    char[] cArr4 = this.orig;
                    int i4 = this.index;
                    this.index = i4 + 1;
                    char c4 = cArr4[i4];
                    if (c4 == 'G' || c4 == 'g') {
                        return 7;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'D':
            case 'd':
                char[] cArr5 = this.orig;
                int i5 = this.index;
                this.index = i5 + 1;
                char c5 = cArr5[i5];
                if (c5 == 'E' || c5 == 'e') {
                    char[] cArr6 = this.orig;
                    int i6 = this.index;
                    this.index = i6 + 1;
                    char c6 = cArr6[i6];
                    if (c6 == 'C' || c6 == 'c') {
                        return 11;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'F':
            case 'f':
                char[] cArr7 = this.orig;
                int i7 = this.index;
                this.index = i7 + 1;
                char c7 = cArr7[i7];
                if (c7 == 'E' || c7 == 'e') {
                    char[] cArr8 = this.orig;
                    int i8 = this.index;
                    this.index = i8 + 1;
                    char c8 = cArr8[i8];
                    if (c8 == 'B' || c8 == 'b') {
                        return 1;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'J':
            case 'j':
                char[] cArr9 = this.orig;
                int i9 = this.index;
                this.index = i9 + 1;
                switch (cArr9[i9]) {
                    case 'A':
                    case 'a':
                        char[] cArr10 = this.orig;
                        int i10 = this.index;
                        this.index = i10 + 1;
                        char c9 = cArr10[i10];
                        if (c9 == 'N' || c9 == 'n') {
                            return 0;
                        }
                        break;
                    case 'U':
                    case 'u':
                        char[] cArr11 = this.orig;
                        int i11 = this.index;
                        this.index = i11 + 1;
                        char c10 = cArr11[i11];
                        if (c10 == 'N' || c10 == 'n') {
                            return 5;
                        }
                        if (c10 == 'L' || c10 == 'l') {
                            return 6;
                        }
                        break;
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'M':
            case 'm':
                char[] cArr12 = this.orig;
                int i12 = this.index;
                this.index = i12 + 1;
                char c11 = cArr12[i12];
                if (c11 == 'A' || c11 == 'a') {
                    char[] cArr13 = this.orig;
                    int i13 = this.index;
                    this.index = i13 + 1;
                    char c12 = cArr13[i13];
                    if (c12 == 'R' || c12 == 'r') {
                        return 2;
                    }
                    if (c12 == 'Y' || c12 == 'y') {
                        return 4;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'N':
            case 'n':
                char[] cArr14 = this.orig;
                int i14 = this.index;
                this.index = i14 + 1;
                char c13 = cArr14[i14];
                if (c13 == 'O' || c13 == 'o') {
                    char[] cArr15 = this.orig;
                    int i15 = this.index;
                    this.index = i15 + 1;
                    char c14 = cArr15[i15];
                    if (c14 == 'V' || c14 == 'v') {
                        return 10;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'O':
            case 'o':
                char[] cArr16 = this.orig;
                int i16 = this.index;
                this.index = i16 + 1;
                char c15 = cArr16[i16];
                if (c15 == 'C' || c15 == 'c') {
                    char[] cArr17 = this.orig;
                    int i17 = this.index;
                    this.index = i17 + 1;
                    char c16 = cArr17[i17];
                    if (c16 == 'T' || c16 == 't') {
                        return 9;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            case 'S':
            case 's':
                char[] cArr18 = this.orig;
                int i18 = this.index;
                this.index = i18 + 1;
                char c17 = cArr18[i18];
                if (c17 == 'E' || c17 == 'e') {
                    char[] cArr19 = this.orig;
                    int i19 = this.index;
                    this.index = i19 + 1;
                    char c18 = cArr19[i19];
                    if (c18 == 'P' || c18 == 'p') {
                        return 8;
                    }
                }
                throw new java.text.ParseException("Bad Month", this.index);
            default:
                throw new java.text.ParseException("Bad Month", this.index);
        }
    }

    public int parseTimeZone() throws java.text.ParseException {
        if (this.index >= this.orig.length) {
            throw new java.text.ParseException("No more characters", this.index);
        }
        char c2 = this.orig[this.index];
        return (c2 == '+' || c2 == '-') ? parseNumericTimeZone() : parseAlphaTimeZone();
    }

    public int parseNumericTimeZone() throws java.text.ParseException {
        boolean z = false;
        char[] cArr = this.orig;
        int i = this.index;
        this.index = i + 1;
        char c2 = cArr[i];
        if (c2 == '+') {
            z = true;
        } else if (c2 != '-') {
            throw new java.text.ParseException("Bad Numeric TimeZone", this.index);
        }
        int number = parseNumber();
        int i2 = (number % 100) + ((number / 100) * 60);
        return z ? -i2 : i2;
    }

    public int parseAlphaTimeZone() throws java.text.ParseException {
        int i;
        boolean z = false;
        try {
            char[] cArr = this.orig;
            int i2 = this.index;
            this.index = i2 + 1;
            switch (cArr[i2]) {
                case 'C':
                case 'c':
                    i = 360;
                    z = true;
                    break;
                case 'E':
                case 'e':
                    i = 300;
                    z = true;
                    break;
                case 'G':
                case 'g':
                    char[] cArr2 = this.orig;
                    int i3 = this.index;
                    this.index = i3 + 1;
                    char c2 = cArr2[i3];
                    if (c2 == 'M' || c2 == 'm') {
                        char[] cArr3 = this.orig;
                        int i4 = this.index;
                        this.index = i4 + 1;
                        char c3 = cArr3[i4];
                        if (c3 == 'T' || c3 == 't') {
                            i = 0;
                        }
                        break;
                    }
                    throw new java.text.ParseException("Bad Alpha TimeZone", this.index);
                case 'M':
                case 'm':
                    i = 420;
                    z = true;
                    break;
                case 'P':
                case 'p':
                    i = 480;
                    z = true;
                    break;
                case 'U':
                case 'u':
                    char[] cArr4 = this.orig;
                    int i5 = this.index;
                    this.index = i5 + 1;
                    char c4 = cArr4[i5];
                    if (c4 != 'T' && c4 != 't') {
                        throw new java.text.ParseException("Bad Alpha TimeZone", this.index);
                    }
                    i = 0;
                    break;
                    break;
                default:
                    throw new java.text.ParseException("Bad Alpha TimeZone", this.index);
            }
            if (z) {
                char[] cArr5 = this.orig;
                int i6 = this.index;
                this.index = i6 + 1;
                char c5 = cArr5[i6];
                if (c5 == 'S' || c5 == 's') {
                    char[] cArr6 = this.orig;
                    int i7 = this.index;
                    this.index = i7 + 1;
                    char c6 = cArr6[i7];
                    if (c6 != 'T' && c6 != 't') {
                        throw new java.text.ParseException("Bad Alpha TimeZone", this.index);
                    }
                    return i;
                }
                if (c5 == 'D' || c5 == 'd') {
                    char[] cArr7 = this.orig;
                    int i8 = this.index;
                    this.index = i8 + 1;
                    char c7 = cArr7[i8];
                    if (c7 == 'T' || c7 != 't') {
                        return i - 60;
                    }
                    throw new java.text.ParseException("Bad Alpha TimeZone", this.index);
                }
                return i;
            }
            return i;
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new java.text.ParseException("Bad Alpha TimeZone", this.index);
        }
    }

    int getIndex() {
        return this.index;
    }
}
