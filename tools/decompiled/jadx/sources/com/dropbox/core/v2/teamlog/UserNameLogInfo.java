package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UserNameLogInfo {
    protected final String givenName;
    protected final String locale;
    protected final String surname;

    public UserNameLogInfo(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'givenName' is null");
        }
        this.givenName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'surname' is null");
        }
        this.surname = str2;
        this.locale = str3;
    }

    public UserNameLogInfo(String str, String str2) {
        this(str, str2, null);
    }

    public String getGivenName() {
        return this.givenName;
    }

    public String getSurname() {
        return this.surname;
    }

    public String getLocale() {
        return this.locale;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.givenName, this.surname, this.locale});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserNameLogInfo userNameLogInfo = (UserNameLogInfo) obj;
            if ((this.givenName == userNameLogInfo.givenName || this.givenName.equals(userNameLogInfo.givenName)) && (this.surname == userNameLogInfo.surname || this.surname.equals(userNameLogInfo.surname))) {
                if (this.locale == userNameLogInfo.locale) {
                    return true;
                }
                if (this.locale != null && this.locale.equals(userNameLogInfo.locale)) {
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

    class Serializer extends StructSerializer<UserNameLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserNameLogInfo userNameLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("given_name");
            StoneSerializers.string().serialize(userNameLogInfo.givenName, gVar);
            gVar.a("surname");
            StoneSerializers.string().serialize(userNameLogInfo.surname, gVar);
            if (userNameLogInfo.locale != null) {
                gVar.a("locale");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userNameLogInfo.locale, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserNameLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String strDeserialize2;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("given_name".equals(strD)) {
                        String str5 = str2;
                        strDeserialize = str3;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        str = str5;
                    } else if ("surname".equals(strD)) {
                        strDeserialize2 = str4;
                        str = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("locale".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                    }
                    str4 = strDeserialize2;
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str4 == null) {
                    throw new j(kVar, "Required field \"given_name\" missing.");
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"surname\" missing.");
                }
                UserNameLogInfo userNameLogInfo = new UserNameLogInfo(str4, str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return userNameLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
