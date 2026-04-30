package com.adobe.premiereclip.util;

import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class HSUtils {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final boolean SORTABLE_IDENTIFIER_UTILITY_BASE_10 = false;
    private static final boolean SORTABLE_IDENTIFIER_UTILITY_BASE_26 = false;
    private static final boolean SORTABLE_IDENTIFIER_UTILITY_BASE_62 = true;

    static {
        $assertionsDisabled = !HSUtils.class.desiredAssertionStatus();
    }

    public static String valueBetween(String str, String str2) {
        int i = 0;
        if (str == null) {
            if (str2 == null) {
                return midPointIdentifier();
            }
            return simpleDecrementIdentifier(str2);
        }
        if (str2 == null) {
            return simpleIncrementIdentifier(str);
        }
        int iCompareTo = str.compareTo(str2);
        if (iCompareTo != 0) {
            if (iCompareTo <= 0) {
                str2 = str;
                str = str2;
            }
            int iMax = Math.max(str2.length(), str.length()) + 2;
            String strAppendCharsToString = appendCharsToString(str2, digitCharForValue(0), iMax);
            String strAppendCharsToString2 = appendCharsToString(str, digitCharForValue(0), iMax);
            String strGreatestCommonPrefix = greatestCommonPrefix(strAppendCharsToString, strAppendCharsToString2);
            String strReplaceFirst = strAppendCharsToString.replaceFirst(strGreatestCommonPrefix, "");
            String strReplaceFirst2 = strAppendCharsToString2.replaceFirst(strGreatestCommonPrefix, "");
            char[] cArr = {0, 0};
            char[] cArr2 = {0, 0};
            firstTwoDigits(strReplaceFirst, cArr);
            char c2 = cArr[0];
            char c3 = cArr[1];
            firstTwoDigits(strReplaceFirst2, cArr2);
            char c4 = cArr2[0];
            char c5 = cArr2[1];
            int iValueForDigitChar = valueForDigitChar(c4) - valueForDigitChar(c2);
            if (iValueForDigitChar > 1) {
                String strConcat = strGreatestCommonPrefix.concat(String.valueOf(digitCharForValue((iValueForDigitChar / 2) + valueForDigitChar(c2))));
                debug_verifySequentialElseLogMessage(str2, strConcat, str);
                return strConcat;
            }
            int iValueForDigitChar2 = (((valueForDigitChar(c5) - valueForDigitChar(c3)) + numDigitValues()) + 1) / 2;
            if (iValueForDigitChar2 >= numDigitValues()) {
                iValueForDigitChar2 -= numDigitValues();
                i = 1;
            }
            int iValueForDigitChar3 = iValueForDigitChar2 + valueForDigitChar(c3);
            if (iValueForDigitChar3 >= numDigitValues()) {
                iValueForDigitChar3 -= numDigitValues();
                i++;
            }
            if (!$assertionsDisabled && i != 0 && i != 1) {
                throw new AssertionError();
            }
            String strConcat2 = strGreatestCommonPrefix.concat(String.valueOf(digitCharForValue(i + valueForDigitChar(c2))));
            String strConcat3 = iValueForDigitChar3 != 0 ? strConcat2.concat(String.valueOf(digitCharForValue(iValueForDigitChar3))) : strConcat2;
            if (strConcat3.equals(str)) {
                strConcat3 = str2.concat(String.valueOf(digitCharForValue(numDigitValues() / 2)));
            }
            debug_verifySequentialElseLogMessage(str2, strConcat3, str);
            return strConcat3;
        }
        return str;
    }

    public static String valueBefore(String str) {
        return simpleDecrementIdentifier(str);
    }

    public static String valueAfter(String str) {
        return simpleIncrementIdentifier(str);
    }

    public static ArrayList<String> generateSequentialIdentifiers(int i) {
        int i2 = 0;
        ArrayList<String> arrayList = new ArrayList<>(i);
        if (i != 0) {
            if (i == 1) {
                arrayList.add(midPointIdentifier());
            } else {
                int iNumDigitValues = numDigitValues();
                if (i < (iNumDigitValues - 1) * iNumDigitValues) {
                    char[] cArr = new char[3];
                    cArr[0] = '.';
                    int i3 = 0;
                    loop0: while (i2 < iNumDigitValues) {
                        cArr[1] = digitCharForValue(i2);
                        int i4 = i3;
                        for (int i5 = 1; i5 < iNumDigitValues; i5++) {
                            cArr[2] = digitCharForValue(i5);
                            arrayList.add(String.valueOf(cArr));
                            i4++;
                            if (i4 >= i) {
                                break loop0;
                            }
                        }
                        i2++;
                        i3 = i4;
                    }
                } else {
                    char[] cArr2 = new char[5];
                    cArr2[0] = '.';
                    int i6 = 0;
                    loop2: for (int i7 = 0; i7 < iNumDigitValues; i7++) {
                        cArr2[1] = digitCharForValue(i7);
                        for (int i8 = 0; i8 < iNumDigitValues; i8++) {
                            cArr2[2] = digitCharForValue(i8);
                            for (int i9 = 0; i9 < iNumDigitValues; i9++) {
                                cArr2[3] = digitCharForValue(i9);
                                int i10 = 0;
                                while (i10 < iNumDigitValues) {
                                    cArr2[4] = digitCharForValue(i10);
                                    int i11 = i6;
                                    for (int i12 = 1; i12 < iNumDigitValues; i12++) {
                                        cArr2[5] = digitCharForValue(i12);
                                        arrayList.add(String.valueOf(cArr2));
                                        i11++;
                                        if (i11 >= i) {
                                            break loop2;
                                        }
                                    }
                                    i10++;
                                    i6 = i11;
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    static String simpleIncrementIdentifier(String str) {
        char cDigitCharForValue = digitCharForValue(numDigitValues() - 1);
        char cCharAt = str.charAt(str.length() - 1);
        if (cCharAt < cDigitCharForValue) {
            return str.replace(str.substring(str.length() - 1), String.valueOf(digitCharForValue(valueForDigitChar(cCharAt) + 1)));
        }
        return str.concat(String.valueOf(digitCharForValue(1)));
    }

    static String greatestCommonPrefix(String str, String str2) {
        int iMin = Math.min(str.length(), str2.length());
        for (int i = 0; i < iMin; i++) {
            if (str.charAt(i) != str2.charAt(i)) {
                return str.substring(0, i);
            }
        }
        return str.substring(0, iMin);
    }

    static String simpleDecrementIdentifier(String str) {
        String strValueOf;
        char cDigitCharForValue = digitCharForValue(0);
        char cDigitCharForValue2 = digitCharForValue(2);
        char cDigitCharForValue3 = digitCharForValue(numDigitValues() - 1);
        if (str.charAt(str.length() - 1) >= cDigitCharForValue2) {
            strValueOf = String.valueOf(digitCharForValue(valueForDigitChar(r3) - 1));
        } else {
            strValueOf = String.valueOf(new char[]{cDigitCharForValue, cDigitCharForValue3});
        }
        return str.replace(str.substring(str.length() - 1), strValueOf);
    }

    static int valueForDigitChar(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'A' && c2 <= 'Z') {
            return (c2 - 'A') + 10;
        }
        if (c2 < 'a' || c2 > 'z') {
            return 0;
        }
        return (c2 - 'a') + 36;
    }

    static char digitCharForValue(int i) {
        int i2 = 48;
        if (i >= 0 && i <= 9) {
            i2 = i + 48;
        } else {
            int i3 = i - 10;
            if (i3 >= 0 && i3 <= 25) {
                i2 = i3 + 65;
            } else {
                int i4 = i3 - 26;
                if (i4 >= 0 && i4 <= 25) {
                    i2 = i4 + 97;
                }
            }
        }
        return (char) i2;
    }

    static int numDigitValues() {
        return 62;
    }

    static String midPointIdentifier() {
        return ".".concat(String.valueOf(digitCharForValue(numDigitValues() / 2)));
    }

    static String appendCharsToString(String str, char c2, int i) {
        while (str.length() < i) {
            str = str.concat(String.valueOf(c2));
        }
        return str;
    }

    static void firstTwoDigits(String str, char[] cArr) {
        cArr[0] = str.charAt(0);
        cArr[1] = str.charAt(1);
    }

    static void debug_verifySequentialElseLogMessage(String str, String str2, String str3) {
        int iCompareTo = str.compareTo(str2);
        int iCompareTo2 = str2.compareTo(str3);
        if (iCompareTo > 0 || iCompareTo2 > 0) {
            Log.e("HSUtils", "Output was not alphabetically between inputs!");
        }
    }
}
