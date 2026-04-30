package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.TeamMemberInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class MemberAddResult {
    private Tag _tag;
    private String duplicateExternalMemberIdValue;
    private String duplicateMemberPersistentIdValue;
    private String freeTeamMemberLimitReachedValue;
    private String persistentIdDisabledValue;
    private TeamMemberInfo successValue;
    private String teamLicenseLimitValue;
    private String userAlreadyOnTeamValue;
    private String userAlreadyPairedValue;
    private String userCreationFailedValue;
    private String userMigrationFailedValue;
    private String userOnAnotherTeamValue;

    public enum Tag {
        SUCCESS,
        TEAM_LICENSE_LIMIT,
        FREE_TEAM_MEMBER_LIMIT_REACHED,
        USER_ALREADY_ON_TEAM,
        USER_ON_ANOTHER_TEAM,
        USER_ALREADY_PAIRED,
        USER_MIGRATION_FAILED,
        DUPLICATE_EXTERNAL_MEMBER_ID,
        DUPLICATE_MEMBER_PERSISTENT_ID,
        PERSISTENT_ID_DISABLED,
        USER_CREATION_FAILED
    }

    private MemberAddResult() {
    }

    private MemberAddResult withTag(Tag tag) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        return memberAddResult;
    }

    private MemberAddResult withTagAndSuccess(Tag tag, TeamMemberInfo teamMemberInfo) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.successValue = teamMemberInfo;
        return memberAddResult;
    }

    private MemberAddResult withTagAndTeamLicenseLimit(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.teamLicenseLimitValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndFreeTeamMemberLimitReached(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.freeTeamMemberLimitReachedValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndUserAlreadyOnTeam(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.userAlreadyOnTeamValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndUserOnAnotherTeam(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.userOnAnotherTeamValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndUserAlreadyPaired(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.userAlreadyPairedValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndUserMigrationFailed(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.userMigrationFailedValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndDuplicateExternalMemberId(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.duplicateExternalMemberIdValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndDuplicateMemberPersistentId(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.duplicateMemberPersistentIdValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndPersistentIdDisabled(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.persistentIdDisabledValue = str;
        return memberAddResult;
    }

    private MemberAddResult withTagAndUserCreationFailed(Tag tag, String str) {
        MemberAddResult memberAddResult = new MemberAddResult();
        memberAddResult._tag = tag;
        memberAddResult.userCreationFailedValue = str;
        return memberAddResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static MemberAddResult success(TeamMemberInfo teamMemberInfo) {
        if (teamMemberInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MemberAddResult().withTagAndSuccess(Tag.SUCCESS, teamMemberInfo);
    }

    public TeamMemberInfo getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isTeamLicenseLimit() {
        return this._tag == Tag.TEAM_LICENSE_LIMIT;
    }

    public static MemberAddResult teamLicenseLimit(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndTeamLicenseLimit(Tag.TEAM_LICENSE_LIMIT, str);
    }

    public String getTeamLicenseLimitValue() {
        if (this._tag != Tag.TEAM_LICENSE_LIMIT) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_LICENSE_LIMIT, but was Tag." + this._tag.name());
        }
        return this.teamLicenseLimitValue;
    }

    public boolean isFreeTeamMemberLimitReached() {
        return this._tag == Tag.FREE_TEAM_MEMBER_LIMIT_REACHED;
    }

    public static MemberAddResult freeTeamMemberLimitReached(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndFreeTeamMemberLimitReached(Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, str);
    }

    public String getFreeTeamMemberLimitReachedValue() {
        if (this._tag != Tag.FREE_TEAM_MEMBER_LIMIT_REACHED) {
            throw new IllegalStateException("Invalid tag: required Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, but was Tag." + this._tag.name());
        }
        return this.freeTeamMemberLimitReachedValue;
    }

    public boolean isUserAlreadyOnTeam() {
        return this._tag == Tag.USER_ALREADY_ON_TEAM;
    }

    public static MemberAddResult userAlreadyOnTeam(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndUserAlreadyOnTeam(Tag.USER_ALREADY_ON_TEAM, str);
    }

    public String getUserAlreadyOnTeamValue() {
        if (this._tag != Tag.USER_ALREADY_ON_TEAM) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_ALREADY_ON_TEAM, but was Tag." + this._tag.name());
        }
        return this.userAlreadyOnTeamValue;
    }

    public boolean isUserOnAnotherTeam() {
        return this._tag == Tag.USER_ON_ANOTHER_TEAM;
    }

    public static MemberAddResult userOnAnotherTeam(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndUserOnAnotherTeam(Tag.USER_ON_ANOTHER_TEAM, str);
    }

    public String getUserOnAnotherTeamValue() {
        if (this._tag != Tag.USER_ON_ANOTHER_TEAM) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_ON_ANOTHER_TEAM, but was Tag." + this._tag.name());
        }
        return this.userOnAnotherTeamValue;
    }

    public boolean isUserAlreadyPaired() {
        return this._tag == Tag.USER_ALREADY_PAIRED;
    }

    public static MemberAddResult userAlreadyPaired(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndUserAlreadyPaired(Tag.USER_ALREADY_PAIRED, str);
    }

    public String getUserAlreadyPairedValue() {
        if (this._tag != Tag.USER_ALREADY_PAIRED) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_ALREADY_PAIRED, but was Tag." + this._tag.name());
        }
        return this.userAlreadyPairedValue;
    }

    public boolean isUserMigrationFailed() {
        return this._tag == Tag.USER_MIGRATION_FAILED;
    }

    public static MemberAddResult userMigrationFailed(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndUserMigrationFailed(Tag.USER_MIGRATION_FAILED, str);
    }

    public String getUserMigrationFailedValue() {
        if (this._tag != Tag.USER_MIGRATION_FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_MIGRATION_FAILED, but was Tag." + this._tag.name());
        }
        return this.userMigrationFailedValue;
    }

    public boolean isDuplicateExternalMemberId() {
        return this._tag == Tag.DUPLICATE_EXTERNAL_MEMBER_ID;
    }

    public static MemberAddResult duplicateExternalMemberId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndDuplicateExternalMemberId(Tag.DUPLICATE_EXTERNAL_MEMBER_ID, str);
    }

    public String getDuplicateExternalMemberIdValue() {
        if (this._tag != Tag.DUPLICATE_EXTERNAL_MEMBER_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.DUPLICATE_EXTERNAL_MEMBER_ID, but was Tag." + this._tag.name());
        }
        return this.duplicateExternalMemberIdValue;
    }

    public boolean isDuplicateMemberPersistentId() {
        return this._tag == Tag.DUPLICATE_MEMBER_PERSISTENT_ID;
    }

    public static MemberAddResult duplicateMemberPersistentId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndDuplicateMemberPersistentId(Tag.DUPLICATE_MEMBER_PERSISTENT_ID, str);
    }

    public String getDuplicateMemberPersistentIdValue() {
        if (this._tag != Tag.DUPLICATE_MEMBER_PERSISTENT_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.DUPLICATE_MEMBER_PERSISTENT_ID, but was Tag." + this._tag.name());
        }
        return this.duplicateMemberPersistentIdValue;
    }

    public boolean isPersistentIdDisabled() {
        return this._tag == Tag.PERSISTENT_ID_DISABLED;
    }

    public static MemberAddResult persistentIdDisabled(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndPersistentIdDisabled(Tag.PERSISTENT_ID_DISABLED, str);
    }

    public String getPersistentIdDisabledValue() {
        if (this._tag != Tag.PERSISTENT_ID_DISABLED) {
            throw new IllegalStateException("Invalid tag: required Tag.PERSISTENT_ID_DISABLED, but was Tag." + this._tag.name());
        }
        return this.persistentIdDisabledValue;
    }

    public boolean isUserCreationFailed() {
        return this._tag == Tag.USER_CREATION_FAILED;
    }

    public static MemberAddResult userCreationFailed(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberAddResult().withTagAndUserCreationFailed(Tag.USER_CREATION_FAILED, str);
    }

    public String getUserCreationFailedValue() {
        if (this._tag != Tag.USER_CREATION_FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_CREATION_FAILED, but was Tag." + this._tag.name());
        }
        return this.userCreationFailedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.teamLicenseLimitValue, this.freeTeamMemberLimitReachedValue, this.userAlreadyOnTeamValue, this.userOnAnotherTeamValue, this.userAlreadyPairedValue, this.userMigrationFailedValue, this.duplicateExternalMemberIdValue, this.duplicateMemberPersistentIdValue, this.persistentIdDisabledValue, this.userCreationFailedValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MemberAddResult)) {
            return false;
        }
        MemberAddResult memberAddResult = (MemberAddResult) obj;
        if (this._tag != memberAddResult._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == memberAddResult.successValue || this.successValue.equals(memberAddResult.successValue);
            case TEAM_LICENSE_LIMIT:
                return this.teamLicenseLimitValue == memberAddResult.teamLicenseLimitValue || this.teamLicenseLimitValue.equals(memberAddResult.teamLicenseLimitValue);
            case FREE_TEAM_MEMBER_LIMIT_REACHED:
                return this.freeTeamMemberLimitReachedValue == memberAddResult.freeTeamMemberLimitReachedValue || this.freeTeamMemberLimitReachedValue.equals(memberAddResult.freeTeamMemberLimitReachedValue);
            case USER_ALREADY_ON_TEAM:
                return this.userAlreadyOnTeamValue == memberAddResult.userAlreadyOnTeamValue || this.userAlreadyOnTeamValue.equals(memberAddResult.userAlreadyOnTeamValue);
            case USER_ON_ANOTHER_TEAM:
                return this.userOnAnotherTeamValue == memberAddResult.userOnAnotherTeamValue || this.userOnAnotherTeamValue.equals(memberAddResult.userOnAnotherTeamValue);
            case USER_ALREADY_PAIRED:
                return this.userAlreadyPairedValue == memberAddResult.userAlreadyPairedValue || this.userAlreadyPairedValue.equals(memberAddResult.userAlreadyPairedValue);
            case USER_MIGRATION_FAILED:
                return this.userMigrationFailedValue == memberAddResult.userMigrationFailedValue || this.userMigrationFailedValue.equals(memberAddResult.userMigrationFailedValue);
            case DUPLICATE_EXTERNAL_MEMBER_ID:
                return this.duplicateExternalMemberIdValue == memberAddResult.duplicateExternalMemberIdValue || this.duplicateExternalMemberIdValue.equals(memberAddResult.duplicateExternalMemberIdValue);
            case DUPLICATE_MEMBER_PERSISTENT_ID:
                return this.duplicateMemberPersistentIdValue == memberAddResult.duplicateMemberPersistentIdValue || this.duplicateMemberPersistentIdValue.equals(memberAddResult.duplicateMemberPersistentIdValue);
            case PERSISTENT_ID_DISABLED:
                return this.persistentIdDisabledValue == memberAddResult.persistentIdDisabledValue || this.persistentIdDisabledValue.equals(memberAddResult.persistentIdDisabledValue);
            case USER_CREATION_FAILED:
                return this.userCreationFailedValue == memberAddResult.userCreationFailedValue || this.userCreationFailedValue.equals(memberAddResult.userCreationFailedValue);
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

    class Serializer extends UnionSerializer<MemberAddResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberAddResult memberAddResult, g gVar) throws IOException {
            switch (memberAddResult.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    TeamMemberInfo.Serializer.INSTANCE.serialize(memberAddResult.successValue, gVar, true);
                    gVar.f();
                    return;
                case TEAM_LICENSE_LIMIT:
                    gVar.e();
                    writeTag("team_license_limit", gVar);
                    gVar.a("team_license_limit");
                    StoneSerializers.string().serialize(memberAddResult.teamLicenseLimitValue, gVar);
                    gVar.f();
                    return;
                case FREE_TEAM_MEMBER_LIMIT_REACHED:
                    gVar.e();
                    writeTag("free_team_member_limit_reached", gVar);
                    gVar.a("free_team_member_limit_reached");
                    StoneSerializers.string().serialize(memberAddResult.freeTeamMemberLimitReachedValue, gVar);
                    gVar.f();
                    return;
                case USER_ALREADY_ON_TEAM:
                    gVar.e();
                    writeTag("user_already_on_team", gVar);
                    gVar.a("user_already_on_team");
                    StoneSerializers.string().serialize(memberAddResult.userAlreadyOnTeamValue, gVar);
                    gVar.f();
                    return;
                case USER_ON_ANOTHER_TEAM:
                    gVar.e();
                    writeTag("user_on_another_team", gVar);
                    gVar.a("user_on_another_team");
                    StoneSerializers.string().serialize(memberAddResult.userOnAnotherTeamValue, gVar);
                    gVar.f();
                    return;
                case USER_ALREADY_PAIRED:
                    gVar.e();
                    writeTag("user_already_paired", gVar);
                    gVar.a("user_already_paired");
                    StoneSerializers.string().serialize(memberAddResult.userAlreadyPairedValue, gVar);
                    gVar.f();
                    return;
                case USER_MIGRATION_FAILED:
                    gVar.e();
                    writeTag("user_migration_failed", gVar);
                    gVar.a("user_migration_failed");
                    StoneSerializers.string().serialize(memberAddResult.userMigrationFailedValue, gVar);
                    gVar.f();
                    return;
                case DUPLICATE_EXTERNAL_MEMBER_ID:
                    gVar.e();
                    writeTag("duplicate_external_member_id", gVar);
                    gVar.a("duplicate_external_member_id");
                    StoneSerializers.string().serialize(memberAddResult.duplicateExternalMemberIdValue, gVar);
                    gVar.f();
                    return;
                case DUPLICATE_MEMBER_PERSISTENT_ID:
                    gVar.e();
                    writeTag("duplicate_member_persistent_id", gVar);
                    gVar.a("duplicate_member_persistent_id");
                    StoneSerializers.string().serialize(memberAddResult.duplicateMemberPersistentIdValue, gVar);
                    gVar.f();
                    return;
                case PERSISTENT_ID_DISABLED:
                    gVar.e();
                    writeTag("persistent_id_disabled", gVar);
                    gVar.a("persistent_id_disabled");
                    StoneSerializers.string().serialize(memberAddResult.persistentIdDisabledValue, gVar);
                    gVar.f();
                    return;
                case USER_CREATION_FAILED:
                    gVar.e();
                    writeTag("user_creation_failed", gVar);
                    gVar.a("user_creation_failed");
                    StoneSerializers.string().serialize(memberAddResult.userCreationFailedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + memberAddResult.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberAddResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MemberAddResult memberAddResultUserCreationFailed;
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
            if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(tag)) {
                memberAddResultUserCreationFailed = MemberAddResult.success(TeamMemberInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_license_limit".equals(tag)) {
                expectField("team_license_limit", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.teamLicenseLimit(StoneSerializers.string().deserialize(kVar));
            } else if ("free_team_member_limit_reached".equals(tag)) {
                expectField("free_team_member_limit_reached", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.freeTeamMemberLimitReached(StoneSerializers.string().deserialize(kVar));
            } else if ("user_already_on_team".equals(tag)) {
                expectField("user_already_on_team", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.userAlreadyOnTeam(StoneSerializers.string().deserialize(kVar));
            } else if ("user_on_another_team".equals(tag)) {
                expectField("user_on_another_team", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.userOnAnotherTeam(StoneSerializers.string().deserialize(kVar));
            } else if ("user_already_paired".equals(tag)) {
                expectField("user_already_paired", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.userAlreadyPaired(StoneSerializers.string().deserialize(kVar));
            } else if ("user_migration_failed".equals(tag)) {
                expectField("user_migration_failed", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.userMigrationFailed(StoneSerializers.string().deserialize(kVar));
            } else if ("duplicate_external_member_id".equals(tag)) {
                expectField("duplicate_external_member_id", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.duplicateExternalMemberId(StoneSerializers.string().deserialize(kVar));
            } else if ("duplicate_member_persistent_id".equals(tag)) {
                expectField("duplicate_member_persistent_id", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.duplicateMemberPersistentId(StoneSerializers.string().deserialize(kVar));
            } else if ("persistent_id_disabled".equals(tag)) {
                expectField("persistent_id_disabled", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.persistentIdDisabled(StoneSerializers.string().deserialize(kVar));
            } else if ("user_creation_failed".equals(tag)) {
                expectField("user_creation_failed", kVar);
                memberAddResultUserCreationFailed = MemberAddResult.userCreationFailed(StoneSerializers.string().deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return memberAddResultUserCreationFailed;
        }
    }
}
