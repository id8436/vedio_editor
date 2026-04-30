package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.SharedLinkSettings;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class CreateSharedLinkWithSettingsArg {
    protected final String path;
    protected final SharedLinkSettings settings;

    public CreateSharedLinkWithSettingsArg(String str, SharedLinkSettings sharedLinkSettings) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        this.settings = sharedLinkSettings;
    }

    public CreateSharedLinkWithSettingsArg(String str) {
        this(str, null);
    }

    public String getPath() {
        return this.path;
    }

    public SharedLinkSettings getSettings() {
        return this.settings;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.settings});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            CreateSharedLinkWithSettingsArg createSharedLinkWithSettingsArg = (CreateSharedLinkWithSettingsArg) obj;
            if (this.path == createSharedLinkWithSettingsArg.path || this.path.equals(createSharedLinkWithSettingsArg.path)) {
                if (this.settings == createSharedLinkWithSettingsArg.settings) {
                    return true;
                }
                if (this.settings != null && this.settings.equals(createSharedLinkWithSettingsArg.settings)) {
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

    class Serializer extends StructSerializer<CreateSharedLinkWithSettingsArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CreateSharedLinkWithSettingsArg createSharedLinkWithSettingsArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(createSharedLinkWithSettingsArg.path, gVar);
            if (createSharedLinkWithSettingsArg.settings != null) {
                gVar.a("settings");
                StoneSerializers.nullableStruct(SharedLinkSettings.Serializer.INSTANCE).serialize(createSharedLinkWithSettingsArg.settings, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CreateSharedLinkWithSettingsArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharedLinkSettings sharedLinkSettings;
            String strDeserialize;
            SharedLinkSettings sharedLinkSettings2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        SharedLinkSettings sharedLinkSettings3 = sharedLinkSettings2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        sharedLinkSettings = sharedLinkSettings3;
                    } else if ("settings".equals(strD)) {
                        sharedLinkSettings = (SharedLinkSettings) StoneSerializers.nullableStruct(SharedLinkSettings.Serializer.INSTANCE).deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        sharedLinkSettings = sharedLinkSettings2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    sharedLinkSettings2 = sharedLinkSettings;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                CreateSharedLinkWithSettingsArg createSharedLinkWithSettingsArg = new CreateSharedLinkWithSettingsArg(str, sharedLinkSettings2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return createSharedLinkWithSettingsArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
