package com.dropbox.core;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalizedText {
    static final StoneSerializer<LocalizedText> STONE_SERIALIZER = new StoneSerializer<LocalizedText>() { // from class: com.dropbox.core.LocalizedText.1
        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LocalizedText localizedText, g gVar) throws IOException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StoneSerializer
        public LocalizedText deserialize(k kVar) throws IOException {
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            expectStartObject(kVar);
            String str2 = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                if ("text".equals(strD)) {
                    String str3 = str;
                    strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    strDeserialize = str3;
                } else if ("locale".equals(strD)) {
                    strDeserialize = StoneSerializers.string().deserialize(kVar);
                    strDeserialize2 = str2;
                } else {
                    skipValue(kVar);
                    strDeserialize = str;
                    strDeserialize2 = str2;
                }
                str2 = strDeserialize2;
                str = strDeserialize;
            }
            if (str2 == null) {
                throw new j(kVar, "Required field \"text\" missing.");
            }
            if (str == null) {
                throw new j(kVar, "Required field \"locale\" missing.");
            }
            LocalizedText localizedText = new LocalizedText(str2, str);
            expectEndObject(kVar);
            return localizedText;
        }
    };
    private final String locale;
    private final String text;

    public LocalizedText(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("text");
        }
        if (str2 == null) {
            throw new NullPointerException("locale");
        }
        this.text = str;
        this.locale = str2;
    }

    public String getText() {
        return this.text;
    }

    public String getLocale() {
        return this.locale;
    }

    public String toString() {
        return this.text;
    }
}
