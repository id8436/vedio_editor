package org.json.simple.parser;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes3.dex */
class Yylex {
    public static final int STRING_BEGIN = 2;
    public static final int YYEOF = -1;
    public static final int YYINITIAL = 0;
    private static final String ZZ_ACTION_PACKED_0 = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\b\u0001\t\u0001\n\u0001\u000b\u0001\f\u0001\r\u0005\u0000\u0001\f\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018";
    private static final String ZZ_ATTRIBUTE_PACKED_0 = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\b\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t";
    private static final int ZZ_BUFFERSIZE = 16384;
    private static final int ZZ_NO_MATCH = 1;
    private static final int ZZ_PUSHBACK_2BIG = 2;
    private static final String ZZ_ROWMAP_PACKED_0 = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000¢\u0000½\u0000Ø\u00006\u00006\u00006\u00006\u00006\u00006\u0000ó\u0000Ď\u00006\u0000ĩ\u0000ń\u0000ş\u0000ź\u0000ƕ\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000ư\u0000ǋ\u0000Ǧ\u0000Ǧ\u0000ȁ\u0000Ȝ\u0000ȷ\u0000ɒ\u00006\u00006\u0000ɭ\u0000ʈ\u00006";
    private static final int ZZ_UNKNOWN_ERROR = 0;
    private StringBuffer sb;
    private int yychar;
    private int yycolumn;
    private int yyline;
    private boolean zzAtBOL;
    private boolean zzAtEOF;
    private char[] zzBuffer;
    private int zzCurrentPos;
    private int zzEndRead;
    private int zzLexicalState;
    private int zzMarkedPos;
    private Reader zzReader;
    private int zzStartRead;
    private int zzState;
    private static final int[] ZZ_LEXSTATE = {0, 0, 1, 1};
    private static final String ZZ_CMAP_PACKED = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\b\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\b\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\f\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016ﾂ\u0000";
    private static final char[] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);
    private static final int[] ZZ_ACTION = zzUnpackAction();
    private static final int[] ZZ_ROWMAP = zzUnpackRowMap();
    private static final int[] ZZ_TRANS = {2, 2, 3, 4, 2, 2, 2, 5, 2, 6, 2, 2, 7, 8, 2, 9, 2, 2, 2, 2, 2, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 18, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 4, 19, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 23, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 16, 16, 16, 16, 16, 16, 16, 16, -1, -1, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, -1, -1, -1, -1, -1, -1, -1, -1, 24, 25, 26, 27, 28, 29, 30, 31, 32, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 33, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 34, 35, -1, -1, 34, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 37, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 39, -1, 39, -1, 39, -1, -1, -1, -1, -1, 39, 39, -1, -1, -1, -1, 39, 39, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 33, -1, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 35, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 40, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 42, -1, 42, -1, 42, -1, -1, -1, -1, -1, 42, 42, -1, -1, -1, -1, 42, 42, -1, -1, -1, -1, -1, -1, -1, -1, -1, 43, -1, 43, -1, 43, -1, -1, -1, -1, -1, 43, 43, -1, -1, -1, -1, 43, 43, -1, -1, -1, -1, -1, -1, -1, -1, -1, 44, -1, 44, -1, 44, -1, -1, -1, -1, -1, 44, 44, -1, -1, -1, -1, 44, 44, -1, -1, -1, -1, -1, -1, -1, -1};
    private static final String[] ZZ_ERROR_MSG = {"Unkown internal scanner error", "Error: could not match input", "Error: pushback value was too large"};
    private static final int[] ZZ_ATTRIBUTE = zzUnpackAttribute();

    Yylex(InputStream inputStream) {
        this(new InputStreamReader(inputStream));
    }

    Yylex(Reader reader) {
        this.zzLexicalState = 0;
        this.zzBuffer = new char[16384];
        this.zzAtBOL = true;
        this.sb = new StringBuffer();
        this.zzReader = reader;
    }

    private boolean zzRefill() throws IOException {
        int i;
        if (this.zzStartRead > 0) {
            System.arraycopy(this.zzBuffer, this.zzStartRead, this.zzBuffer, 0, this.zzEndRead - this.zzStartRead);
            this.zzEndRead -= this.zzStartRead;
            this.zzCurrentPos -= this.zzStartRead;
            this.zzMarkedPos -= this.zzStartRead;
            this.zzStartRead = 0;
        }
        if (this.zzCurrentPos >= this.zzBuffer.length) {
            char[] cArr = new char[this.zzCurrentPos * 2];
            System.arraycopy(this.zzBuffer, 0, cArr, 0, this.zzBuffer.length);
            this.zzBuffer = cArr;
        }
        int i2 = this.zzReader.read(this.zzBuffer, this.zzEndRead, this.zzBuffer.length - this.zzEndRead);
        if (i2 > 0) {
            this.zzEndRead += i2;
            return false;
        }
        if (i2 == 0 && (i = this.zzReader.read()) != -1) {
            char[] cArr2 = this.zzBuffer;
            int i3 = this.zzEndRead;
            this.zzEndRead = i3 + 1;
            cArr2[i3] = (char) i;
            return false;
        }
        return true;
    }

    private void zzScanError(int i) {
        String str;
        try {
            str = ZZ_ERROR_MSG[i];
        } catch (ArrayIndexOutOfBoundsException e2) {
            str = ZZ_ERROR_MSG[0];
        }
        throw new Error(str);
    }

    private static int zzUnpackAction(String str, int i, int[] iArr) {
        int i2;
        int i3 = 0;
        int length = str.length();
        int i4 = i;
        while (i3 < length) {
            int i5 = i3 + 1;
            int iCharAt = str.charAt(i3);
            int i6 = i5 + 1;
            char cCharAt = str.charAt(i5);
            while (true) {
                i2 = i4 + 1;
                iArr[i4] = cCharAt;
                iCharAt--;
                if (iCharAt <= 0) {
                    break;
                }
                i4 = i2;
            }
            i4 = i2;
            i3 = i6;
        }
        return i4;
    }

    private static int[] zzUnpackAction() {
        int[] iArr = new int[45];
        zzUnpackAction(ZZ_ACTION_PACKED_0, 0, iArr);
        return iArr;
    }

    private static int zzUnpackAttribute(String str, int i, int[] iArr) {
        int i2;
        int i3 = 0;
        int length = str.length();
        int i4 = i;
        while (i3 < length) {
            int i5 = i3 + 1;
            int iCharAt = str.charAt(i3);
            int i6 = i5 + 1;
            char cCharAt = str.charAt(i5);
            while (true) {
                i2 = i4 + 1;
                iArr[i4] = cCharAt;
                iCharAt--;
                if (iCharAt <= 0) {
                    break;
                }
                i4 = i2;
            }
            i4 = i2;
            i3 = i6;
        }
        return i4;
    }

    private static int[] zzUnpackAttribute() {
        int[] iArr = new int[45];
        zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, 0, iArr);
        return iArr;
    }

    private static char[] zzUnpackCMap(String str) {
        int i;
        int i2 = 0;
        char[] cArr = new char[65536];
        int i3 = 0;
        while (i3 < 90) {
            int i4 = i3 + 1;
            int iCharAt = str.charAt(i3);
            int i5 = i4 + 1;
            char cCharAt = str.charAt(i4);
            while (true) {
                i = i2 + 1;
                cArr[i2] = cCharAt;
                iCharAt--;
                if (iCharAt <= 0) {
                    break;
                }
                i2 = i;
            }
            i2 = i;
            i3 = i5;
        }
        return cArr;
    }

    private static int zzUnpackRowMap(String str, int i, int[] iArr) {
        int i2 = 0;
        int length = str.length();
        while (i2 < length) {
            int i3 = i2 + 1;
            iArr[i] = str.charAt(i3) | (str.charAt(i2) << 16);
            i++;
            i2 = i3 + 1;
        }
        return i;
    }

    private static int[] zzUnpackRowMap() {
        int[] iArr = new int[45];
        zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, 0, iArr);
        return iArr;
    }

    int getPosition() {
        return this.yychar;
    }

    public final void yybegin(int i) {
        this.zzLexicalState = i;
    }

    public final char yycharat(int i) {
        return this.zzBuffer[this.zzStartRead + i];
    }

    public final void yyclose() throws IOException {
        this.zzAtEOF = true;
        this.zzEndRead = this.zzStartRead;
        if (this.zzReader != null) {
            this.zzReader.close();
        }
    }

    public final int yylength() {
        return this.zzMarkedPos - this.zzStartRead;
    }

    public Yytoken yylex() throws ParseException, IOException {
        byte b2;
        int i;
        int i2;
        int i3 = this.zzEndRead;
        char[] cArr = this.zzBuffer;
        char[] cArr2 = ZZ_CMAP;
        int[] iArr = ZZ_TRANS;
        int[] iArr2 = ZZ_ROWMAP;
        int[] iArr3 = ZZ_ATTRIBUTE;
        while (true) {
            int i4 = this.zzMarkedPos;
            this.yychar += i4 - this.zzStartRead;
            int i5 = -1;
            this.zzStartRead = i4;
            this.zzCurrentPos = i4;
            this.zzState = ZZ_LEXSTATE[this.zzLexicalState];
            int i6 = i4;
            while (true) {
                if (i6 < i3) {
                    i = i6 + 1;
                    b2 = cArr[i6];
                } else if (this.zzAtEOF) {
                    b2 = -1;
                } else {
                    this.zzCurrentPos = i6;
                    this.zzMarkedPos = i4;
                    boolean zZzRefill = zzRefill();
                    int i7 = this.zzCurrentPos;
                    i4 = this.zzMarkedPos;
                    cArr = this.zzBuffer;
                    i3 = this.zzEndRead;
                    if (zZzRefill) {
                        b2 = -1;
                    } else {
                        i = i7 + 1;
                        b2 = cArr[i7];
                    }
                }
                int i8 = iArr[iArr2[this.zzState] + cArr2[b2]];
                if (i8 != -1) {
                    this.zzState = i8;
                    int i9 = iArr3[this.zzState];
                    if ((i9 & 1) == 1) {
                        int i10 = this.zzState;
                        if ((i9 & 8) == 8) {
                            i5 = i10;
                            i4 = i;
                        } else {
                            i2 = i10;
                            i4 = i;
                        }
                    } else {
                        i2 = i5;
                    }
                    i5 = i2;
                    i6 = i;
                }
            }
            this.zzMarkedPos = i4;
            if (i5 >= 0) {
                i5 = ZZ_ACTION[i5];
            }
            switch (i5) {
                case 1:
                    throw new ParseException(this.yychar, 0, new Character(yycharat(0)));
                case 2:
                    return new Yytoken(0, Long.valueOf(yytext()));
                case 3:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                    break;
                case 4:
                    this.sb.delete(0, this.sb.length());
                    yybegin(2);
                    break;
                case 5:
                    return new Yytoken(1, null);
                case 6:
                    return new Yytoken(2, null);
                case 7:
                    return new Yytoken(3, null);
                case 8:
                    return new Yytoken(4, null);
                case 9:
                    return new Yytoken(5, null);
                case 10:
                    return new Yytoken(6, null);
                case 11:
                    this.sb.append(yytext());
                    break;
                case 12:
                    this.sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    break;
                case 13:
                    yybegin(0);
                    return new Yytoken(0, this.sb.toString());
                case 14:
                    this.sb.append('\"');
                    break;
                case 15:
                    this.sb.append(IOUtils.DIR_SEPARATOR_UNIX);
                    break;
                case 16:
                    this.sb.append('\b');
                    break;
                case 17:
                    this.sb.append('\f');
                    break;
                case 18:
                    this.sb.append('\n');
                    break;
                case 19:
                    this.sb.append(CharUtils.CR);
                    break;
                case 20:
                    this.sb.append('\t');
                    break;
                case 21:
                    return new Yytoken(0, Double.valueOf(yytext()));
                case 22:
                    return new Yytoken(0, null);
                case 23:
                    return new Yytoken(0, Boolean.valueOf(yytext()));
                case 24:
                    try {
                        this.sb.append((char) Integer.parseInt(yytext().substring(2), 16));
                    } catch (Exception e2) {
                        throw new ParseException(this.yychar, 2, e2);
                    }
                    break;
                default:
                    if (b2 == -1 && this.zzStartRead == this.zzCurrentPos) {
                        this.zzAtEOF = true;
                        return null;
                    }
                    zzScanError(1);
                    break;
            }
        }
    }

    public void yypushback(int i) {
        if (i > yylength()) {
            zzScanError(2);
        }
        this.zzMarkedPos -= i;
    }

    public final void yyreset(Reader reader) {
        this.zzReader = reader;
        this.zzAtBOL = true;
        this.zzAtEOF = false;
        this.zzStartRead = 0;
        this.zzEndRead = 0;
        this.zzMarkedPos = 0;
        this.zzCurrentPos = 0;
        this.yycolumn = 0;
        this.yychar = 0;
        this.yyline = 0;
        this.zzLexicalState = 0;
    }

    public final int yystate() {
        return this.zzLexicalState;
    }

    public final String yytext() {
        return new String(this.zzBuffer, this.zzStartRead, this.zzMarkedPos - this.zzStartRead);
    }
}
