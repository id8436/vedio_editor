package com.d.a.a;

import android.support.v7.widget.ActivityChooserView;
import com.dropbox.core.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: Base64Variants.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f1337a = new a("MIME", StringUtil.Base64Digits, true, '=', 76);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f1338b = new a(f1337a, "MIME-NO-LINEFEEDS", ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f1339c = new a(f1337a, "PEM", true, '=', 64);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f1340d;

    static {
        StringBuilder sb = new StringBuilder(StringUtil.Base64Digits);
        sb.setCharAt(sb.indexOf("+"), '-');
        sb.setCharAt(sb.indexOf(URIUtil.SLASH), '_');
        f1340d = new a("MODIFIED-FOR-URL", sb.toString(), false, (char) 0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static a a() {
        return f1338b;
    }
}
