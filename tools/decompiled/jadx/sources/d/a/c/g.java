package d.a.c;

import android.support.v7.widget.ActivityChooserView;
import d.ag;
import d.ai;
import d.bd;
import d.t;
import d.u;
import java.util.List;
import java.util.regex.Pattern;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: HttpHeaders.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f4266a = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    public static long a(bd bdVar) {
        return a(bdVar.e());
    }

    public static long a(ag agVar) {
        return a(agVar.a("Content-Length"));
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e2) {
            return -1L;
        }
    }

    public static void a(u uVar, ai aiVar, ag agVar) {
        if (uVar != u.f4689a) {
            List<t> listA = t.a(aiVar, agVar);
            if (!listA.isEmpty()) {
                uVar.a(aiVar, listA);
            }
        }
    }

    public static boolean b(bd bdVar) {
        if (bdVar.a().b().equals("HEAD")) {
            return false;
        }
        int iB = bdVar.b();
        if ((iB >= 100 && iB < 200) || iB == 204 || iB == 304) {
            return a(bdVar) != -1 || HttpHeaderValues.CHUNKED.equalsIgnoreCase(bdVar.a("Transfer-Encoding"));
        }
        return true;
    }

    public static int a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static int a(String str, int i) {
        char cCharAt;
        while (i < str.length() && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\t')) {
            i++;
        }
        return i;
    }

    public static int b(String str, int i) {
        try {
            long j = Long.parseLong(str);
            if (j > 2147483647L) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException e2) {
            return i;
        }
    }
}
