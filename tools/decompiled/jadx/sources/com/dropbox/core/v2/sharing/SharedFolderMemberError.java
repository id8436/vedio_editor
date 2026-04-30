package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.MemberAccessLevelResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedFolderMemberError {
    public static final SharedFolderMemberError INVALID_DROPBOX_ID = new SharedFolderMemberError().withTag(Tag.INVALID_DROPBOX_ID);
    public static final SharedFolderMemberError NOT_A_MEMBER = new SharedFolderMemberError().withTag(Tag.NOT_A_MEMBER);
    public static final SharedFolderMemberError OTHER = new SharedFolderMemberError().withTag(Tag.OTHER);
    private Tag _tag;
    private MemberAccessLevelResult noExplicitAccessValue;

    public enum Tag {
        INVALID_DROPBOX_ID,
        NOT_A_MEMBER,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    private SharedFolderMemberError() {
    }

    private SharedFolderMemberError withTag(Tag tag) {
        SharedFolderMemberError sharedFolderMemberError = new SharedFolderMemberError();
        sharedFolderMemberError._tag = tag;
        return sharedFolderMemberError;
    }

    private SharedFolderMemberError withTagAndNoExplicitAccess(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        SharedFolderMemberError sharedFolderMemberError = new SharedFolderMemberError();
        sharedFolderMemberError._tag = tag;
        sharedFolderMemberError.noExplicitAccessValue = memberAccessLevelResult;
        return sharedFolderMemberError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInvalidDropboxId() {
        return this._tag == Tag.INVALID_DROPBOX_ID;
    }

    public boolean isNotAMember() {
        return this._tag == Tag.NOT_A_MEMBER;
    }

    public boolean isNoExplicitAccess() {
        return this._tag == Tag.NO_EXPLICIT_ACCESS;
    }

    public static SharedFolderMemberError noExplicitAccess(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SharedFolderMemberError().withTagAndNoExplicitAccess(Tag.NO_EXPLICIT_ACCESS, memberAccessLevelResult);
    }

    public MemberAccessLevelResult getNoExplicitAccessValue() {
        if (this._tag != Tag.NO_EXPLICIT_ACCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this._tag.name());
        }
        return this.noExplicitAccessValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.noExplicitAccessValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SharedFolderMemberError)) {
            return false;
        }
        SharedFolderMemberError sharedFolderMemberError = (SharedFolderMemberError) obj;
        if (this._tag != sharedFolderMemberError._tag) {
            return false;
        }
        switch (this._tag) {
            case INVALID_DROPBOX_ID:
                return true;
            case NOT_A_MEMBER:
                return true;
            case NO_EXPLICIT_ACCESS:
                return this.noExplicitAccessValue == sharedFolderMemberError.noExplicitAccessValue || this.noExplicitAccessValue.equals(sharedFolderMemberError.noExplicitAccessValue);
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

    class Serializer extends UnionSerializer<SharedFolderMemberError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderMemberError sharedFolderMemberError, g gVar) throws IOException {
            switch (sharedFolderMemberError.tag()) {
                case INVALID_DROPBOX_ID:
                    gVar.b("invalid_dropbox_id");
                    break;
                case NOT_A_MEMBER:
                    gVar.b("not_a_member");
                    break;
                case NO_EXPLICIT_ACCESS:
                    gVar.e();
                    writeTag("no_explicit_access", gVar);
                    MemberAccessLevelResult.Serializer.INSTANCE.serialize(sharedFolderMemberError.noExplicitAccessValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedFolderMemberError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedFolderMemberError sharedFolderMemberErrorNoExplicitAccess;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("invalid_dropbox_id".equals(tag)) {
                sharedFolderMemberErrorNoExplicitAccess = SharedFolderMemberError.INVALID_DROPBOX_ID;
            } else if ("not_a_member".equals(tag)) {
                sharedFolderMemberErrorNoExplicitAccess = SharedFolderMemberError.NOT_A_MEMBER;
            } else if ("no_explicit_access".equals(tag)) {
                sharedFolderMemberErrorNoExplicitAccess = SharedFolderMemberError.noExplicitAccess(MemberAccessLevelResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                sharedFolderMemberErrorNoExplicitAccess = SharedFolderMemberError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedFolderMemberErrorNoExplicitAccess;
        }
    }
}
