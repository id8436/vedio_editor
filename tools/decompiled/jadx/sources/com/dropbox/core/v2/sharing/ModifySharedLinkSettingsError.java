package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedLinkSettingsError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ModifySharedLinkSettingsError {
    private Tag _tag;
    private SharedLinkSettingsError settingsErrorValue;
    public static final ModifySharedLinkSettingsError SHARED_LINK_NOT_FOUND = new ModifySharedLinkSettingsError().withTag(Tag.SHARED_LINK_NOT_FOUND);
    public static final ModifySharedLinkSettingsError SHARED_LINK_ACCESS_DENIED = new ModifySharedLinkSettingsError().withTag(Tag.SHARED_LINK_ACCESS_DENIED);
    public static final ModifySharedLinkSettingsError UNSUPPORTED_LINK_TYPE = new ModifySharedLinkSettingsError().withTag(Tag.UNSUPPORTED_LINK_TYPE);
    public static final ModifySharedLinkSettingsError OTHER = new ModifySharedLinkSettingsError().withTag(Tag.OTHER);
    public static final ModifySharedLinkSettingsError EMAIL_NOT_VERIFIED = new ModifySharedLinkSettingsError().withTag(Tag.EMAIL_NOT_VERIFIED);

    public enum Tag {
        SHARED_LINK_NOT_FOUND,
        SHARED_LINK_ACCESS_DENIED,
        UNSUPPORTED_LINK_TYPE,
        OTHER,
        SETTINGS_ERROR,
        EMAIL_NOT_VERIFIED
    }

    private ModifySharedLinkSettingsError() {
    }

    private ModifySharedLinkSettingsError withTag(Tag tag) {
        ModifySharedLinkSettingsError modifySharedLinkSettingsError = new ModifySharedLinkSettingsError();
        modifySharedLinkSettingsError._tag = tag;
        return modifySharedLinkSettingsError;
    }

    private ModifySharedLinkSettingsError withTagAndSettingsError(Tag tag, SharedLinkSettingsError sharedLinkSettingsError) {
        ModifySharedLinkSettingsError modifySharedLinkSettingsError = new ModifySharedLinkSettingsError();
        modifySharedLinkSettingsError._tag = tag;
        modifySharedLinkSettingsError.settingsErrorValue = sharedLinkSettingsError;
        return modifySharedLinkSettingsError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSharedLinkNotFound() {
        return this._tag == Tag.SHARED_LINK_NOT_FOUND;
    }

    public boolean isSharedLinkAccessDenied() {
        return this._tag == Tag.SHARED_LINK_ACCESS_DENIED;
    }

    public boolean isUnsupportedLinkType() {
        return this._tag == Tag.UNSUPPORTED_LINK_TYPE;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isSettingsError() {
        return this._tag == Tag.SETTINGS_ERROR;
    }

    public static ModifySharedLinkSettingsError settingsError(SharedLinkSettingsError sharedLinkSettingsError) {
        if (sharedLinkSettingsError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ModifySharedLinkSettingsError().withTagAndSettingsError(Tag.SETTINGS_ERROR, sharedLinkSettingsError);
    }

    public SharedLinkSettingsError getSettingsErrorValue() {
        if (this._tag != Tag.SETTINGS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.SETTINGS_ERROR, but was Tag." + this._tag.name());
        }
        return this.settingsErrorValue;
    }

    public boolean isEmailNotVerified() {
        return this._tag == Tag.EMAIL_NOT_VERIFIED;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.settingsErrorValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ModifySharedLinkSettingsError)) {
            ModifySharedLinkSettingsError modifySharedLinkSettingsError = (ModifySharedLinkSettingsError) obj;
            if (this._tag != modifySharedLinkSettingsError._tag) {
                return false;
            }
            switch (this._tag) {
                case SHARED_LINK_NOT_FOUND:
                case SHARED_LINK_ACCESS_DENIED:
                case UNSUPPORTED_LINK_TYPE:
                case OTHER:
                case EMAIL_NOT_VERIFIED:
                    return true;
                case SETTINGS_ERROR:
                    return this.settingsErrorValue == modifySharedLinkSettingsError.settingsErrorValue || this.settingsErrorValue.equals(modifySharedLinkSettingsError.settingsErrorValue);
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<ModifySharedLinkSettingsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ModifySharedLinkSettingsError modifySharedLinkSettingsError, g gVar) throws IOException {
            switch (modifySharedLinkSettingsError.tag()) {
                case SHARED_LINK_NOT_FOUND:
                    gVar.b("shared_link_not_found");
                    return;
                case SHARED_LINK_ACCESS_DENIED:
                    gVar.b("shared_link_access_denied");
                    return;
                case UNSUPPORTED_LINK_TYPE:
                    gVar.b("unsupported_link_type");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SETTINGS_ERROR:
                    gVar.e();
                    writeTag("settings_error", gVar);
                    gVar.a("settings_error");
                    SharedLinkSettingsError.Serializer.INSTANCE.serialize(modifySharedLinkSettingsError.settingsErrorValue, gVar);
                    gVar.f();
                    return;
                case EMAIL_NOT_VERIFIED:
                    gVar.b("email_not_verified");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + modifySharedLinkSettingsError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ModifySharedLinkSettingsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ModifySharedLinkSettingsError modifySharedLinkSettingsError;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("shared_link_not_found".equals(tag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.SHARED_LINK_NOT_FOUND;
            } else if ("shared_link_access_denied".equals(tag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.SHARED_LINK_ACCESS_DENIED;
            } else if ("unsupported_link_type".equals(tag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.UNSUPPORTED_LINK_TYPE;
            } else if ("other".equals(tag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.OTHER;
            } else if ("settings_error".equals(tag)) {
                expectField("settings_error", kVar);
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.settingsError(SharedLinkSettingsError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("email_not_verified".equals(tag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.EMAIL_NOT_VERIFIED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return modifySharedLinkSettingsError;
        }
    }
}
