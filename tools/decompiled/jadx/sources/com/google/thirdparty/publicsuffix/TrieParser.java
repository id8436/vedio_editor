package com.google.thirdparty.publicsuffix;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
class TrieParser {
    private static final Joiner PREFIX_JOINER = Joiner.on("");

    TrieParser() {
    }

    static ImmutableMap<String, PublicSuffixType> parseTrie(CharSequence charSequence) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int length = charSequence.length();
        int iDoParseTrieToBuilder = 0;
        while (iDoParseTrieToBuilder < length) {
            iDoParseTrieToBuilder += doParseTrieToBuilder(Lists.newLinkedList(), charSequence.subSequence(iDoParseTrieToBuilder, length), builder);
        }
        return builder.build();
    }

    private static int doParseTrieToBuilder(List<CharSequence> list, CharSequence charSequence, ImmutableMap.Builder<String, PublicSuffixType> builder) {
        int iDoParseTrieToBuilder;
        int length = charSequence.length();
        char cCharAt = 0;
        int i = 0;
        while (i < length) {
            cCharAt = charSequence.charAt(i);
            if (cCharAt == '&' || cCharAt == '?' || cCharAt == '!' || cCharAt == ':' || cCharAt == ',') {
                break;
            }
            i++;
        }
        list.add(0, reverse(charSequence.subSequence(0, i)));
        if (cCharAt == '!' || cCharAt == '?' || cCharAt == ':' || cCharAt == ',') {
            String strJoin = PREFIX_JOINER.join(list);
            if (strJoin.length() > 0) {
                builder.put(strJoin, PublicSuffixType.fromCode(cCharAt));
            }
        }
        int i2 = i + 1;
        if (cCharAt == '?' || cCharAt == ',') {
            iDoParseTrieToBuilder = i2;
        } else {
            iDoParseTrieToBuilder = i2;
            while (iDoParseTrieToBuilder < length) {
                iDoParseTrieToBuilder += doParseTrieToBuilder(list, charSequence.subSequence(iDoParseTrieToBuilder, length), builder);
                if (charSequence.charAt(iDoParseTrieToBuilder) == '?' || charSequence.charAt(iDoParseTrieToBuilder) == ',') {
                    iDoParseTrieToBuilder++;
                    break;
                }
            }
        }
        list.remove(0);
        return iDoParseTrieToBuilder;
    }

    private static CharSequence reverse(CharSequence charSequence) {
        int length = charSequence.length();
        if (length > 1) {
            char[] cArr = new char[length];
            cArr[0] = charSequence.charAt(length - 1);
            for (int i = 1; i < length; i++) {
                cArr[i] = charSequence.charAt((length - 1) - i);
                if (Character.isSurrogatePair(cArr[i], cArr[i - 1])) {
                    swap(cArr, i - 1, i);
                }
            }
            return new String(cArr);
        }
        return charSequence;
    }

    private static void swap(char[] cArr, int i, int i2) {
        char c2 = cArr[i];
        cArr[i] = cArr[i2];
        cArr[i2] = c2;
    }
}
