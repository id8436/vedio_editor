package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedLink {
    protected final String password;
    protected final String url;

    public SharedLink(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str;
        this.password = str2;
    }

    public SharedLink(String str) {
        this(str, null);
    }

    public String getUrl() {
        return this.url;
    }

    public String getPassword() {
        return this.password;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.password});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedLink sharedLink = (SharedLink) obj;
            if (this.url == sharedLink.url || this.url.equals(sharedLink.url)) {
                if (this.password == sharedLink.password) {
                    return true;
                }
                if (this.password != null && this.password.equals(sharedLink.password)) {
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

    class Serializer extends StructSerializer<SharedLink> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedLink sharedLink, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("url");
            StoneSerializers.string().serialize(sharedLink.url, gVar);
            if (sharedLink.password != null) {
                gVar.a(Login.ATTRIBUTE_PASSWORD);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedLink.password, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedLink deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if (Login.ATTRIBUTE_PASSWORD.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                SharedLink sharedLink = new SharedLink(str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedLink;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
