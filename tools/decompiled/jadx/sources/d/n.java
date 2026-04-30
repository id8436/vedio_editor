package d;

import java.util.Comparator;

/* JADX INFO: compiled from: CipherSuite.java */
/* JADX INFO: loaded from: classes3.dex */
final class n implements Comparator<String> {
    n() {
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(String str, String str2) {
        int iMin = Math.min(str.length(), str2.length());
        for (int i = 4; i < iMin; i++) {
            char cCharAt = str.charAt(i);
            char cCharAt2 = str2.charAt(i);
            if (cCharAt != cCharAt2) {
                return cCharAt < cCharAt2 ? -1 : 1;
            }
        }
        int length = str.length();
        int length2 = str2.length();
        if (length != length2) {
            return length >= length2 ? 1 : -1;
        }
        return 0;
    }
}
