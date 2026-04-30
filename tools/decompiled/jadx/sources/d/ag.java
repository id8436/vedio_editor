package d;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import javax.annotation.Nullable;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: Headers.java */
/* JADX INFO: loaded from: classes.dex */
public final class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f4512a;

    ag(ah ahVar) {
        this.f4512a = (String[]) ahVar.f4513a.toArray(new String[ahVar.f4513a.size()]);
    }

    private ag(String[] strArr) {
        this.f4512a = strArr;
    }

    @Nullable
    public String a(String str) {
        return a(this.f4512a, str);
    }

    public int a() {
        return this.f4512a.length / 2;
    }

    public String a(int i) {
        return this.f4512a[i * 2];
    }

    public String b(int i) {
        return this.f4512a[(i * 2) + 1];
    }

    public Set<String> b() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int iA = a();
        for (int i = 0; i < iA; i++) {
            treeSet.add(a(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public List<String> b(String str) {
        int iA = a();
        ArrayList arrayList = null;
        for (int i = 0; i < iA; i++) {
            if (str.equalsIgnoreCase(a(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i));
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public ah c() {
        ah ahVar = new ah();
        Collections.addAll(ahVar.f4513a, this.f4512a);
        return ahVar;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ag) && Arrays.equals(((ag) obj).f4512a, this.f4512a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4512a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iA = a();
        for (int i = 0; i < iA; i++) {
            sb.append(a(i)).append(": ").append(b(i)).append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb.toString();
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static ag a(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        }
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            if (strArr2[i] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i] = strArr2[i].trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str = strArr2[i2];
            String str2 = strArr2[i2 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }
        return new ag(strArr2);
    }
}
