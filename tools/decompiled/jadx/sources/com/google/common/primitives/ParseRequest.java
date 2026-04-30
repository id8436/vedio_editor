package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
final class ParseRequest {
    final int radix;
    final String rawValue;

    private ParseRequest(String str, int i) {
        this.rawValue = str;
        this.radix = i;
    }

    static ParseRequest fromString(String str) {
        int i = 16;
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char cCharAt = str.charAt(0);
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (cCharAt == '#') {
            str = str.substring(1);
        } else if (cCharAt == '0' && str.length() > 1) {
            str = str.substring(1);
            i = 8;
        } else {
            i = 10;
        }
        return new ParseRequest(str, i);
    }
}
