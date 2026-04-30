package com.learnncode.mediachooser;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.io.File;

/* JADX INFO: compiled from: MediaChooserConstants.java */
/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f3714a = "learnNcode";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f3715b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f3716c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f3717d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f3718e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f3719f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f3720g = 20;
    public static int h = 20;

    public static long a(File file, boolean z) {
        int i;
        long length = (file.length() / 1024) / 1024;
        if (z) {
            i = h;
        } else {
            i = f3720g;
        }
        if (length <= i) {
            return 0L;
        }
        return length;
    }

    public static AlertDialog.Builder a(Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setCancelable(false);
        builder.setTitle(context.getString(l.please_wait_text));
        builder.setView(((LayoutInflater) context.getSystemService("layout_inflater")).inflate(k.view_loading_media_chooser, (ViewGroup) null));
        return builder;
    }
}
