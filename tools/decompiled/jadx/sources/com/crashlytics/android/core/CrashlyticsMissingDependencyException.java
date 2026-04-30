package com.crashlytics.android.core;

import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsMissingDependencyException extends RuntimeException {
    private static final long serialVersionUID = -1151536370019872859L;

    CrashlyticsMissingDependencyException(String str) {
        super(buildExceptionMessage(str));
    }

    private static String buildExceptionMessage(String str) {
        return IOUtils.LINE_SEPARATOR_UNIX + str + IOUtils.LINE_SEPARATOR_UNIX;
    }
}
