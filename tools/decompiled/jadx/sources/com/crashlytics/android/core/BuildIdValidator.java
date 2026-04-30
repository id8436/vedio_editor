package com.crashlytics.android.core;

import android.util.Log;
import c.a.a.a.a.b.m;
import c.a.a.a.f;

/* JADX INFO: loaded from: classes2.dex */
class BuildIdValidator {
    private static final String MESSAGE = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
    private final String buildId;
    private final boolean requiringBuildId;

    public BuildIdValidator(String str, boolean z) {
        this.buildId = str;
        this.requiringBuildId = z;
    }

    public void validate(String str, String str2) {
        if (m.c(this.buildId) && this.requiringBuildId) {
            String message = getMessage(str, str2);
            Log.e(CrashlyticsCore.TAG, ".");
            Log.e(CrashlyticsCore.TAG, ".     |  | ");
            Log.e(CrashlyticsCore.TAG, ".     |  |");
            Log.e(CrashlyticsCore.TAG, ".     |  |");
            Log.e(CrashlyticsCore.TAG, ".   \\ |  | /");
            Log.e(CrashlyticsCore.TAG, ".    \\    /");
            Log.e(CrashlyticsCore.TAG, ".     \\  /");
            Log.e(CrashlyticsCore.TAG, ".      \\/");
            Log.e(CrashlyticsCore.TAG, ".");
            Log.e(CrashlyticsCore.TAG, message);
            Log.e(CrashlyticsCore.TAG, ".");
            Log.e(CrashlyticsCore.TAG, ".      /\\");
            Log.e(CrashlyticsCore.TAG, ".     /  \\");
            Log.e(CrashlyticsCore.TAG, ".    /    \\");
            Log.e(CrashlyticsCore.TAG, ".   / |  | \\");
            Log.e(CrashlyticsCore.TAG, ".     |  |");
            Log.e(CrashlyticsCore.TAG, ".     |  |");
            Log.e(CrashlyticsCore.TAG, ".     |  |");
            Log.e(CrashlyticsCore.TAG, ".");
            throw new CrashlyticsMissingDependencyException(message);
        }
        if (!this.requiringBuildId) {
            f.h().a(CrashlyticsCore.TAG, "Configured not to require a build ID.");
        }
    }

    protected String getMessage(String str, String str2) {
        return MESSAGE;
    }
}
