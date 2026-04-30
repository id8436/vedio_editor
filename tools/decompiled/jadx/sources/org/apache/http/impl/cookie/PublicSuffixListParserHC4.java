package org.apache.http.impl.cookie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class PublicSuffixListParserHC4 {
    private static final int MAX_LINE_LEN = 256;
    private final PublicSuffixFilterHC4 filter;

    PublicSuffixListParserHC4(PublicSuffixFilterHC4 publicSuffixFilterHC4) {
        this.filter = publicSuffixFilterHC4;
    }

    public void parse(Reader reader) throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(reader);
        StringBuilder sb = new StringBuilder(256);
        boolean z = true;
        while (z) {
            boolean line = readLine(bufferedReader, sb);
            String string = sb.toString();
            if (string.length() == 0) {
                z = line;
            } else if (string.startsWith("//")) {
                z = line;
            } else {
                if (string.startsWith(".")) {
                    string = string.substring(1);
                }
                boolean zStartsWith = string.startsWith("!");
                if (zStartsWith) {
                    string = string.substring(1);
                }
                if (zStartsWith) {
                    arrayList2.add(string);
                } else {
                    arrayList.add(string);
                }
                z = line;
            }
        }
        this.filter.setPublicSuffixes(arrayList);
        this.filter.setExceptions(arrayList2);
    }

    private boolean readLine(Reader reader, StringBuilder sb) throws IOException {
        char c2;
        sb.setLength(0);
        boolean z = false;
        do {
            int i = reader.read();
            if (i == -1 || (c2 = (char) i) == '\n') {
                return i != -1;
            }
            if (Character.isWhitespace(c2)) {
                z = true;
            }
            if (!z) {
                sb.append(c2);
            }
        } while (sb.length() <= 256);
        throw new IOException("Line too long");
    }
}
