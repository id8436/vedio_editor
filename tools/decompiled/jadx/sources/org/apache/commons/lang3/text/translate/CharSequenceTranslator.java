package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharSequenceTranslator {
    public abstract int translate(CharSequence charSequence, int i, Writer writer) throws IOException;

    public final String translate(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(charSequence.length() * 2);
            translate(charSequence, stringWriter);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final void translate(CharSequence charSequence, Writer writer) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (charSequence != null) {
            int length = charSequence.length();
            int length2 = 0;
            while (length2 < length) {
                int iTranslate = translate(charSequence, length2, writer);
                if (iTranslate == 0) {
                    char[] chars = Character.toChars(Character.codePointAt(charSequence, length2));
                    writer.write(chars);
                    length2 += chars.length;
                } else {
                    int iCharCount = length2;
                    for (int i = 0; i < iTranslate; i++) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                    }
                    length2 = iCharCount;
                }
            }
        }
    }

    public final CharSequenceTranslator with(CharSequenceTranslator... charSequenceTranslatorArr) {
        CharSequenceTranslator[] charSequenceTranslatorArr2 = new CharSequenceTranslator[charSequenceTranslatorArr.length + 1];
        charSequenceTranslatorArr2[0] = this;
        System.arraycopy(charSequenceTranslatorArr, 0, charSequenceTranslatorArr2, 1, charSequenceTranslatorArr.length);
        return new AggregateTranslator(charSequenceTranslatorArr2);
    }

    public static String hex(int i) {
        return Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }
}
