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

/* JADX INFO: loaded from: classes2.dex */
class ModifySharedLinkSettingsArgs {
    protected final boolean removeExpiration;
    protected final SharedLinkSettings settings;
    protected final String url;

    public ModifySharedLinkSettingsArgs(String str, SharedLinkSettings sharedLinkSettings, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str;
        if (sharedLinkSettings == null) {
            throw new IllegalArgumentException("Required value for 'settings' is null");
        }
        this.settings = sharedLinkSettings;
        this.removeExpiration = z;
    }

    public ModifySharedLinkSettingsArgs(String str, SharedLinkSettings sharedLinkSettings) {
        this(str, sharedLinkSettings, false);
    }

    public String getUrl() {
        return this.url;
    }

    public SharedLinkSettings getSettings() {
        return this.settings;
    }

    public boolean getRemoveExpiration() {
        return this.removeExpiration;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.settings, Boolean.valueOf(this.removeExpiration)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ModifySharedLinkSettingsArgs modifySharedLinkSettingsArgs = (ModifySharedLinkSettingsArgs) obj;
            return (this.url == modifySharedLinkSettingsArgs.url || this.url.equals(modifySharedLinkSettingsArgs.url)) && (this.settings == modifySharedLinkSettingsArgs.settings || this.settings.equals(modifySharedLinkSettingsArgs.settings)) && this.removeExpiration == modifySharedLinkSettingsArgs.removeExpiration;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ModifySharedLinkSettingsArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ModifySharedLinkSettingsArgs modifySharedLinkSettingsArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("url");
            StoneSerializers.string().serialize(modifySharedLinkSettingsArgs.url, gVar);
            gVar.a("settings");
            SharedLinkSettings.Serializer.INSTANCE.serialize(modifySharedLinkSettingsArgs.settings, gVar);
            gVar.a("remove_expiration");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(modifySharedLinkSettingsArgs.removeExpiration), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ModifySharedLinkSettingsArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            SharedLinkSettings sharedLinkSettingsDeserialize;
            String strDeserialize;
            SharedLinkSettings sharedLinkSettings = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        Boolean bool2 = bool;
                        sharedLinkSettingsDeserialize = sharedLinkSettings;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("settings".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize = bool;
                        sharedLinkSettingsDeserialize = SharedLinkSettings.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("remove_expiration".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        sharedLinkSettingsDeserialize = sharedLinkSettings;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        sharedLinkSettingsDeserialize = sharedLinkSettings;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    sharedLinkSettings = sharedLinkSettingsDeserialize;
                    bool = boolDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                if (sharedLinkSettings == null) {
                    throw new j(kVar, "Required field \"settings\" missing.");
                }
                ModifySharedLinkSettingsArgs modifySharedLinkSettingsArgs = new ModifySharedLinkSettingsArgs(str, sharedLinkSettings, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return modifySharedLinkSettingsArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
