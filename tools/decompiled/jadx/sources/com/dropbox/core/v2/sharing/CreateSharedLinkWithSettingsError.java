package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import com.dropbox.core.v2.sharing.SharedLinkSettingsError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class CreateSharedLinkWithSettingsError {
    private Tag _tag;
    private LookupError pathValue;
    private SharedLinkSettingsError settingsErrorValue;
    public static final CreateSharedLinkWithSettingsError EMAIL_NOT_VERIFIED = new CreateSharedLinkWithSettingsError().withTag(Tag.EMAIL_NOT_VERIFIED);
    public static final CreateSharedLinkWithSettingsError SHARED_LINK_ALREADY_EXISTS = new CreateSharedLinkWithSettingsError().withTag(Tag.SHARED_LINK_ALREADY_EXISTS);
    public static final CreateSharedLinkWithSettingsError ACCESS_DENIED = new CreateSharedLinkWithSettingsError().withTag(Tag.ACCESS_DENIED);

    public enum Tag {
        PATH,
        EMAIL_NOT_VERIFIED,
        SHARED_LINK_ALREADY_EXISTS,
        SETTINGS_ERROR,
        ACCESS_DENIED
    }

    private CreateSharedLinkWithSettingsError() {
    }

    private CreateSharedLinkWithSettingsError withTag(Tag tag) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError._tag = tag;
        return createSharedLinkWithSettingsError;
    }

    private CreateSharedLinkWithSettingsError withTagAndPath(Tag tag, LookupError lookupError) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError._tag = tag;
        createSharedLinkWithSettingsError.pathValue = lookupError;
        return createSharedLinkWithSettingsError;
    }

    private CreateSharedLinkWithSettingsError withTagAndSettingsError(Tag tag, SharedLinkSettingsError sharedLinkSettingsError) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError._tag = tag;
        createSharedLinkWithSettingsError.settingsErrorValue = sharedLinkSettingsError;
        return createSharedLinkWithSettingsError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static CreateSharedLinkWithSettingsError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new CreateSharedLinkWithSettingsError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isEmailNotVerified() {
        return this._tag == Tag.EMAIL_NOT_VERIFIED;
    }

    public boolean isSharedLinkAlreadyExists() {
        return this._tag == Tag.SHARED_LINK_ALREADY_EXISTS;
    }

    public boolean isSettingsError() {
        return this._tag == Tag.SETTINGS_ERROR;
    }

    public static CreateSharedLinkWithSettingsError settingsError(SharedLinkSettingsError sharedLinkSettingsError) {
        if (sharedLinkSettingsError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new CreateSharedLinkWithSettingsError().withTagAndSettingsError(Tag.SETTINGS_ERROR, sharedLinkSettingsError);
    }

    public SharedLinkSettingsError getSettingsErrorValue() {
        if (this._tag != Tag.SETTINGS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.SETTINGS_ERROR, but was Tag." + this._tag.name());
        }
        return this.settingsErrorValue;
    }

    public boolean isAccessDenied() {
        return this._tag == Tag.ACCESS_DENIED;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue, this.settingsErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateSharedLinkWithSettingsError)) {
            return false;
        }
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = (CreateSharedLinkWithSettingsError) obj;
        if (this._tag != createSharedLinkWithSettingsError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == createSharedLinkWithSettingsError.pathValue || this.pathValue.equals(createSharedLinkWithSettingsError.pathValue);
            case EMAIL_NOT_VERIFIED:
                return true;
            case SHARED_LINK_ALREADY_EXISTS:
                return true;
            case SETTINGS_ERROR:
                return this.settingsErrorValue == createSharedLinkWithSettingsError.settingsErrorValue || this.settingsErrorValue.equals(createSharedLinkWithSettingsError.settingsErrorValue);
            case ACCESS_DENIED:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<CreateSharedLinkWithSettingsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError, g gVar) throws IOException {
            switch (createSharedLinkWithSettingsError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(createSharedLinkWithSettingsError.pathValue, gVar);
                    gVar.f();
                    return;
                case EMAIL_NOT_VERIFIED:
                    gVar.b("email_not_verified");
                    return;
                case SHARED_LINK_ALREADY_EXISTS:
                    gVar.b("shared_link_already_exists");
                    return;
                case SETTINGS_ERROR:
                    gVar.e();
                    writeTag("settings_error", gVar);
                    gVar.a("settings_error");
                    SharedLinkSettingsError.Serializer.INSTANCE.serialize(createSharedLinkWithSettingsError.settingsErrorValue, gVar);
                    gVar.f();
                    return;
                case ACCESS_DENIED:
                    gVar.b("access_denied");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + createSharedLinkWithSettingsError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public CreateSharedLinkWithSettingsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            CreateSharedLinkWithSettingsError createSharedLinkWithSettingsErrorPath;
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
            if ("path".equals(tag)) {
                expectField("path", kVar);
                createSharedLinkWithSettingsErrorPath = CreateSharedLinkWithSettingsError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("email_not_verified".equals(tag)) {
                createSharedLinkWithSettingsErrorPath = CreateSharedLinkWithSettingsError.EMAIL_NOT_VERIFIED;
            } else if ("shared_link_already_exists".equals(tag)) {
                createSharedLinkWithSettingsErrorPath = CreateSharedLinkWithSettingsError.SHARED_LINK_ALREADY_EXISTS;
            } else if ("settings_error".equals(tag)) {
                expectField("settings_error", kVar);
                createSharedLinkWithSettingsErrorPath = CreateSharedLinkWithSettingsError.settingsError(SharedLinkSettingsError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_denied".equals(tag)) {
                createSharedLinkWithSettingsErrorPath = CreateSharedLinkWithSettingsError.ACCESS_DENIED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return createSharedLinkWithSettingsErrorPath;
        }
    }
}
