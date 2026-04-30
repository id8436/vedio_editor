package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class GetSharedLinkMetadataArg {
    protected final String linkPassword;
    protected final String path;
    protected final String url;

    public GetSharedLinkMetadataArg(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str;
        if (str2 != null && !Pattern.matches("/(.|[\\r\\n])*", str2)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str2;
        this.linkPassword = str3;
    }

    public GetSharedLinkMetadataArg(String str) {
        this(str, null, null);
    }

    public String getUrl() {
        return this.url;
    }

    public String getPath() {
        return this.path;
    }

    public String getLinkPassword() {
        return this.linkPassword;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected String linkPassword;
        protected String path;
        protected final String url;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            this.path = null;
            this.linkPassword = null;
        }

        public Builder withPath(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            return this;
        }

        public Builder withLinkPassword(String str) {
            this.linkPassword = str;
            return this;
        }

        public GetSharedLinkMetadataArg build() {
            return new GetSharedLinkMetadataArg(this.url, this.path, this.linkPassword);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.path, this.linkPassword});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetSharedLinkMetadataArg getSharedLinkMetadataArg = (GetSharedLinkMetadataArg) obj;
            if ((this.url == getSharedLinkMetadataArg.url || this.url.equals(getSharedLinkMetadataArg.url)) && (this.path == getSharedLinkMetadataArg.path || (this.path != null && this.path.equals(getSharedLinkMetadataArg.path)))) {
                if (this.linkPassword == getSharedLinkMetadataArg.linkPassword) {
                    return true;
                }
                if (this.linkPassword != null && this.linkPassword.equals(getSharedLinkMetadataArg.linkPassword)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetSharedLinkMetadataArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetSharedLinkMetadataArg getSharedLinkMetadataArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("url");
            StoneSerializers.string().serialize(getSharedLinkMetadataArg.url, gVar);
            if (getSharedLinkMetadataArg.path != null) {
                gVar.a("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(getSharedLinkMetadataArg.path, gVar);
            }
            if (getSharedLinkMetadataArg.linkPassword != null) {
                gVar.a("link_password");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(getSharedLinkMetadataArg.linkPassword, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetSharedLinkMetadataArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String strDeserialize;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                String str5 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        String str6 = str3;
                        str2 = str4;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str6;
                    } else if ("path".equals(strD)) {
                        strDeserialize = str5;
                        str = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("link_password".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                        strDeserialize = str5;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                        strDeserialize = str5;
                    }
                    str5 = strDeserialize;
                    str4 = str2;
                    str3 = str;
                }
                if (str5 == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                GetSharedLinkMetadataArg getSharedLinkMetadataArg = new GetSharedLinkMetadataArg(str5, str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getSharedLinkMetadataArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
