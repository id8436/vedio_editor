package com.crashlytics.android.answers;

import c.a.a.a.f;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class AnswersEventValidator {
    boolean failFast;
    final int maxNumAttributes;
    final int maxStringLength;

    public AnswersEventValidator(int i, int i2, boolean z) {
        this.maxNumAttributes = i;
        this.maxStringLength = i2;
        this.failFast = z;
    }

    public String limitStringLength(String str) {
        if (str.length() > this.maxStringLength) {
            logOrThrowException(new IllegalArgumentException(String.format(Locale.US, "String is too long, truncating to %d characters", Integer.valueOf(this.maxStringLength))));
            return str.substring(0, this.maxStringLength);
        }
        return str;
    }

    public boolean isNull(Object obj, String str) {
        if (obj != null) {
            return false;
        }
        logOrThrowException(new NullPointerException(str + " must not be null"));
        return true;
    }

    public boolean isFullMap(Map<String, Object> map, String str) {
        if (map.size() < this.maxNumAttributes || map.containsKey(str)) {
            return false;
        }
        logOrThrowException(new IllegalArgumentException(String.format(Locale.US, "Limit of %d attributes reached, skipping attribute", Integer.valueOf(this.maxNumAttributes))));
        return true;
    }

    private void logOrThrowException(RuntimeException runtimeException) {
        if (this.failFast) {
            throw runtimeException;
        }
        f.h().e(Answers.TAG, "Invalid user input detected", runtimeException);
    }
}
