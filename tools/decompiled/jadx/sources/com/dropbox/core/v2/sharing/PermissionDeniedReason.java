package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.InsufficientPlan;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionDeniedReason {
    private Tag _tag;
    private InsufficientPlan insufficientPlanValue;
    public static final PermissionDeniedReason USER_NOT_SAME_TEAM_AS_OWNER = new PermissionDeniedReason().withTag(Tag.USER_NOT_SAME_TEAM_AS_OWNER);
    public static final PermissionDeniedReason USER_NOT_ALLOWED_BY_OWNER = new PermissionDeniedReason().withTag(Tag.USER_NOT_ALLOWED_BY_OWNER);
    public static final PermissionDeniedReason TARGET_IS_INDIRECT_MEMBER = new PermissionDeniedReason().withTag(Tag.TARGET_IS_INDIRECT_MEMBER);
    public static final PermissionDeniedReason TARGET_IS_OWNER = new PermissionDeniedReason().withTag(Tag.TARGET_IS_OWNER);
    public static final PermissionDeniedReason TARGET_IS_SELF = new PermissionDeniedReason().withTag(Tag.TARGET_IS_SELF);
    public static final PermissionDeniedReason TARGET_NOT_ACTIVE = new PermissionDeniedReason().withTag(Tag.TARGET_NOT_ACTIVE);
    public static final PermissionDeniedReason FOLDER_IS_LIMITED_TEAM_FOLDER = new PermissionDeniedReason().withTag(Tag.FOLDER_IS_LIMITED_TEAM_FOLDER);
    public static final PermissionDeniedReason OWNER_NOT_ON_TEAM = new PermissionDeniedReason().withTag(Tag.OWNER_NOT_ON_TEAM);
    public static final PermissionDeniedReason PERMISSION_DENIED = new PermissionDeniedReason().withTag(Tag.PERMISSION_DENIED);
    public static final PermissionDeniedReason RESTRICTED_BY_TEAM = new PermissionDeniedReason().withTag(Tag.RESTRICTED_BY_TEAM);
    public static final PermissionDeniedReason USER_ACCOUNT_TYPE = new PermissionDeniedReason().withTag(Tag.USER_ACCOUNT_TYPE);
    public static final PermissionDeniedReason USER_NOT_ON_TEAM = new PermissionDeniedReason().withTag(Tag.USER_NOT_ON_TEAM);
    public static final PermissionDeniedReason FOLDER_IS_INSIDE_SHARED_FOLDER = new PermissionDeniedReason().withTag(Tag.FOLDER_IS_INSIDE_SHARED_FOLDER);
    public static final PermissionDeniedReason RESTRICTED_BY_PARENT_FOLDER = new PermissionDeniedReason().withTag(Tag.RESTRICTED_BY_PARENT_FOLDER);
    public static final PermissionDeniedReason OTHER = new PermissionDeniedReason().withTag(Tag.OTHER);

    public enum Tag {
        USER_NOT_SAME_TEAM_AS_OWNER,
        USER_NOT_ALLOWED_BY_OWNER,
        TARGET_IS_INDIRECT_MEMBER,
        TARGET_IS_OWNER,
        TARGET_IS_SELF,
        TARGET_NOT_ACTIVE,
        FOLDER_IS_LIMITED_TEAM_FOLDER,
        OWNER_NOT_ON_TEAM,
        PERMISSION_DENIED,
        RESTRICTED_BY_TEAM,
        USER_ACCOUNT_TYPE,
        USER_NOT_ON_TEAM,
        FOLDER_IS_INSIDE_SHARED_FOLDER,
        RESTRICTED_BY_PARENT_FOLDER,
        INSUFFICIENT_PLAN,
        OTHER
    }

    private PermissionDeniedReason() {
    }

    private PermissionDeniedReason withTag(Tag tag) {
        PermissionDeniedReason permissionDeniedReason = new PermissionDeniedReason();
        permissionDeniedReason._tag = tag;
        return permissionDeniedReason;
    }

    private PermissionDeniedReason withTagAndInsufficientPlan(Tag tag, InsufficientPlan insufficientPlan) {
        PermissionDeniedReason permissionDeniedReason = new PermissionDeniedReason();
        permissionDeniedReason._tag = tag;
        permissionDeniedReason.insufficientPlanValue = insufficientPlan;
        return permissionDeniedReason;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserNotSameTeamAsOwner() {
        return this._tag == Tag.USER_NOT_SAME_TEAM_AS_OWNER;
    }

    public boolean isUserNotAllowedByOwner() {
        return this._tag == Tag.USER_NOT_ALLOWED_BY_OWNER;
    }

    public boolean isTargetIsIndirectMember() {
        return this._tag == Tag.TARGET_IS_INDIRECT_MEMBER;
    }

    public boolean isTargetIsOwner() {
        return this._tag == Tag.TARGET_IS_OWNER;
    }

    public boolean isTargetIsSelf() {
        return this._tag == Tag.TARGET_IS_SELF;
    }

    public boolean isTargetNotActive() {
        return this._tag == Tag.TARGET_NOT_ACTIVE;
    }

    public boolean isFolderIsLimitedTeamFolder() {
        return this._tag == Tag.FOLDER_IS_LIMITED_TEAM_FOLDER;
    }

    public boolean isOwnerNotOnTeam() {
        return this._tag == Tag.OWNER_NOT_ON_TEAM;
    }

    public boolean isPermissionDenied() {
        return this._tag == Tag.PERMISSION_DENIED;
    }

    public boolean isRestrictedByTeam() {
        return this._tag == Tag.RESTRICTED_BY_TEAM;
    }

    public boolean isUserAccountType() {
        return this._tag == Tag.USER_ACCOUNT_TYPE;
    }

    public boolean isUserNotOnTeam() {
        return this._tag == Tag.USER_NOT_ON_TEAM;
    }

    public boolean isFolderIsInsideSharedFolder() {
        return this._tag == Tag.FOLDER_IS_INSIDE_SHARED_FOLDER;
    }

    public boolean isRestrictedByParentFolder() {
        return this._tag == Tag.RESTRICTED_BY_PARENT_FOLDER;
    }

    public boolean isInsufficientPlan() {
        return this._tag == Tag.INSUFFICIENT_PLAN;
    }

    public static PermissionDeniedReason insufficientPlan(InsufficientPlan insufficientPlan) {
        if (insufficientPlan == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new PermissionDeniedReason().withTagAndInsufficientPlan(Tag.INSUFFICIENT_PLAN, insufficientPlan);
    }

    public InsufficientPlan getInsufficientPlanValue() {
        if (this._tag != Tag.INSUFFICIENT_PLAN) {
            throw new IllegalStateException("Invalid tag: required Tag.INSUFFICIENT_PLAN, but was Tag." + this._tag.name());
        }
        return this.insufficientPlanValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.insufficientPlanValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof PermissionDeniedReason)) {
            PermissionDeniedReason permissionDeniedReason = (PermissionDeniedReason) obj;
            if (this._tag != permissionDeniedReason._tag) {
                return false;
            }
            switch (this._tag) {
                case USER_NOT_SAME_TEAM_AS_OWNER:
                case USER_NOT_ALLOWED_BY_OWNER:
                case TARGET_IS_INDIRECT_MEMBER:
                case TARGET_IS_OWNER:
                case TARGET_IS_SELF:
                case TARGET_NOT_ACTIVE:
                case FOLDER_IS_LIMITED_TEAM_FOLDER:
                case OWNER_NOT_ON_TEAM:
                case PERMISSION_DENIED:
                case RESTRICTED_BY_TEAM:
                case USER_ACCOUNT_TYPE:
                case USER_NOT_ON_TEAM:
                case FOLDER_IS_INSIDE_SHARED_FOLDER:
                case RESTRICTED_BY_PARENT_FOLDER:
                case OTHER:
                    return true;
                case INSUFFICIENT_PLAN:
                    return this.insufficientPlanValue == permissionDeniedReason.insufficientPlanValue || this.insufficientPlanValue.equals(permissionDeniedReason.insufficientPlanValue);
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

    class Serializer extends UnionSerializer<PermissionDeniedReason> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PermissionDeniedReason permissionDeniedReason, g gVar) throws IOException {
            switch (permissionDeniedReason.tag()) {
                case USER_NOT_SAME_TEAM_AS_OWNER:
                    gVar.b("user_not_same_team_as_owner");
                    break;
                case USER_NOT_ALLOWED_BY_OWNER:
                    gVar.b("user_not_allowed_by_owner");
                    break;
                case TARGET_IS_INDIRECT_MEMBER:
                    gVar.b("target_is_indirect_member");
                    break;
                case TARGET_IS_OWNER:
                    gVar.b("target_is_owner");
                    break;
                case TARGET_IS_SELF:
                    gVar.b("target_is_self");
                    break;
                case TARGET_NOT_ACTIVE:
                    gVar.b("target_not_active");
                    break;
                case FOLDER_IS_LIMITED_TEAM_FOLDER:
                    gVar.b("folder_is_limited_team_folder");
                    break;
                case OWNER_NOT_ON_TEAM:
                    gVar.b("owner_not_on_team");
                    break;
                case PERMISSION_DENIED:
                    gVar.b("permission_denied");
                    break;
                case RESTRICTED_BY_TEAM:
                    gVar.b("restricted_by_team");
                    break;
                case USER_ACCOUNT_TYPE:
                    gVar.b("user_account_type");
                    break;
                case USER_NOT_ON_TEAM:
                    gVar.b("user_not_on_team");
                    break;
                case FOLDER_IS_INSIDE_SHARED_FOLDER:
                    gVar.b("folder_is_inside_shared_folder");
                    break;
                case RESTRICTED_BY_PARENT_FOLDER:
                    gVar.b("restricted_by_parent_folder");
                    break;
                case INSUFFICIENT_PLAN:
                    gVar.e();
                    writeTag("insufficient_plan", gVar);
                    InsufficientPlan.Serializer.INSTANCE.serialize(permissionDeniedReason.insufficientPlanValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PermissionDeniedReason deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PermissionDeniedReason permissionDeniedReasonInsufficientPlan;
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
            if ("user_not_same_team_as_owner".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.USER_NOT_SAME_TEAM_AS_OWNER;
            } else if ("user_not_allowed_by_owner".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.USER_NOT_ALLOWED_BY_OWNER;
            } else if ("target_is_indirect_member".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.TARGET_IS_INDIRECT_MEMBER;
            } else if ("target_is_owner".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.TARGET_IS_OWNER;
            } else if ("target_is_self".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.TARGET_IS_SELF;
            } else if ("target_not_active".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.TARGET_NOT_ACTIVE;
            } else if ("folder_is_limited_team_folder".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.FOLDER_IS_LIMITED_TEAM_FOLDER;
            } else if ("owner_not_on_team".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.OWNER_NOT_ON_TEAM;
            } else if ("permission_denied".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.PERMISSION_DENIED;
            } else if ("restricted_by_team".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.RESTRICTED_BY_TEAM;
            } else if ("user_account_type".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.USER_ACCOUNT_TYPE;
            } else if ("user_not_on_team".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.USER_NOT_ON_TEAM;
            } else if ("folder_is_inside_shared_folder".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.FOLDER_IS_INSIDE_SHARED_FOLDER;
            } else if ("restricted_by_parent_folder".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.RESTRICTED_BY_PARENT_FOLDER;
            } else if ("insufficient_plan".equals(tag)) {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.insufficientPlan(InsufficientPlan.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                permissionDeniedReasonInsufficientPlan = PermissionDeniedReason.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return permissionDeniedReasonInsufficientPlan;
        }
    }
}
