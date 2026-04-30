package com.google.thirdparty.publicsuffix;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public enum PublicSuffixType {
    PRIVATE(':', ','),
    ICANN('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    PublicSuffixType(char c2, char c3) {
        this.innerNodeCode = c2;
        this.leafNodeCode = c3;
    }

    char getLeafNodeCode() {
        return this.leafNodeCode;
    }

    char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    static PublicSuffixType fromCode(char c2) {
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.getInnerNodeCode() == c2 || publicSuffixType.getLeafNodeCode() == c2) {
                return publicSuffixType;
            }
        }
        throw new IllegalArgumentException("No enum corresponding to given code: " + c2);
    }

    static PublicSuffixType fromIsPrivate(boolean z) {
        return z ? PRIVATE : ICANN;
    }
}
