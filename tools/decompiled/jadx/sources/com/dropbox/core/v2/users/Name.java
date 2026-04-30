package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Name {
    protected final String abbreviatedName;
    protected final String displayName;
    protected final String familiarName;
    protected final String givenName;
    protected final String surname;

    public Name(String str, String str2, String str3, String str4, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'givenName' is null");
        }
        this.givenName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'surname' is null");
        }
        this.surname = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'familiarName' is null");
        }
        this.familiarName = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        this.displayName = str4;
        if (str5 == null) {
            throw new IllegalArgumentException("Required value for 'abbreviatedName' is null");
        }
        this.abbreviatedName = str5;
    }

    public String getGivenName() {
        return this.givenName;
    }

    public String getSurname() {
        return this.surname;
    }

    public String getFamiliarName() {
        return this.familiarName;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getAbbreviatedName() {
        return this.abbreviatedName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.givenName, this.surname, this.familiarName, this.displayName, this.abbreviatedName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Name name = (Name) obj;
            return (this.givenName == name.givenName || this.givenName.equals(name.givenName)) && (this.surname == name.surname || this.surname.equals(name.surname)) && ((this.familiarName == name.familiarName || this.familiarName.equals(name.familiarName)) && ((this.displayName == name.displayName || this.displayName.equals(name.displayName)) && (this.abbreviatedName == name.abbreviatedName || this.abbreviatedName.equals(name.abbreviatedName))));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<Name> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Name name, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("given_name");
            StoneSerializers.string().serialize(name.givenName, gVar);
            gVar.a("surname");
            StoneSerializers.string().serialize(name.surname, gVar);
            gVar.a("familiar_name");
            StoneSerializers.string().serialize(name.familiarName, gVar);
            gVar.a("display_name");
            StoneSerializers.string().serialize(name.displayName, gVar);
            gVar.a("abbreviated_name");
            StoneSerializers.string().serialize(name.abbreviatedName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Name deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String strDeserialize2 = null;
                String strDeserialize3 = null;
                String strDeserialize4 = null;
                String strDeserialize5 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("given_name".equals(strD)) {
                        strDeserialize5 = StoneSerializers.string().deserialize(kVar);
                    } else if ("surname".equals(strD)) {
                        strDeserialize4 = StoneSerializers.string().deserialize(kVar);
                    } else if ("familiar_name".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                    } else if ("display_name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("abbreviated_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize5 == null) {
                    throw new j(kVar, "Required field \"given_name\" missing.");
                }
                if (strDeserialize4 == null) {
                    throw new j(kVar, "Required field \"surname\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"familiar_name\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"display_name\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"abbreviated_name\" missing.");
                }
                Name name = new Name(strDeserialize5, strDeserialize4, strDeserialize3, strDeserialize2, strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return name;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
