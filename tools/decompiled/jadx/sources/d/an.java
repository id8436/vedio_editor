package d;

import com.google.gdata.util.ContentType;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: MediaType.java */
/* JADX INFO: loaded from: classes.dex */
public final class an {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f4534a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f4535b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final String f4539f;

    private an(String str, String str2, String str3, @Nullable String str4) {
        this.f4536c = str;
        this.f4537d = str2;
        this.f4538e = str3;
        this.f4539f = str4;
    }

    @Nullable
    public static an a(String str) {
        Matcher matcher = f4534a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f4535b.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String strGroup = matcher2.group(1);
            if (strGroup != null && strGroup.equalsIgnoreCase(ContentType.ATTR_CHARSET)) {
                String strGroup2 = matcher2.group(2);
                if (strGroup2 != null) {
                    if (strGroup2.startsWith("'") && strGroup2.endsWith("'") && strGroup2.length() > 2) {
                        strGroup2 = strGroup2.substring(1, strGroup2.length() - 1);
                    }
                } else {
                    strGroup2 = matcher2.group(3);
                }
                if (str2 != null && !strGroup2.equalsIgnoreCase(str2)) {
                    return null;
                }
                str2 = strGroup2;
            }
        }
        return new an(str, lowerCase, lowerCase2, str2);
    }

    public String a() {
        return this.f4537d;
    }

    @Nullable
    public Charset b() {
        return a((Charset) null);
    }

    @Nullable
    public Charset a(@Nullable Charset charset) {
        try {
            return this.f4539f != null ? Charset.forName(this.f4539f) : charset;
        } catch (IllegalArgumentException e2) {
            return charset;
        }
    }

    public String toString() {
        return this.f4536c;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof an) && ((an) obj).f4536c.equals(this.f4536c);
    }

    public int hashCode() {
        return this.f4536c.hashCode();
    }
}
