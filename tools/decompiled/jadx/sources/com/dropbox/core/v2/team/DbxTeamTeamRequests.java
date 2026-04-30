package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.async.LaunchEmptyResult;
import com.dropbox.core.v2.async.PollArg;
import com.dropbox.core.v2.async.PollEmptyResult;
import com.dropbox.core.v2.async.PollError;
import com.dropbox.core.v2.async.PollErrorException;
import com.dropbox.core.v2.fileproperties.AddTemplateArg;
import com.dropbox.core.v2.fileproperties.AddTemplateResult;
import com.dropbox.core.v2.fileproperties.GetTemplateArg;
import com.dropbox.core.v2.fileproperties.GetTemplateResult;
import com.dropbox.core.v2.fileproperties.ListTemplateResult;
import com.dropbox.core.v2.fileproperties.ModifyTemplateError;
import com.dropbox.core.v2.fileproperties.ModifyTemplateErrorException;
import com.dropbox.core.v2.fileproperties.PropertyFieldTemplate;
import com.dropbox.core.v2.fileproperties.TemplateError;
import com.dropbox.core.v2.fileproperties.TemplateErrorException;
import com.dropbox.core.v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.v2.fileproperties.UpdateTemplateResult;
import com.dropbox.core.v2.team.CustomQuotaError;
import com.dropbox.core.v2.team.CustomQuotaResult;
import com.dropbox.core.v2.team.CustomQuotaUsersArg;
import com.dropbox.core.v2.team.DateRange;
import com.dropbox.core.v2.team.DateRangeError;
import com.dropbox.core.v2.team.FeaturesGetValuesBatchArg;
import com.dropbox.core.v2.team.FeaturesGetValuesBatchError;
import com.dropbox.core.v2.team.FeaturesGetValuesBatchResult;
import com.dropbox.core.v2.team.GetActivityReport;
import com.dropbox.core.v2.team.GetDevicesReport;
import com.dropbox.core.v2.team.GetMembershipReport;
import com.dropbox.core.v2.team.GetStorageReport;
import com.dropbox.core.v2.team.GroupCreateArg;
import com.dropbox.core.v2.team.GroupCreateError;
import com.dropbox.core.v2.team.GroupDeleteError;
import com.dropbox.core.v2.team.GroupFullInfo;
import com.dropbox.core.v2.team.GroupMemberSetAccessTypeError;
import com.dropbox.core.v2.team.GroupMembersAddArg;
import com.dropbox.core.v2.team.GroupMembersAddError;
import com.dropbox.core.v2.team.GroupMembersChangeResult;
import com.dropbox.core.v2.team.GroupMembersRemoveArg;
import com.dropbox.core.v2.team.GroupMembersRemoveError;
import com.dropbox.core.v2.team.GroupMembersSetAccessTypeArg;
import com.dropbox.core.v2.team.GroupSelector;
import com.dropbox.core.v2.team.GroupSelectorError;
import com.dropbox.core.v2.team.GroupUpdateArgs;
import com.dropbox.core.v2.team.GroupUpdateError;
import com.dropbox.core.v2.team.GroupsGetInfoError;
import com.dropbox.core.v2.team.GroupsGetInfoItem;
import com.dropbox.core.v2.team.GroupsListArg;
import com.dropbox.core.v2.team.GroupsListContinueArg;
import com.dropbox.core.v2.team.GroupsListContinueError;
import com.dropbox.core.v2.team.GroupsListResult;
import com.dropbox.core.v2.team.GroupsMembersListArg;
import com.dropbox.core.v2.team.GroupsMembersListContinueArg;
import com.dropbox.core.v2.team.GroupsMembersListContinueError;
import com.dropbox.core.v2.team.GroupsMembersListResult;
import com.dropbox.core.v2.team.GroupsPollError;
import com.dropbox.core.v2.team.GroupsSelector;
import com.dropbox.core.v2.team.ListMemberAppsArg;
import com.dropbox.core.v2.team.ListMemberAppsError;
import com.dropbox.core.v2.team.ListMemberAppsResult;
import com.dropbox.core.v2.team.ListMemberDevicesArg;
import com.dropbox.core.v2.team.ListMemberDevicesError;
import com.dropbox.core.v2.team.ListMemberDevicesResult;
import com.dropbox.core.v2.team.ListMembersAppsArg;
import com.dropbox.core.v2.team.ListMembersAppsError;
import com.dropbox.core.v2.team.ListMembersAppsResult;
import com.dropbox.core.v2.team.ListMembersDevicesArg;
import com.dropbox.core.v2.team.ListMembersDevicesError;
import com.dropbox.core.v2.team.ListMembersDevicesResult;
import com.dropbox.core.v2.team.ListTeamAppsArg;
import com.dropbox.core.v2.team.ListTeamAppsError;
import com.dropbox.core.v2.team.ListTeamAppsResult;
import com.dropbox.core.v2.team.ListTeamDevicesArg;
import com.dropbox.core.v2.team.ListTeamDevicesError;
import com.dropbox.core.v2.team.ListTeamDevicesResult;
import com.dropbox.core.v2.team.MembersAddArg;
import com.dropbox.core.v2.team.MembersAddJobStatus;
import com.dropbox.core.v2.team.MembersAddLaunch;
import com.dropbox.core.v2.team.MembersDeactivateArg;
import com.dropbox.core.v2.team.MembersGetInfoArgs;
import com.dropbox.core.v2.team.MembersGetInfoError;
import com.dropbox.core.v2.team.MembersGetInfoItem;
import com.dropbox.core.v2.team.MembersListArg;
import com.dropbox.core.v2.team.MembersListContinueArg;
import com.dropbox.core.v2.team.MembersListContinueError;
import com.dropbox.core.v2.team.MembersListError;
import com.dropbox.core.v2.team.MembersListResult;
import com.dropbox.core.v2.team.MembersRecoverArg;
import com.dropbox.core.v2.team.MembersRecoverError;
import com.dropbox.core.v2.team.MembersRemoveArg;
import com.dropbox.core.v2.team.MembersRemoveError;
import com.dropbox.core.v2.team.MembersSendWelcomeError;
import com.dropbox.core.v2.team.MembersSetPermissionsArg;
import com.dropbox.core.v2.team.MembersSetPermissionsError;
import com.dropbox.core.v2.team.MembersSetPermissionsResult;
import com.dropbox.core.v2.team.MembersSetProfileArg;
import com.dropbox.core.v2.team.MembersSetProfileError;
import com.dropbox.core.v2.team.MembersSuspendError;
import com.dropbox.core.v2.team.MembersUnsuspendArg;
import com.dropbox.core.v2.team.MembersUnsuspendError;
import com.dropbox.core.v2.team.RemoveCustomQuotaResult;
import com.dropbox.core.v2.team.RevokeDeviceSessionArg;
import com.dropbox.core.v2.team.RevokeDeviceSessionBatchArg;
import com.dropbox.core.v2.team.RevokeDeviceSessionBatchError;
import com.dropbox.core.v2.team.RevokeDeviceSessionBatchResult;
import com.dropbox.core.v2.team.RevokeDeviceSessionError;
import com.dropbox.core.v2.team.RevokeLinkedApiAppArg;
import com.dropbox.core.v2.team.RevokeLinkedApiAppBatchArg;
import com.dropbox.core.v2.team.RevokeLinkedAppBatchError;
import com.dropbox.core.v2.team.RevokeLinkedAppBatchResult;
import com.dropbox.core.v2.team.RevokeLinkedAppError;
import com.dropbox.core.v2.team.SetCustomQuotaArg;
import com.dropbox.core.v2.team.TeamFolderActivateError;
import com.dropbox.core.v2.team.TeamFolderArchiveArg;
import com.dropbox.core.v2.team.TeamFolderArchiveError;
import com.dropbox.core.v2.team.TeamFolderArchiveJobStatus;
import com.dropbox.core.v2.team.TeamFolderArchiveLaunch;
import com.dropbox.core.v2.team.TeamFolderCreateArg;
import com.dropbox.core.v2.team.TeamFolderCreateError;
import com.dropbox.core.v2.team.TeamFolderGetInfoItem;
import com.dropbox.core.v2.team.TeamFolderIdArg;
import com.dropbox.core.v2.team.TeamFolderIdListArg;
import com.dropbox.core.v2.team.TeamFolderListArg;
import com.dropbox.core.v2.team.TeamFolderListContinueArg;
import com.dropbox.core.v2.team.TeamFolderListContinueError;
import com.dropbox.core.v2.team.TeamFolderListError;
import com.dropbox.core.v2.team.TeamFolderListResult;
import com.dropbox.core.v2.team.TeamFolderMetadata;
import com.dropbox.core.v2.team.TeamFolderPermanentlyDeleteError;
import com.dropbox.core.v2.team.TeamFolderRenameArg;
import com.dropbox.core.v2.team.TeamFolderRenameError;
import com.dropbox.core.v2.team.TeamGetInfoResult;
import com.dropbox.core.v2.team.TeamMemberInfo;
import com.dropbox.core.v2.team.TeamNamespacesListArg;
import com.dropbox.core.v2.team.TeamNamespacesListContinueArg;
import com.dropbox.core.v2.team.TeamNamespacesListContinueError;
import com.dropbox.core.v2.team.TeamNamespacesListResult;
import com.dropbox.core.v2.team.TokenGetAuthenticatedAdminError;
import com.dropbox.core.v2.team.TokenGetAuthenticatedAdminResult;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DbxTeamTeamRequests {
    private final DbxRawClientV2 client;

    public DbxTeamTeamRequests(DbxRawClientV2 dbxRawClientV2) {
        this.client = dbxRawClientV2;
    }

    ListMemberDevicesResult devicesListMemberDevices(ListMemberDevicesArg listMemberDevicesArg) throws DbxException {
        try {
            return (ListMemberDevicesResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/devices/list_member_devices", listMemberDevicesArg, false, ListMemberDevicesArg.Serializer.INSTANCE, ListMemberDevicesResult.Serializer.INSTANCE, ListMemberDevicesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListMemberDevicesErrorException("2/team/devices/list_member_devices", e2.getRequestId(), e2.getUserMessage(), (ListMemberDevicesError) e2.getErrorValue());
        }
    }

    public ListMemberDevicesResult devicesListMemberDevices(String str) throws DbxException {
        return devicesListMemberDevices(new ListMemberDevicesArg(str));
    }

    public DevicesListMemberDevicesBuilder devicesListMemberDevicesBuilder(String str) {
        return new DevicesListMemberDevicesBuilder(this, ListMemberDevicesArg.newBuilder(str));
    }

    ListMembersDevicesResult devicesListMembersDevices(ListMembersDevicesArg listMembersDevicesArg) throws DbxException {
        try {
            return (ListMembersDevicesResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/devices/list_members_devices", listMembersDevicesArg, false, ListMembersDevicesArg.Serializer.INSTANCE, ListMembersDevicesResult.Serializer.INSTANCE, ListMembersDevicesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListMembersDevicesErrorException("2/team/devices/list_members_devices", e2.getRequestId(), e2.getUserMessage(), (ListMembersDevicesError) e2.getErrorValue());
        }
    }

    public ListMembersDevicesResult devicesListMembersDevices() throws DbxException {
        return devicesListMembersDevices(new ListMembersDevicesArg());
    }

    public DevicesListMembersDevicesBuilder devicesListMembersDevicesBuilder() {
        return new DevicesListMembersDevicesBuilder(this, ListMembersDevicesArg.newBuilder());
    }

    ListTeamDevicesResult devicesListTeamDevices(ListTeamDevicesArg listTeamDevicesArg) throws DbxException {
        try {
            return (ListTeamDevicesResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/devices/list_team_devices", listTeamDevicesArg, false, ListTeamDevicesArg.Serializer.INSTANCE, ListTeamDevicesResult.Serializer.INSTANCE, ListTeamDevicesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListTeamDevicesErrorException("2/team/devices/list_team_devices", e2.getRequestId(), e2.getUserMessage(), (ListTeamDevicesError) e2.getErrorValue());
        }
    }

    @Deprecated
    public ListTeamDevicesResult devicesListTeamDevices() throws DbxException {
        return devicesListTeamDevices(new ListTeamDevicesArg());
    }

    @Deprecated
    public DevicesListTeamDevicesBuilder devicesListTeamDevicesBuilder() {
        return new DevicesListTeamDevicesBuilder(this, ListTeamDevicesArg.newBuilder());
    }

    public void devicesRevokeDeviceSession(RevokeDeviceSessionArg revokeDeviceSessionArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/devices/revoke_device_session", revokeDeviceSessionArg, false, RevokeDeviceSessionArg.Serializer.INSTANCE, StoneSerializers.void_(), RevokeDeviceSessionError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RevokeDeviceSessionErrorException("2/team/devices/revoke_device_session", e2.getRequestId(), e2.getUserMessage(), (RevokeDeviceSessionError) e2.getErrorValue());
        }
    }

    RevokeDeviceSessionBatchResult devicesRevokeDeviceSessionBatch(RevokeDeviceSessionBatchArg revokeDeviceSessionBatchArg) throws DbxException {
        try {
            return (RevokeDeviceSessionBatchResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/devices/revoke_device_session_batch", revokeDeviceSessionBatchArg, false, RevokeDeviceSessionBatchArg.Serializer.INSTANCE, RevokeDeviceSessionBatchResult.Serializer.INSTANCE, RevokeDeviceSessionBatchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RevokeDeviceSessionBatchErrorException("2/team/devices/revoke_device_session_batch", e2.getRequestId(), e2.getUserMessage(), (RevokeDeviceSessionBatchError) e2.getErrorValue());
        }
    }

    public RevokeDeviceSessionBatchResult devicesRevokeDeviceSessionBatch(List<RevokeDeviceSessionArg> list) throws DbxException {
        return devicesRevokeDeviceSessionBatch(new RevokeDeviceSessionBatchArg(list));
    }

    FeaturesGetValuesBatchResult featuresGetValues(FeaturesGetValuesBatchArg featuresGetValuesBatchArg) throws DbxException {
        try {
            return (FeaturesGetValuesBatchResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/features/get_values", featuresGetValuesBatchArg, false, FeaturesGetValuesBatchArg.Serializer.INSTANCE, FeaturesGetValuesBatchResult.Serializer.INSTANCE, FeaturesGetValuesBatchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new FeaturesGetValuesBatchErrorException("2/team/features/get_values", e2.getRequestId(), e2.getUserMessage(), (FeaturesGetValuesBatchError) e2.getErrorValue());
        }
    }

    public FeaturesGetValuesBatchResult featuresGetValues(List<Feature> list) throws DbxException {
        return featuresGetValues(new FeaturesGetValuesBatchArg(list));
    }

    public TeamGetInfoResult getInfo() throws DbxException {
        try {
            return (TeamGetInfoResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/get_info", null, false, StoneSerializers.void_(), TeamGetInfoResult.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"get_info\":" + e2.getErrorValue());
        }
    }

    GroupFullInfo groupsCreate(GroupCreateArg groupCreateArg) throws DbxException {
        try {
            return (GroupFullInfo) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/create", groupCreateArg, false, GroupCreateArg.Serializer.INSTANCE, GroupFullInfo.Serializer.INSTANCE, GroupCreateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupCreateErrorException("2/team/groups/create", e2.getRequestId(), e2.getUserMessage(), (GroupCreateError) e2.getErrorValue());
        }
    }

    public GroupFullInfo groupsCreate(String str) throws DbxException {
        return groupsCreate(new GroupCreateArg(str));
    }

    public GroupsCreateBuilder groupsCreateBuilder(String str) {
        return new GroupsCreateBuilder(this, GroupCreateArg.newBuilder(str));
    }

    public LaunchEmptyResult groupsDelete(GroupSelector groupSelector) throws DbxException {
        try {
            return (LaunchEmptyResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/delete", groupSelector, false, GroupSelector.Serializer.INSTANCE, LaunchEmptyResult.Serializer.INSTANCE, GroupDeleteError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupDeleteErrorException("2/team/groups/delete", e2.getRequestId(), e2.getUserMessage(), (GroupDeleteError) e2.getErrorValue());
        }
    }

    public List<GroupsGetInfoItem> groupsGetInfo(GroupsSelector groupsSelector) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/get_info", groupsSelector, false, GroupsSelector.Serializer.INSTANCE, StoneSerializers.list(GroupsGetInfoItem.Serializer.INSTANCE), GroupsGetInfoError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupsGetInfoErrorException("2/team/groups/get_info", e2.getRequestId(), e2.getUserMessage(), (GroupsGetInfoError) e2.getErrorValue());
        }
    }

    PollEmptyResult groupsJobStatusGet(PollArg pollArg) throws DbxException {
        try {
            return (PollEmptyResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/job_status/get", pollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, GroupsPollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupsPollErrorException("2/team/groups/job_status/get", e2.getRequestId(), e2.getUserMessage(), (GroupsPollError) e2.getErrorValue());
        }
    }

    public PollEmptyResult groupsJobStatusGet(String str) throws DbxException {
        return groupsJobStatusGet(new PollArg(str));
    }

    GroupsListResult groupsList(GroupsListArg groupsListArg) throws DbxException {
        try {
            return (GroupsListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/list", groupsListArg, false, GroupsListArg.Serializer.INSTANCE, GroupsListResult.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"groups/list\":" + e2.getErrorValue());
        }
    }

    public GroupsListResult groupsList() throws DbxException {
        return groupsList(new GroupsListArg());
    }

    public GroupsListResult groupsList(long j) throws DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        return groupsList(new GroupsListArg(j));
    }

    GroupsListResult groupsListContinue(GroupsListContinueArg groupsListContinueArg) throws DbxException {
        try {
            return (GroupsListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/list/continue", groupsListContinueArg, false, GroupsListContinueArg.Serializer.INSTANCE, GroupsListResult.Serializer.INSTANCE, GroupsListContinueError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupsListContinueErrorException("2/team/groups/list/continue", e2.getRequestId(), e2.getUserMessage(), (GroupsListContinueError) e2.getErrorValue());
        }
    }

    public GroupsListResult groupsListContinue(String str) throws DbxException {
        return groupsListContinue(new GroupsListContinueArg(str));
    }

    GroupMembersChangeResult groupsMembersAdd(GroupMembersAddArg groupMembersAddArg) throws DbxException {
        try {
            return (GroupMembersChangeResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/members/add", groupMembersAddArg, false, GroupMembersAddArg.Serializer.INSTANCE, GroupMembersChangeResult.Serializer.INSTANCE, GroupMembersAddError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupMembersAddErrorException("2/team/groups/members/add", e2.getRequestId(), e2.getUserMessage(), (GroupMembersAddError) e2.getErrorValue());
        }
    }

    public GroupMembersChangeResult groupsMembersAdd(GroupSelector groupSelector, List<MemberAccess> list) throws DbxException {
        return groupsMembersAdd(new GroupMembersAddArg(groupSelector, list));
    }

    public GroupMembersChangeResult groupsMembersAdd(GroupSelector groupSelector, List<MemberAccess> list, boolean z) throws DbxException {
        return groupsMembersAdd(new GroupMembersAddArg(groupSelector, list, z));
    }

    GroupsMembersListResult groupsMembersList(GroupsMembersListArg groupsMembersListArg) throws DbxException {
        try {
            return (GroupsMembersListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/members/list", groupsMembersListArg, false, GroupsMembersListArg.Serializer.INSTANCE, GroupsMembersListResult.Serializer.INSTANCE, GroupSelectorError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupSelectorErrorException("2/team/groups/members/list", e2.getRequestId(), e2.getUserMessage(), (GroupSelectorError) e2.getErrorValue());
        }
    }

    public GroupsMembersListResult groupsMembersList(GroupSelector groupSelector) throws DbxException {
        return groupsMembersList(new GroupsMembersListArg(groupSelector));
    }

    public GroupsMembersListResult groupsMembersList(GroupSelector groupSelector, long j) throws DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        return groupsMembersList(new GroupsMembersListArg(groupSelector, j));
    }

    GroupsMembersListResult groupsMembersListContinue(GroupsMembersListContinueArg groupsMembersListContinueArg) throws DbxException {
        try {
            return (GroupsMembersListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/members/list/continue", groupsMembersListContinueArg, false, GroupsMembersListContinueArg.Serializer.INSTANCE, GroupsMembersListResult.Serializer.INSTANCE, GroupsMembersListContinueError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupsMembersListContinueErrorException("2/team/groups/members/list/continue", e2.getRequestId(), e2.getUserMessage(), (GroupsMembersListContinueError) e2.getErrorValue());
        }
    }

    public GroupsMembersListResult groupsMembersListContinue(String str) throws DbxException {
        return groupsMembersListContinue(new GroupsMembersListContinueArg(str));
    }

    GroupMembersChangeResult groupsMembersRemove(GroupMembersRemoveArg groupMembersRemoveArg) throws DbxException {
        try {
            return (GroupMembersChangeResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/members/remove", groupMembersRemoveArg, false, GroupMembersRemoveArg.Serializer.INSTANCE, GroupMembersChangeResult.Serializer.INSTANCE, GroupMembersRemoveError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupMembersRemoveErrorException("2/team/groups/members/remove", e2.getRequestId(), e2.getUserMessage(), (GroupMembersRemoveError) e2.getErrorValue());
        }
    }

    public GroupMembersChangeResult groupsMembersRemove(GroupSelector groupSelector, List<UserSelectorArg> list) throws DbxException {
        return groupsMembersRemove(new GroupMembersRemoveArg(groupSelector, list));
    }

    public GroupMembersChangeResult groupsMembersRemove(GroupSelector groupSelector, List<UserSelectorArg> list, boolean z) throws DbxException {
        return groupsMembersRemove(new GroupMembersRemoveArg(groupSelector, list, z));
    }

    List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupMembersSetAccessTypeArg groupMembersSetAccessTypeArg) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/members/set_access_type", groupMembersSetAccessTypeArg, false, GroupMembersSetAccessTypeArg.Serializer.INSTANCE, StoneSerializers.list(GroupsGetInfoItem.Serializer.INSTANCE), GroupMemberSetAccessTypeError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupMemberSetAccessTypeErrorException("2/team/groups/members/set_access_type", e2.getRequestId(), e2.getUserMessage(), (GroupMemberSetAccessTypeError) e2.getErrorValue());
        }
    }

    public List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType) throws DbxException {
        return groupsMembersSetAccessType(new GroupMembersSetAccessTypeArg(groupSelector, userSelectorArg, groupAccessType));
    }

    public List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType, boolean z) throws DbxException {
        return groupsMembersSetAccessType(new GroupMembersSetAccessTypeArg(groupSelector, userSelectorArg, groupAccessType, z));
    }

    GroupFullInfo groupsUpdate(GroupUpdateArgs groupUpdateArgs) throws DbxException {
        try {
            return (GroupFullInfo) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/groups/update", groupUpdateArgs, false, GroupUpdateArgs.Serializer.INSTANCE, GroupFullInfo.Serializer.INSTANCE, GroupUpdateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GroupUpdateErrorException("2/team/groups/update", e2.getRequestId(), e2.getUserMessage(), (GroupUpdateError) e2.getErrorValue());
        }
    }

    public GroupFullInfo groupsUpdate(GroupSelector groupSelector) throws DbxException {
        return groupsUpdate(new GroupUpdateArgs(groupSelector));
    }

    public GroupsUpdateBuilder groupsUpdateBuilder(GroupSelector groupSelector) {
        return new GroupsUpdateBuilder(this, GroupUpdateArgs.newBuilder(groupSelector));
    }

    ListMemberAppsResult linkedAppsListMemberLinkedApps(ListMemberAppsArg listMemberAppsArg) throws DbxException {
        try {
            return (ListMemberAppsResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/linked_apps/list_member_linked_apps", listMemberAppsArg, false, ListMemberAppsArg.Serializer.INSTANCE, ListMemberAppsResult.Serializer.INSTANCE, ListMemberAppsError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListMemberAppsErrorException("2/team/linked_apps/list_member_linked_apps", e2.getRequestId(), e2.getUserMessage(), (ListMemberAppsError) e2.getErrorValue());
        }
    }

    public ListMemberAppsResult linkedAppsListMemberLinkedApps(String str) throws DbxException {
        return linkedAppsListMemberLinkedApps(new ListMemberAppsArg(str));
    }

    ListMembersAppsResult linkedAppsListMembersLinkedApps(ListMembersAppsArg listMembersAppsArg) throws DbxException {
        try {
            return (ListMembersAppsResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/linked_apps/list_members_linked_apps", listMembersAppsArg, false, ListMembersAppsArg.Serializer.INSTANCE, ListMembersAppsResult.Serializer.INSTANCE, ListMembersAppsError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListMembersAppsErrorException("2/team/linked_apps/list_members_linked_apps", e2.getRequestId(), e2.getUserMessage(), (ListMembersAppsError) e2.getErrorValue());
        }
    }

    public ListMembersAppsResult linkedAppsListMembersLinkedApps() throws DbxException {
        return linkedAppsListMembersLinkedApps(new ListMembersAppsArg());
    }

    public ListMembersAppsResult linkedAppsListMembersLinkedApps(String str) throws DbxException {
        return linkedAppsListMembersLinkedApps(new ListMembersAppsArg(str));
    }

    ListTeamAppsResult linkedAppsListTeamLinkedApps(ListTeamAppsArg listTeamAppsArg) throws DbxException {
        try {
            return (ListTeamAppsResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/linked_apps/list_team_linked_apps", listTeamAppsArg, false, ListTeamAppsArg.Serializer.INSTANCE, ListTeamAppsResult.Serializer.INSTANCE, ListTeamAppsError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListTeamAppsErrorException("2/team/linked_apps/list_team_linked_apps", e2.getRequestId(), e2.getUserMessage(), (ListTeamAppsError) e2.getErrorValue());
        }
    }

    @Deprecated
    public ListTeamAppsResult linkedAppsListTeamLinkedApps() throws DbxException {
        return linkedAppsListTeamLinkedApps(new ListTeamAppsArg());
    }

    @Deprecated
    public ListTeamAppsResult linkedAppsListTeamLinkedApps(String str) throws DbxException {
        return linkedAppsListTeamLinkedApps(new ListTeamAppsArg(str));
    }

    void linkedAppsRevokeLinkedApp(RevokeLinkedApiAppArg revokeLinkedApiAppArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/linked_apps/revoke_linked_app", revokeLinkedApiAppArg, false, RevokeLinkedApiAppArg.Serializer.INSTANCE, StoneSerializers.void_(), RevokeLinkedAppError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RevokeLinkedAppErrorException("2/team/linked_apps/revoke_linked_app", e2.getRequestId(), e2.getUserMessage(), (RevokeLinkedAppError) e2.getErrorValue());
        }
    }

    public void linkedAppsRevokeLinkedApp(String str, String str2) throws DbxException {
        linkedAppsRevokeLinkedApp(new RevokeLinkedApiAppArg(str, str2));
    }

    public void linkedAppsRevokeLinkedApp(String str, String str2, boolean z) throws DbxException {
        linkedAppsRevokeLinkedApp(new RevokeLinkedApiAppArg(str, str2, z));
    }

    RevokeLinkedAppBatchResult linkedAppsRevokeLinkedAppBatch(RevokeLinkedApiAppBatchArg revokeLinkedApiAppBatchArg) throws DbxException {
        try {
            return (RevokeLinkedAppBatchResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/linked_apps/revoke_linked_app_batch", revokeLinkedApiAppBatchArg, false, RevokeLinkedApiAppBatchArg.Serializer.INSTANCE, RevokeLinkedAppBatchResult.Serializer.INSTANCE, RevokeLinkedAppBatchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RevokeLinkedAppBatchErrorException("2/team/linked_apps/revoke_linked_app_batch", e2.getRequestId(), e2.getUserMessage(), (RevokeLinkedAppBatchError) e2.getErrorValue());
        }
    }

    public RevokeLinkedAppBatchResult linkedAppsRevokeLinkedAppBatch(List<RevokeLinkedApiAppArg> list) throws DbxException {
        return linkedAppsRevokeLinkedAppBatch(new RevokeLinkedApiAppBatchArg(list));
    }

    List<CustomQuotaResult> memberSpaceLimitsGetCustomQuota(CustomQuotaUsersArg customQuotaUsersArg) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/member_space_limits/get_custom_quota", customQuotaUsersArg, false, CustomQuotaUsersArg.Serializer.INSTANCE, StoneSerializers.list(CustomQuotaResult.Serializer.INSTANCE), CustomQuotaError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new CustomQuotaErrorException("2/team/member_space_limits/get_custom_quota", e2.getRequestId(), e2.getUserMessage(), (CustomQuotaError) e2.getErrorValue());
        }
    }

    public List<CustomQuotaResult> memberSpaceLimitsGetCustomQuota(List<UserSelectorArg> list) throws DbxException {
        return memberSpaceLimitsGetCustomQuota(new CustomQuotaUsersArg(list));
    }

    List<RemoveCustomQuotaResult> memberSpaceLimitsRemoveCustomQuota(CustomQuotaUsersArg customQuotaUsersArg) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/member_space_limits/remove_custom_quota", customQuotaUsersArg, false, CustomQuotaUsersArg.Serializer.INSTANCE, StoneSerializers.list(RemoveCustomQuotaResult.Serializer.INSTANCE), CustomQuotaError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new CustomQuotaErrorException("2/team/member_space_limits/remove_custom_quota", e2.getRequestId(), e2.getUserMessage(), (CustomQuotaError) e2.getErrorValue());
        }
    }

    public List<RemoveCustomQuotaResult> memberSpaceLimitsRemoveCustomQuota(List<UserSelectorArg> list) throws DbxException {
        return memberSpaceLimitsRemoveCustomQuota(new CustomQuotaUsersArg(list));
    }

    List<CustomQuotaResult> memberSpaceLimitsSetCustomQuota(SetCustomQuotaArg setCustomQuotaArg) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/member_space_limits/set_custom_quota", setCustomQuotaArg, false, SetCustomQuotaArg.Serializer.INSTANCE, StoneSerializers.list(CustomQuotaResult.Serializer.INSTANCE), CustomQuotaError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new CustomQuotaErrorException("2/team/member_space_limits/set_custom_quota", e2.getRequestId(), e2.getUserMessage(), (CustomQuotaError) e2.getErrorValue());
        }
    }

    public List<CustomQuotaResult> memberSpaceLimitsSetCustomQuota(List<UserCustomQuotaArg> list) throws DbxException {
        return memberSpaceLimitsSetCustomQuota(new SetCustomQuotaArg(list));
    }

    MembersAddLaunch membersAdd(MembersAddArg membersAddArg) throws DbxException {
        try {
            return (MembersAddLaunch) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/add", membersAddArg, false, MembersAddArg.Serializer.INSTANCE, MembersAddLaunch.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"members/add\":" + e2.getErrorValue());
        }
    }

    public MembersAddLaunch membersAdd(List<MemberAddArg> list) throws DbxException {
        return membersAdd(new MembersAddArg(list));
    }

    public MembersAddLaunch membersAdd(List<MemberAddArg> list, boolean z) throws DbxException {
        return membersAdd(new MembersAddArg(list, z));
    }

    MembersAddJobStatus membersAddJobStatusGet(PollArg pollArg) throws DbxException {
        try {
            return (MembersAddJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/add/job_status/get", pollArg, false, PollArg.Serializer.INSTANCE, MembersAddJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/team/members/add/job_status/get", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public MembersAddJobStatus membersAddJobStatusGet(String str) throws DbxException {
        return membersAddJobStatusGet(new PollArg(str));
    }

    List<MembersGetInfoItem> membersGetInfo(MembersGetInfoArgs membersGetInfoArgs) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/get_info", membersGetInfoArgs, false, MembersGetInfoArgs.Serializer.INSTANCE, StoneSerializers.list(MembersGetInfoItem.Serializer.INSTANCE), MembersGetInfoError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersGetInfoErrorException("2/team/members/get_info", e2.getRequestId(), e2.getUserMessage(), (MembersGetInfoError) e2.getErrorValue());
        }
    }

    public List<MembersGetInfoItem> membersGetInfo(List<UserSelectorArg> list) throws DbxException {
        return membersGetInfo(new MembersGetInfoArgs(list));
    }

    MembersListResult membersList(MembersListArg membersListArg) throws DbxException {
        try {
            return (MembersListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/list", membersListArg, false, MembersListArg.Serializer.INSTANCE, MembersListResult.Serializer.INSTANCE, MembersListError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersListErrorException("2/team/members/list", e2.getRequestId(), e2.getUserMessage(), (MembersListError) e2.getErrorValue());
        }
    }

    public MembersListResult membersList() throws DbxException {
        return membersList(new MembersListArg());
    }

    public MembersListBuilder membersListBuilder() {
        return new MembersListBuilder(this, MembersListArg.newBuilder());
    }

    MembersListResult membersListContinue(MembersListContinueArg membersListContinueArg) throws DbxException {
        try {
            return (MembersListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/list/continue", membersListContinueArg, false, MembersListContinueArg.Serializer.INSTANCE, MembersListResult.Serializer.INSTANCE, MembersListContinueError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersListContinueErrorException("2/team/members/list/continue", e2.getRequestId(), e2.getUserMessage(), (MembersListContinueError) e2.getErrorValue());
        }
    }

    public MembersListResult membersListContinue(String str) throws DbxException {
        return membersListContinue(new MembersListContinueArg(str));
    }

    void membersRecover(MembersRecoverArg membersRecoverArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/recover", membersRecoverArg, false, MembersRecoverArg.Serializer.INSTANCE, StoneSerializers.void_(), MembersRecoverError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersRecoverErrorException("2/team/members/recover", e2.getRequestId(), e2.getUserMessage(), (MembersRecoverError) e2.getErrorValue());
        }
    }

    public void membersRecover(UserSelectorArg userSelectorArg) throws DbxException {
        membersRecover(new MembersRecoverArg(userSelectorArg));
    }

    LaunchEmptyResult membersRemove(MembersRemoveArg membersRemoveArg) throws DbxException {
        try {
            return (LaunchEmptyResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/remove", membersRemoveArg, false, MembersRemoveArg.Serializer.INSTANCE, LaunchEmptyResult.Serializer.INSTANCE, MembersRemoveError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersRemoveErrorException("2/team/members/remove", e2.getRequestId(), e2.getUserMessage(), (MembersRemoveError) e2.getErrorValue());
        }
    }

    public LaunchEmptyResult membersRemove(UserSelectorArg userSelectorArg) throws DbxException {
        return membersRemove(new MembersRemoveArg(userSelectorArg));
    }

    public MembersRemoveBuilder membersRemoveBuilder(UserSelectorArg userSelectorArg) {
        return new MembersRemoveBuilder(this, MembersRemoveArg.newBuilder(userSelectorArg));
    }

    PollEmptyResult membersRemoveJobStatusGet(PollArg pollArg) throws DbxException {
        try {
            return (PollEmptyResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/remove/job_status/get", pollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/team/members/remove/job_status/get", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public PollEmptyResult membersRemoveJobStatusGet(String str) throws DbxException {
        return membersRemoveJobStatusGet(new PollArg(str));
    }

    public void membersSendWelcomeEmail(UserSelectorArg userSelectorArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/send_welcome_email", userSelectorArg, false, UserSelectorArg.Serializer.INSTANCE, StoneSerializers.void_(), MembersSendWelcomeError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersSendWelcomeErrorException("2/team/members/send_welcome_email", e2.getRequestId(), e2.getUserMessage(), (MembersSendWelcomeError) e2.getErrorValue());
        }
    }

    MembersSetPermissionsResult membersSetAdminPermissions(MembersSetPermissionsArg membersSetPermissionsArg) throws DbxException {
        try {
            return (MembersSetPermissionsResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/set_admin_permissions", membersSetPermissionsArg, false, MembersSetPermissionsArg.Serializer.INSTANCE, MembersSetPermissionsResult.Serializer.INSTANCE, MembersSetPermissionsError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersSetPermissionsErrorException("2/team/members/set_admin_permissions", e2.getRequestId(), e2.getUserMessage(), (MembersSetPermissionsError) e2.getErrorValue());
        }
    }

    public MembersSetPermissionsResult membersSetAdminPermissions(UserSelectorArg userSelectorArg, AdminTier adminTier) throws DbxException {
        return membersSetAdminPermissions(new MembersSetPermissionsArg(userSelectorArg, adminTier));
    }

    TeamMemberInfo membersSetProfile(MembersSetProfileArg membersSetProfileArg) throws DbxException {
        try {
            return (TeamMemberInfo) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/set_profile", membersSetProfileArg, false, MembersSetProfileArg.Serializer.INSTANCE, TeamMemberInfo.Serializer.INSTANCE, MembersSetProfileError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersSetProfileErrorException("2/team/members/set_profile", e2.getRequestId(), e2.getUserMessage(), (MembersSetProfileError) e2.getErrorValue());
        }
    }

    public TeamMemberInfo membersSetProfile(UserSelectorArg userSelectorArg) throws DbxException {
        return membersSetProfile(new MembersSetProfileArg(userSelectorArg));
    }

    public MembersSetProfileBuilder membersSetProfileBuilder(UserSelectorArg userSelectorArg) {
        return new MembersSetProfileBuilder(this, MembersSetProfileArg.newBuilder(userSelectorArg));
    }

    void membersSuspend(MembersDeactivateArg membersDeactivateArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/suspend", membersDeactivateArg, false, MembersDeactivateArg.Serializer.INSTANCE, StoneSerializers.void_(), MembersSuspendError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersSuspendErrorException("2/team/members/suspend", e2.getRequestId(), e2.getUserMessage(), (MembersSuspendError) e2.getErrorValue());
        }
    }

    public void membersSuspend(UserSelectorArg userSelectorArg) throws DbxException {
        membersSuspend(new MembersDeactivateArg(userSelectorArg));
    }

    public void membersSuspend(UserSelectorArg userSelectorArg, boolean z) throws DbxException {
        membersSuspend(new MembersDeactivateArg(userSelectorArg, z));
    }

    void membersUnsuspend(MembersUnsuspendArg membersUnsuspendArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/members/unsuspend", membersUnsuspendArg, false, MembersUnsuspendArg.Serializer.INSTANCE, StoneSerializers.void_(), MembersUnsuspendError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new MembersUnsuspendErrorException("2/team/members/unsuspend", e2.getRequestId(), e2.getUserMessage(), (MembersUnsuspendError) e2.getErrorValue());
        }
    }

    public void membersUnsuspend(UserSelectorArg userSelectorArg) throws DbxException {
        membersUnsuspend(new MembersUnsuspendArg(userSelectorArg));
    }

    TeamNamespacesListResult namespacesList(TeamNamespacesListArg teamNamespacesListArg) throws DbxException {
        try {
            return (TeamNamespacesListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/namespaces/list", teamNamespacesListArg, false, TeamNamespacesListArg.Serializer.INSTANCE, TeamNamespacesListResult.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"namespaces/list\":" + e2.getErrorValue());
        }
    }

    public TeamNamespacesListResult namespacesList() throws DbxException {
        return namespacesList(new TeamNamespacesListArg());
    }

    public TeamNamespacesListResult namespacesList(long j) throws DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        return namespacesList(new TeamNamespacesListArg(j));
    }

    TeamNamespacesListResult namespacesListContinue(TeamNamespacesListContinueArg teamNamespacesListContinueArg) throws DbxException {
        try {
            return (TeamNamespacesListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/namespaces/list/continue", teamNamespacesListContinueArg, false, TeamNamespacesListContinueArg.Serializer.INSTANCE, TeamNamespacesListResult.Serializer.INSTANCE, TeamNamespacesListContinueError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamNamespacesListContinueErrorException("2/team/namespaces/list/continue", e2.getRequestId(), e2.getUserMessage(), (TeamNamespacesListContinueError) e2.getErrorValue());
        }
    }

    public TeamNamespacesListResult namespacesListContinue(String str) throws DbxException {
        return namespacesListContinue(new TeamNamespacesListContinueArg(str));
    }

    AddTemplateResult propertiesTemplateAdd(AddTemplateArg addTemplateArg) throws DbxException {
        try {
            return (AddTemplateResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/properties/template/add", addTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ModifyTemplateErrorException("2/team/properties/template/add", e2.getRequestId(), e2.getUserMessage(), (ModifyTemplateError) e2.getErrorValue());
        }
    }

    @Deprecated
    public AddTemplateResult propertiesTemplateAdd(String str, String str2, List<PropertyFieldTemplate> list) throws DbxException {
        return propertiesTemplateAdd(new AddTemplateArg(str, str2, list));
    }

    GetTemplateResult propertiesTemplateGet(GetTemplateArg getTemplateArg) throws DbxException {
        try {
            return (GetTemplateResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/properties/template/get", getTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TemplateErrorException("2/team/properties/template/get", e2.getRequestId(), e2.getUserMessage(), (TemplateError) e2.getErrorValue());
        }
    }

    @Deprecated
    public GetTemplateResult propertiesTemplateGet(String str) throws DbxException {
        return propertiesTemplateGet(new GetTemplateArg(str));
    }

    @Deprecated
    public ListTemplateResult propertiesTemplateList() throws DbxException {
        try {
            return (ListTemplateResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/properties/template/list", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TemplateErrorException("2/team/properties/template/list", e2.getRequestId(), e2.getUserMessage(), (TemplateError) e2.getErrorValue());
        }
    }

    UpdateTemplateResult propertiesTemplateUpdate(UpdateTemplateArg updateTemplateArg) throws DbxException {
        try {
            return (UpdateTemplateResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/properties/template/update", updateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ModifyTemplateErrorException("2/team/properties/template/update", e2.getRequestId(), e2.getUserMessage(), (ModifyTemplateError) e2.getErrorValue());
        }
    }

    @Deprecated
    public UpdateTemplateResult propertiesTemplateUpdate(String str) throws DbxException {
        return propertiesTemplateUpdate(new UpdateTemplateArg(str));
    }

    @Deprecated
    public PropertiesTemplateUpdateBuilder propertiesTemplateUpdateBuilder(String str) {
        return new PropertiesTemplateUpdateBuilder(this, UpdateTemplateArg.newBuilder(str));
    }

    GetActivityReport reportsGetActivity(DateRange dateRange) throws DbxException {
        try {
            return (GetActivityReport) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/reports/get_activity", dateRange, false, DateRange.Serializer.INSTANCE, GetActivityReport.Serializer.INSTANCE, DateRangeError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DateRangeErrorException("2/team/reports/get_activity", e2.getRequestId(), e2.getUserMessage(), (DateRangeError) e2.getErrorValue());
        }
    }

    public GetActivityReport reportsGetActivity() throws DbxException {
        return reportsGetActivity(new DateRange());
    }

    public ReportsGetActivityBuilder reportsGetActivityBuilder() {
        return new ReportsGetActivityBuilder(this, DateRange.newBuilder());
    }

    GetDevicesReport reportsGetDevices(DateRange dateRange) throws DbxException {
        try {
            return (GetDevicesReport) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/reports/get_devices", dateRange, false, DateRange.Serializer.INSTANCE, GetDevicesReport.Serializer.INSTANCE, DateRangeError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DateRangeErrorException("2/team/reports/get_devices", e2.getRequestId(), e2.getUserMessage(), (DateRangeError) e2.getErrorValue());
        }
    }

    public GetDevicesReport reportsGetDevices() throws DbxException {
        return reportsGetDevices(new DateRange());
    }

    public ReportsGetDevicesBuilder reportsGetDevicesBuilder() {
        return new ReportsGetDevicesBuilder(this, DateRange.newBuilder());
    }

    GetMembershipReport reportsGetMembership(DateRange dateRange) throws DbxException {
        try {
            return (GetMembershipReport) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/reports/get_membership", dateRange, false, DateRange.Serializer.INSTANCE, GetMembershipReport.Serializer.INSTANCE, DateRangeError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DateRangeErrorException("2/team/reports/get_membership", e2.getRequestId(), e2.getUserMessage(), (DateRangeError) e2.getErrorValue());
        }
    }

    public GetMembershipReport reportsGetMembership() throws DbxException {
        return reportsGetMembership(new DateRange());
    }

    public ReportsGetMembershipBuilder reportsGetMembershipBuilder() {
        return new ReportsGetMembershipBuilder(this, DateRange.newBuilder());
    }

    GetStorageReport reportsGetStorage(DateRange dateRange) throws DbxException {
        try {
            return (GetStorageReport) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/reports/get_storage", dateRange, false, DateRange.Serializer.INSTANCE, GetStorageReport.Serializer.INSTANCE, DateRangeError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DateRangeErrorException("2/team/reports/get_storage", e2.getRequestId(), e2.getUserMessage(), (DateRangeError) e2.getErrorValue());
        }
    }

    public GetStorageReport reportsGetStorage() throws DbxException {
        return reportsGetStorage(new DateRange());
    }

    public ReportsGetStorageBuilder reportsGetStorageBuilder() {
        return new ReportsGetStorageBuilder(this, DateRange.newBuilder());
    }

    TeamFolderMetadata teamFolderActivate(TeamFolderIdArg teamFolderIdArg) throws DbxException {
        try {
            return (TeamFolderMetadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/activate", teamFolderIdArg, false, TeamFolderIdArg.Serializer.INSTANCE, TeamFolderMetadata.Serializer.INSTANCE, TeamFolderActivateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderActivateErrorException("2/team/team_folder/activate", e2.getRequestId(), e2.getUserMessage(), (TeamFolderActivateError) e2.getErrorValue());
        }
    }

    public TeamFolderMetadata teamFolderActivate(String str) throws DbxException {
        return teamFolderActivate(new TeamFolderIdArg(str));
    }

    TeamFolderArchiveLaunch teamFolderArchive(TeamFolderArchiveArg teamFolderArchiveArg) throws DbxException {
        try {
            return (TeamFolderArchiveLaunch) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/archive", teamFolderArchiveArg, false, TeamFolderArchiveArg.Serializer.INSTANCE, TeamFolderArchiveLaunch.Serializer.INSTANCE, TeamFolderArchiveError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderArchiveErrorException("2/team/team_folder/archive", e2.getRequestId(), e2.getUserMessage(), (TeamFolderArchiveError) e2.getErrorValue());
        }
    }

    public TeamFolderArchiveLaunch teamFolderArchive(String str) throws DbxException {
        return teamFolderArchive(new TeamFolderArchiveArg(str));
    }

    public TeamFolderArchiveLaunch teamFolderArchive(String str, boolean z) throws DbxException {
        return teamFolderArchive(new TeamFolderArchiveArg(str, z));
    }

    TeamFolderArchiveJobStatus teamFolderArchiveCheck(PollArg pollArg) throws DbxException {
        try {
            return (TeamFolderArchiveJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/archive/check", pollArg, false, PollArg.Serializer.INSTANCE, TeamFolderArchiveJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/team/team_folder/archive/check", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public TeamFolderArchiveJobStatus teamFolderArchiveCheck(String str) throws DbxException {
        return teamFolderArchiveCheck(new PollArg(str));
    }

    TeamFolderMetadata teamFolderCreate(TeamFolderCreateArg teamFolderCreateArg) throws DbxException {
        try {
            return (TeamFolderMetadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/create", teamFolderCreateArg, false, TeamFolderCreateArg.Serializer.INSTANCE, TeamFolderMetadata.Serializer.INSTANCE, TeamFolderCreateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderCreateErrorException("2/team/team_folder/create", e2.getRequestId(), e2.getUserMessage(), (TeamFolderCreateError) e2.getErrorValue());
        }
    }

    public TeamFolderMetadata teamFolderCreate(String str) throws DbxException {
        return teamFolderCreate(new TeamFolderCreateArg(str));
    }

    List<TeamFolderGetInfoItem> teamFolderGetInfo(TeamFolderIdListArg teamFolderIdListArg) throws DbxException {
        try {
            return (List) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/get_info", teamFolderIdListArg, false, TeamFolderIdListArg.Serializer.INSTANCE, StoneSerializers.list(TeamFolderGetInfoItem.Serializer.INSTANCE), StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"team_folder/get_info\":" + e2.getErrorValue());
        }
    }

    public List<TeamFolderGetInfoItem> teamFolderGetInfo(List<String> list) throws DbxException {
        return teamFolderGetInfo(new TeamFolderIdListArg(list));
    }

    TeamFolderListResult teamFolderList(TeamFolderListArg teamFolderListArg) throws DbxException {
        try {
            return (TeamFolderListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/list", teamFolderListArg, false, TeamFolderListArg.Serializer.INSTANCE, TeamFolderListResult.Serializer.INSTANCE, TeamFolderListError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderListErrorException("2/team/team_folder/list", e2.getRequestId(), e2.getUserMessage(), (TeamFolderListError) e2.getErrorValue());
        }
    }

    public TeamFolderListResult teamFolderList() throws DbxException {
        return teamFolderList(new TeamFolderListArg());
    }

    public TeamFolderListResult teamFolderList(long j) throws DbxException {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        return teamFolderList(new TeamFolderListArg(j));
    }

    TeamFolderListResult teamFolderListContinue(TeamFolderListContinueArg teamFolderListContinueArg) throws DbxException {
        try {
            return (TeamFolderListResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/list/continue", teamFolderListContinueArg, false, TeamFolderListContinueArg.Serializer.INSTANCE, TeamFolderListResult.Serializer.INSTANCE, TeamFolderListContinueError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderListContinueErrorException("2/team/team_folder/list/continue", e2.getRequestId(), e2.getUserMessage(), (TeamFolderListContinueError) e2.getErrorValue());
        }
    }

    public TeamFolderListResult teamFolderListContinue(String str) throws DbxException {
        return teamFolderListContinue(new TeamFolderListContinueArg(str));
    }

    void teamFolderPermanentlyDelete(TeamFolderIdArg teamFolderIdArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/permanently_delete", teamFolderIdArg, false, TeamFolderIdArg.Serializer.INSTANCE, StoneSerializers.void_(), TeamFolderPermanentlyDeleteError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderPermanentlyDeleteErrorException("2/team/team_folder/permanently_delete", e2.getRequestId(), e2.getUserMessage(), (TeamFolderPermanentlyDeleteError) e2.getErrorValue());
        }
    }

    public void teamFolderPermanentlyDelete(String str) throws DbxException {
        teamFolderPermanentlyDelete(new TeamFolderIdArg(str));
    }

    TeamFolderMetadata teamFolderRename(TeamFolderRenameArg teamFolderRenameArg) throws DbxException {
        try {
            return (TeamFolderMetadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/team_folder/rename", teamFolderRenameArg, false, TeamFolderRenameArg.Serializer.INSTANCE, TeamFolderMetadata.Serializer.INSTANCE, TeamFolderRenameError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TeamFolderRenameErrorException("2/team/team_folder/rename", e2.getRequestId(), e2.getUserMessage(), (TeamFolderRenameError) e2.getErrorValue());
        }
    }

    public TeamFolderMetadata teamFolderRename(String str, String str2) throws DbxException {
        return teamFolderRename(new TeamFolderRenameArg(str, str2));
    }

    public TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdmin() throws DbxException {
        try {
            return (TokenGetAuthenticatedAdminResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/team/token/get_authenticated_admin", null, false, StoneSerializers.void_(), TokenGetAuthenticatedAdminResult.Serializer.INSTANCE, TokenGetAuthenticatedAdminError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TokenGetAuthenticatedAdminErrorException("2/team/token/get_authenticated_admin", e2.getRequestId(), e2.getUserMessage(), (TokenGetAuthenticatedAdminError) e2.getErrorValue());
        }
    }
}
