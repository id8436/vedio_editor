package com.google.gdata.util.common.base;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class CharEscaperBuilder {
    private int max = -1;
    private final Map<Character, String> map = new HashMap();

    class CharArrayDecorator extends CharEscaper {
        private final int replaceLength;
        private final char[][] replacements;

        public CharArrayDecorator(char[][] cArr) {
            this.replacements = cArr;
            this.replaceLength = cArr.length;
        }

        @Override // com.google.gdata.util.common.base.CharEscaper, com.google.gdata.util.common.base.Escaper
        public String escape(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt < this.replacements.length && this.replacements[cCharAt] != null) {
                    return escapeSlow(str, i);
                }
            }
            return str;
        }

        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            if (c2 < this.replaceLength) {
                return this.replacements[c2];
            }
            return null;
        }
    }

    public CharEscaperBuilder addEscape(char c2, String str) {
        this.map.put(Character.valueOf(c2), str);
        if (c2 > this.max) {
            this.max = c2;
        }
        return this;
    }

    public CharEscaperBuilder addEscapes(char[] cArr, String str) {
        for (char c2 : cArr) {
            addEscape(c2, str);
        }
        return this;
    }

    public char[][] toArray() {
        char[][] cArr = new char[this.max + 1][];
        for (Map.Entry<Character, String> entry : this.map.entrySet()) {
            cArr[entry.getKey().charValue()] = entry.getValue().toCharArray();
        }
        return cArr;
    }

    public CharEscaper toEscaper() {
        return new CharArrayDecorator(toArray());
    }
}
