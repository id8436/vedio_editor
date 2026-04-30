package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.AddFolderMemberError;
import com.dropbox.core.v2.sharing.SharedFolderAccessError;
import com.dropbox.core.v2.sharing.SharedFolderMemberError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdateFolderMemberError {
    public static final UpdateFolderMemberError INSUFFICIENT_PLAN = new UpdateFolderMemberError().withTag(Tag.INSUFFICIENT_PLAN);
    public static final UpdateFolderMemberError NO_PERMISSION = new UpdateFolderMemberError().withTag(Tag.NO_PERMISSION);
    public static final UpdateFolderMemberError OTHER = new UpdateFolderMemberError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    private SharedFolderMemberError memberErrorValue;
    private AddFolderMemberError noExplicitAccessValue;

    public enum Tag {
        ACCESS_ERROR,
        MEMBER_ERROR,
        NO_EXPLICIT_ACCESS,
        INSUFFICIENT_PLAN,
        NO_PERMISSION,
        OTHER
    }

    private UpdateFolderMemberError() {
    }

    private UpdateFolderMemberError withTag(Tag tag) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError._tag = tag;
        return updateFolderMemberError;
    }

    private UpdateFolderMemberError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError._tag = tag;
        updateFolderMemberError.accessErrorValue = sharedFolderAccessError;
        return updateFolderMemberError;
    }

    private UpdateFolderMemberError withTagAndMemberError(Tag tag, SharedFolderMemberError sharedFolderMemberError) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError._tag = tag;
        updateFolderMemberError.memberErrorValue = sharedFolderMemberError;
        return updateFolderMemberError;
    }

    private UpdateFolderMemberError withTagAndNoExplicitAccess(Tag tag, AddFolderMemberError addFolderMemberError) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError._tag = tag;
        updateFolderMemberError.noExplicitAccessValue = addFolderMemberError;
        return updateFolderMemberError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static UpdateFolderMemberError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UpdateFolderMemberError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isMemberError() {
        return this._tag == Tag.MEMBER_ERROR;
    }

    public static UpdateFolderMemberError memberError(SharedFolderMemberError sharedFolderMemberError) {
        if (sharedFolderMemberError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UpdateFolderMemberError().withTagAndMemberError(Tag.MEMBER_ERROR, sharedFolderMemberError);
    }

    public SharedFolderMemberError getMemberErrorValue() {
        if (this._tag != Tag.MEMBER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this._tag.name());
        }
        return this.memberErrorValue;
    }

    public boolean isNoExplicitAccess() {
        return this._tag == Tag.NO_EXPLICIT_ACCESS;
    }

    public static UpdateFolderMemberError noExplicitAccess(AddFolderMemberError addFolderMemberError) {
        if (addFolderMemberError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UpdateFolderMemberError().withTagAndNoExplicitAccess(Tag.NO_EXPLICIT_ACCESS, addFolderMemberError);
    }

    public AddFolderMemberError getNoExplicitAccessValue() {
        if (this._tag != Tag.NO_EXPLICIT_ACCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this._tag.name());
        }
        return this.noExplicitAccessValue;
    }

    public boolean isInsufficientPlan() {
        return this._tag == Tag.INSUFFICIENT_PLAN;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.memberErrorValue, this.noExplicitAccessValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateFolderMemberError)) {
            return false;
        }
        UpdateFolderMemberError updateFolderMemberError = (UpdateFolderMemberError) obj;
        if (this._tag != updateFolderMemberError._tag) {
            return false;
        }
        switch (this._tag) {
            case ACCESS_ERROR:
                return this.accessErrorValue == updateFolderMemberError.accessErrorValue || this.accessErrorValue.equals(updateFolderMemberError.accessErrorValue);
            case MEMBER_ERROR:
                return this.memberErrorValue == updateFolderMemberError.memberErrorValue || this.memberErrorValue.equals(updateFolderMemberError.memberErrorValue);
            case NO_EXPLICIT_ACCESS:
                return this.noExplicitAccessValue == updateFolderMemberError.noExplicitAccessValue || this.noExplicitAccessValue.equals(updateFolderMemberError.noExplicitAccessValue);
            case INSUFFICIENT_PLAN:
                return true;
            case NO_PERMISSION:
                return true;
            case OTHER:
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

    class Serializer extends UnionSerializer<UpdateFolderMemberError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UpdateFolderMemberError updateFolderMemberError, g gVar) throws IOException {
            switch (updateFolderMemberError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(updateFolderMemberError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case MEMBER_ERROR:
                    gVar.e();
                    writeTag("member_error", gVar);
                    gVar.a("member_error");
                    SharedFolderMemberError.Serializer.INSTANCE.serialize(updateFolderMemberError.memberErrorValue, gVar);
                    gVar.f();
                    break;
                case NO_EXPLICIT_ACCESS:
                    gVar.e();
                    writeTag("no_explicit_access", gVar);
                    gVar.a("no_explicit_access");
                    AddFolderMemberError.Serializer.INSTANCE.serialize(updateFolderMemberError.noExplicitAccessValue, gVar);
                    gVar.f();
                    break;
                case INSUFFICIENT_PLAN:
                    gVar.b("insufficient_plan");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UpdateFolderMemberError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UpdateFolderMemberError updateFolderMemberErrorNoExplicitAccess;
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
            if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                updateFolderMemberErrorNoExplicitAccess = UpdateFolderMemberError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("member_error".equals(tag)) {
                expectField("member_error", kVar);
                updateFolderMemberErrorNoExplicitAccess = UpdateFolderMemberError.memberError(SharedFolderMemberError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("no_explicit_access".equals(tag)) {
                expectField("no_explicit_access", kVar);
                updateFolderMemberErrorNoExplicitAccess = UpdateFolderMemberError.noExplicitAccess(AddFolderMemberError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("insufficient_plan".equals(tag)) {
                updateFolderMemberErrorNoExplicitAccess = UpdateFolderMemberError.INSUFFICIENT_PLAN;
            } else if ("no_permission".equals(tag)) {
                updateFolderMemberErrorNoExplicitAccess = UpdateFolderMemberError.NO_PERMISSION;
            } else {
                updateFolderMemberErrorNoExplicitAccess = UpdateFolderMemberError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return updateFolderMemberErrorNoExplicitAccess;
        }
    }
}
