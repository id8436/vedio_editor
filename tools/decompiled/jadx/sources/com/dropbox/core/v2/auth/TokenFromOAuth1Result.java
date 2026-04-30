package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TokenFromOAuth1Result {
    protected final String oauth2Token;

    public TokenFromOAuth1Result(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'oauth2Token' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'oauth2Token' is shorter than 1");
        }
        this.oauth2Token = str;
    }

    public String getOauth2Token() {
        return this.oauth2Token;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.oauth2Token});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TokenFromOAuth1Result tokenFromOAuth1Result = (TokenFromOAuth1Result) obj;
        return this.oauth2Token == tokenFromOAuth1Result.oauth2Token || this.oauth2Token.equals(tokenFromOAuth1Result.oauth2Token);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TokenFromOAuth1Result> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TokenFromOAuth1Result tokenFromOAuth1Result, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("oauth2_token");
            StoneSerializers.string().serialize(tokenFromOAuth1Result.oauth2Token, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TokenFromOAuth1Result deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("oauth2_token".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"oauth2_token\" missing.");
                }
                TokenFromOAuth1Result tokenFromOAuth1Result = new TokenFromOAuth1Result(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return tokenFromOAuth1Result;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
