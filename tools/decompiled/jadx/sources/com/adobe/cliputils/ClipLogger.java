package com.adobe.cliputils;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class ClipLogger {
    static String mTAG = "Clip";

    public static void Initialize(String str) {
        mTAG = str;
    }

    public static void i(String str) {
        Log.i(mTAG, str);
    }

    public static void info(String str) {
        i(str);
    }

    public static void w(String str) {
        Log.w(mTAG, str);
    }

    public static void warn(String str) {
        w(str);
    }

    public static void d(String str) {
        Log.d(mTAG, str);
    }

    public static void debug(String str) {
        d(str);
    }

    public static void e(String str) {
        Log.e(mTAG, str);
    }

    public static void error(String str) {
        e(str);
    }

    public static void v(String str) {
        Log.v(mTAG, str);
    }

    public static void verbose(String str) {
        v(str);
    }

    public static void ex(String str, Exception exc) {
        Log.e(mTAG, str, exc);
    }

    public static void exception(String str, Exception exc) {
        Log.e(mTAG, str, exc);
    }

    public static void i(String str, String str2) {
        Log.i(mTAG + "-" + str, str2);
    }

    public static void info(String str, String str2) {
        i(str2);
    }

    public static void w(String str, String str2) {
        Log.w(mTAG + "-" + str, str2);
    }

    public static void warn(String str, String str2) {
        w(str, str2);
    }

    public static void d(String str, String str2) {
        Log.d(mTAG + "-" + str, str2);
    }

    public static void debug(String str, String str2) {
        d(str, str2);
    }

    public static void e(String str, String str2) {
        Log.e(mTAG + "-" + str, str2);
    }

    public static void error(String str, String str2) {
        e(str, str2);
    }

    public static void v(String str, String str2) {
        Log.v(mTAG + "-" + str, str2);
    }

    public static void verbose(String str, String str2) {
        v(str, str2);
    }

    public static void ex(String str, String str2, Exception exc) {
        Log.e(mTAG + "-" + str, str2, exc);
    }

    public static void exception(String str, String str2, Exception exc) {
        ex(str, exc);
    }
}
