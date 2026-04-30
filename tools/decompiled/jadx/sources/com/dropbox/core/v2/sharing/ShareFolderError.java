package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharePathError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ShareFolderError {
    private Tag _tag;
    private SharePathError badPathValue;
    public static final ShareFolderError EMAIL_UNVERIFIED = new ShareFolderError().withTag(Tag.EMAIL_UNVERIFIED);
    public static final ShareFolderError TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new ShareFolderError().withTag(Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);
    public static final ShareFolderError DISALLOWED_SHARED_LINK_POLICY = new ShareFolderError().withTag(Tag.DISALLOWED_SHARED_LINK_POLICY);
    public static final ShareFolderError OTHER = new ShareFolderError().withTag(Tag.OTHER);
    public static final ShareFolderError NO_PERMISSION = new ShareFolderError().withTag(Tag.NO_PERMISSION);

    public enum Tag {
        EMAIL_UNVERIFIED,
        BAD_PATH,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        OTHER,
        NO_PERMISSION
    }

    private ShareFolderError() {
    }

    private ShareFolderError withTag(Tag tag) {
        ShareFolderError shareFolderError = new ShareFolderError();
        shareFolderError._tag = tag;
        return shareFolderError;
    }

    private ShareFolderError withTagAndBadPath(Tag tag, SharePathError sharePathError) {
        ShareFolderError shareFolderError = new ShareFolderError();
        shareFolderError._tag = tag;
        shareFolderError.badPathValue = sharePathError;
        return shareFolderError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isEmailUnverified() {
        return this._tag == Tag.EMAIL_UNVERIFIED;
    }

    public boolean isBadPath() {
        return this._tag == Tag.BAD_PATH;
    }

    public static ShareFolderError badPath(SharePathError sharePathError) {
        if (sharePathError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ShareFolderError().withTagAndBadPath(Tag.BAD_PATH, sharePathError);
    }

    public SharePathError getBadPathValue() {
        if (this._tag != Tag.BAD_PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.BAD_PATH, but was Tag." + this._tag.name());
        }
        return this.badPathValue;
    }

    public boolean isTeamPolicyDisallowsMemberPolicy() {
        return this._tag == Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
    }

    public boolean isDisallowedSharedLinkPolicy() {
        return this._tag == Tag.DISALLOWED_SHARED_LINK_POLICY;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.badPathValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ShareFolderError)) {
            ShareFolderError shareFolderError = (ShareFolderError) obj;
            if (this._tag != shareFolderError._tag) {
                return false;
            }
            switch (this._tag) {
                case EMAIL_UNVERIFIED:
                case TEAM_POLICY_DISALLOWS_MEMBER_POLICY:
                case DISALLOWED_SHARED_LINK_POLICY:
                case OTHER:
                case NO_PERMISSION:
                    return true;
                case BAD_PATH:
                    return this.badPathValue == shareFolderError.badPathValue || this.badPathValue.equals(shareFolderError.badPathValue);
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

    class Serializer extends UnionSerializer<ShareFolderError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ShareFolderError shareFolderError, g gVar) throws IOException {
            switch (shareFolderError.tag()) {
                case EMAIL_UNVERIFIED:
                    gVar.b("email_unverified");
                    return;
                case BAD_PATH:
                    gVar.e();
                    writeTag("bad_path", gVar);
                    gVar.a("bad_path");
                    SharePathError.Serializer.INSTANCE.serialize(shareFolderError.badPathValue, gVar);
                    gVar.f();
                    return;
                case TEAM_POLICY_DISALLOWS_MEMBER_POLICY:
                    gVar.b("team_policy_disallows_member_policy");
                    return;
                case DISALLOWED_SHARED_LINK_POLICY:
                    gVar.b("disallowed_shared_link_policy");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + shareFolderError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ShareFolderError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ShareFolderError shareFolderErrorBadPath;
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
            if ("email_unverified".equals(tag)) {
                shareFolderErrorBadPath = ShareFolderError.EMAIL_UNVERIFIED;
            } else if ("bad_path".equals(tag)) {
                expectField("bad_path", kVar);
                shareFolderErrorBadPath = ShareFolderError.badPath(SharePathError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("team_policy_disallows_member_policy".equals(tag)) {
                shareFolderErrorBadPath = ShareFolderError.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
            } else if ("disallowed_shared_link_policy".equals(tag)) {
                shareFolderErrorBadPath = ShareFolderError.DISALLOWED_SHARED_LINK_POLICY;
            } else if ("other".equals(tag)) {
                shareFolderErrorBadPath = ShareFolderError.OTHER;
            } else if ("no_permission".equals(tag)) {
                shareFolderErrorBadPath = ShareFolderError.NO_PERMISSION;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return shareFolderErrorBadPath;
        }
    }
}
