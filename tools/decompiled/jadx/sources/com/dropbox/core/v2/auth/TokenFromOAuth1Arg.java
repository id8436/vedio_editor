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
class TokenFromOAuth1Arg {
    protected final String oauth1Token;
    protected final String oauth1TokenSecret;

    public TokenFromOAuth1Arg(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'oauth1Token' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'oauth1Token' is shorter than 1");
        }
        this.oauth1Token = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'oauth1TokenSecret' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'oauth1TokenSecret' is shorter than 1");
        }
        this.oauth1TokenSecret = str2;
    }

    public String getOauth1Token() {
        return this.oauth1Token;
    }

    public String getOauth1TokenSecret() {
        return this.oauth1TokenSecret;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.oauth1Token, this.oauth1TokenSecret});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TokenFromOAuth1Arg tokenFromOAuth1Arg = (TokenFromOAuth1Arg) obj;
            return (this.oauth1Token == tokenFromOAuth1Arg.oauth1Token || this.oauth1Token.equals(tokenFromOAuth1Arg.oauth1Token)) && (this.oauth1TokenSecret == tokenFromOAuth1Arg.oauth1TokenSecret || this.oauth1TokenSecret.equals(tokenFromOAuth1Arg.oauth1TokenSecret));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TokenFromOAuth1Arg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TokenFromOAuth1Arg tokenFromOAuth1Arg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("oauth1_token");
            StoneSerializers.string().serialize(tokenFromOAuth1Arg.oauth1Token, gVar);
            gVar.a("oauth1_token_secret");
            StoneSerializers.string().serialize(tokenFromOAuth1Arg.oauth1TokenSecret, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TokenFromOAuth1Arg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("oauth1_token".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("oauth1_token_secret".equals(strD)) {
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
                    throw new j(kVar, "Required field \"oauth1_token\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"oauth1_token_secret\" missing.");
                }
                TokenFromOAuth1Arg tokenFromOAuth1Arg = new TokenFromOAuth1Arg(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return tokenFromOAuth1Arg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
