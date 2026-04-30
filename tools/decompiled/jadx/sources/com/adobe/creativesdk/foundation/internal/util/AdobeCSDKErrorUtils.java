package com.adobe.creativesdk.foundation.internal.util;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCSDKErrorUtils {
    public static void verifyArgumentNotNil(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void verifyArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
