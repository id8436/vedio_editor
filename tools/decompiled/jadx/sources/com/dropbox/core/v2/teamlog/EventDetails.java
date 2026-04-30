package com.dropbox.core.v2.teamlog;

import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.AccountCaptureChangeAvailabilityDetails;
import com.dropbox.core.v2.teamlog.AccountCaptureChangePolicyDetails;
import com.dropbox.core.v2.teamlog.AccountCaptureMigrateAccountDetails;
import com.dropbox.core.v2.teamlog.AccountCaptureRelinquishAccountDetails;
import com.dropbox.core.v2.teamlog.AllowDownloadDisabledDetails;
import com.dropbox.core.v2.teamlog.AllowDownloadEnabledDetails;
import com.dropbox.core.v2.teamlog.AppLinkTeamDetails;
import com.dropbox.core.v2.teamlog.AppLinkUserDetails;
import com.dropbox.core.v2.teamlog.AppUnlinkTeamDetails;
import com.dropbox.core.v2.teamlog.AppUnlinkUserDetails;
import com.dropbox.core.v2.teamlog.CollectionShareDetails;
import com.dropbox.core.v2.teamlog.CreateFolderDetails;
import com.dropbox.core.v2.teamlog.DataPlacementRestrictionChangePolicyDetails;
import com.dropbox.core.v2.teamlog.DataPlacementRestrictionSatisfyPolicyDetails;
import com.dropbox.core.v2.teamlog.DeviceApprovalsChangeDesktopPolicyDetails;
import com.dropbox.core.v2.teamlog.DeviceApprovalsChangeMobilePolicyDetails;
import com.dropbox.core.v2.teamlog.DeviceApprovalsChangeOverageActionDetails;
import com.dropbox.core.v2.teamlog.DeviceApprovalsChangeUnlinkActionDetails;
import com.dropbox.core.v2.teamlog.DeviceChangeIpDesktopDetails;
import com.dropbox.core.v2.teamlog.DeviceChangeIpMobileDetails;
import com.dropbox.core.v2.teamlog.DeviceChangeIpWebDetails;
import com.dropbox.core.v2.teamlog.DeviceDeleteOnUnlinkFailDetails;
import com.dropbox.core.v2.teamlog.DeviceDeleteOnUnlinkSuccessDetails;
import com.dropbox.core.v2.teamlog.DeviceLinkFailDetails;
import com.dropbox.core.v2.teamlog.DeviceLinkSuccessDetails;
import com.dropbox.core.v2.teamlog.DeviceManagementDisabledDetails;
import com.dropbox.core.v2.teamlog.DeviceManagementEnabledDetails;
import com.dropbox.core.v2.teamlog.DeviceUnlinkDetails;
import com.dropbox.core.v2.teamlog.DisabledDomainInvitesDetails;
import com.dropbox.core.v2.teamlog.DomainInvitesApproveRequestToJoinTeamDetails;
import com.dropbox.core.v2.teamlog.DomainInvitesDeclineRequestToJoinTeamDetails;
import com.dropbox.core.v2.teamlog.DomainInvitesEmailExistingUsersDetails;
import com.dropbox.core.v2.teamlog.DomainInvitesRequestToJoinTeamDetails;
import com.dropbox.core.v2.teamlog.DomainInvitesSetInviteNewUserPrefToNoDetails;
import com.dropbox.core.v2.teamlog.DomainInvitesSetInviteNewUserPrefToYesDetails;
import com.dropbox.core.v2.teamlog.DomainVerificationAddDomainFailDetails;
import com.dropbox.core.v2.teamlog.DomainVerificationAddDomainSuccessDetails;
import com.dropbox.core.v2.teamlog.DomainVerificationRemoveDomainDetails;
import com.dropbox.core.v2.teamlog.EmmAddExceptionDetails;
import com.dropbox.core.v2.teamlog.EmmChangePolicyDetails;
import com.dropbox.core.v2.teamlog.EmmCreateExceptionsReportDetails;
import com.dropbox.core.v2.teamlog.EmmCreateUsageReportDetails;
import com.dropbox.core.v2.teamlog.EmmLoginSuccessDetails;
import com.dropbox.core.v2.teamlog.EmmRefreshAuthTokenDetails;
import com.dropbox.core.v2.teamlog.EmmRemoveExceptionDetails;
import com.dropbox.core.v2.teamlog.EnabledDomainInvitesDetails;
import com.dropbox.core.v2.teamlog.ExtendedVersionHistoryChangePolicyDetails;
import com.dropbox.core.v2.teamlog.FileAddCommentDetails;
import com.dropbox.core.v2.teamlog.FileAddDetails;
import com.dropbox.core.v2.teamlog.FileChangeCommentSubscriptionDetails;
import com.dropbox.core.v2.teamlog.FileCommentsChangePolicyDetails;
import com.dropbox.core.v2.teamlog.FileCopyDetails;
import com.dropbox.core.v2.teamlog.FileDeleteCommentDetails;
import com.dropbox.core.v2.teamlog.FileDeleteDetails;
import com.dropbox.core.v2.teamlog.FileDownloadDetails;
import com.dropbox.core.v2.teamlog.FileEditDetails;
import com.dropbox.core.v2.teamlog.FileGetCopyReferenceDetails;
import com.dropbox.core.v2.teamlog.FileLikeCommentDetails;
import com.dropbox.core.v2.teamlog.FileMoveDetails;
import com.dropbox.core.v2.teamlog.FilePermanentlyDeleteDetails;
import com.dropbox.core.v2.teamlog.FilePreviewDetails;
import com.dropbox.core.v2.teamlog.FileRenameDetails;
import com.dropbox.core.v2.teamlog.FileRequestAddDeadlineDetails;
import com.dropbox.core.v2.teamlog.FileRequestChangeFolderDetails;
import com.dropbox.core.v2.teamlog.FileRequestChangeTitleDetails;
import com.dropbox.core.v2.teamlog.FileRequestCloseDetails;
import com.dropbox.core.v2.teamlog.FileRequestCreateDetails;
import com.dropbox.core.v2.teamlog.FileRequestReceiveFileDetails;
import com.dropbox.core.v2.teamlog.FileRequestRemoveDeadlineDetails;
import com.dropbox.core.v2.teamlog.FileRequestSendDetails;
import com.dropbox.core.v2.teamlog.FileRequestsChangePolicyDetails;
import com.dropbox.core.v2.teamlog.FileRequestsEmailsEnabledDetails;
import com.dropbox.core.v2.teamlog.FileRequestsEmailsRestrictedToTeamOnlyDetails;
import com.dropbox.core.v2.teamlog.FileResolveCommentDetails;
import com.dropbox.core.v2.teamlog.FileRestoreDetails;
import com.dropbox.core.v2.teamlog.FileRevertDetails;
import com.dropbox.core.v2.teamlog.FileRollbackChangesDetails;
import com.dropbox.core.v2.teamlog.FileSaveCopyReferenceDetails;
import com.dropbox.core.v2.teamlog.FileUnlikeCommentDetails;
import com.dropbox.core.v2.teamlog.FileUnresolveCommentDetails;
import com.dropbox.core.v2.teamlog.GoogleSsoChangePolicyDetails;
import com.dropbox.core.v2.teamlog.GroupAddExternalIdDetails;
import com.dropbox.core.v2.teamlog.GroupAddMemberDetails;
import com.dropbox.core.v2.teamlog.GroupChangeExternalIdDetails;
import com.dropbox.core.v2.teamlog.GroupChangeManagementTypeDetails;
import com.dropbox.core.v2.teamlog.GroupChangeMemberRoleDetails;
import com.dropbox.core.v2.teamlog.GroupCreateDetails;
import com.dropbox.core.v2.teamlog.GroupDeleteDetails;
import com.dropbox.core.v2.teamlog.GroupMovedDetails;
import com.dropbox.core.v2.teamlog.GroupRemoveExternalIdDetails;
import com.dropbox.core.v2.teamlog.GroupRemoveMemberDetails;
import com.dropbox.core.v2.teamlog.GroupRenameDetails;
import com.dropbox.core.v2.teamlog.GroupUserManagementChangePolicyDetails;
import com.dropbox.core.v2.teamlog.LogoutDetails;
import com.dropbox.core.v2.teamlog.MemberAddNameDetails;
import com.dropbox.core.v2.teamlog.MemberChangeAdminRoleDetails;
import com.dropbox.core.v2.teamlog.MemberChangeEmailDetails;
import com.dropbox.core.v2.teamlog.MemberChangeMembershipTypeDetails;
import com.dropbox.core.v2.teamlog.MemberChangeNameDetails;
import com.dropbox.core.v2.teamlog.MemberChangeStatusDetails;
import com.dropbox.core.v2.teamlog.MemberPermanentlyDeleteAccountContentsDetails;
import com.dropbox.core.v2.teamlog.MemberRequestsChangePolicyDetails;
import com.dropbox.core.v2.teamlog.MemberSpaceLimitsAddExceptionDetails;
import com.dropbox.core.v2.teamlog.MemberSpaceLimitsChangePolicyDetails;
import com.dropbox.core.v2.teamlog.MemberSpaceLimitsChangeStatusDetails;
import com.dropbox.core.v2.teamlog.MemberSpaceLimitsRemoveExceptionDetails;
import com.dropbox.core.v2.teamlog.MemberSuggestDetails;
import com.dropbox.core.v2.teamlog.MemberSuggestionsChangePolicyDetails;
import com.dropbox.core.v2.teamlog.MemberTransferAccountContentsDetails;
import com.dropbox.core.v2.teamlog.MicrosoftOfficeAddinChangePolicyDetails;
import com.dropbox.core.v2.teamlog.MissingDetails;
import com.dropbox.core.v2.teamlog.NetworkControlChangePolicyDetails;
import com.dropbox.core.v2.teamlog.NoteAclInviteOnlyDetails;
import com.dropbox.core.v2.teamlog.NoteAclLinkDetails;
import com.dropbox.core.v2.teamlog.NoteAclTeamLinkDetails;
import com.dropbox.core.v2.teamlog.NoteShareReceiveDetails;
import com.dropbox.core.v2.teamlog.NoteSharedDetails;
import com.dropbox.core.v2.teamlog.OpenNoteSharedDetails;
import com.dropbox.core.v2.teamlog.PaperAdminExportStartDetails;
import com.dropbox.core.v2.teamlog.PaperChangeDeploymentPolicyDetails;
import com.dropbox.core.v2.teamlog.PaperChangeMemberLinkPolicyDetails;
import com.dropbox.core.v2.teamlog.PaperChangeMemberPolicyDetails;
import com.dropbox.core.v2.teamlog.PaperChangePolicyDetails;
import com.dropbox.core.v2.teamlog.PaperContentAddMemberDetails;
import com.dropbox.core.v2.teamlog.PaperContentAddToFolderDetails;
import com.dropbox.core.v2.teamlog.PaperContentArchiveDetails;
import com.dropbox.core.v2.teamlog.PaperContentCreateDetails;
import com.dropbox.core.v2.teamlog.PaperContentPermanentlyDeleteDetails;
import com.dropbox.core.v2.teamlog.PaperContentRemoveFromFolderDetails;
import com.dropbox.core.v2.teamlog.PaperContentRemoveMemberDetails;
import com.dropbox.core.v2.teamlog.PaperContentRenameDetails;
import com.dropbox.core.v2.teamlog.PaperContentRestoreDetails;
import com.dropbox.core.v2.teamlog.PaperDocAddCommentDetails;
import com.dropbox.core.v2.teamlog.PaperDocChangeMemberRoleDetails;
import com.dropbox.core.v2.teamlog.PaperDocChangeSharingPolicyDetails;
import com.dropbox.core.v2.teamlog.PaperDocChangeSubscriptionDetails;
import com.dropbox.core.v2.teamlog.PaperDocDeleteCommentDetails;
import com.dropbox.core.v2.teamlog.PaperDocDeletedDetails;
import com.dropbox.core.v2.teamlog.PaperDocDownloadDetails;
import com.dropbox.core.v2.teamlog.PaperDocEditCommentDetails;
import com.dropbox.core.v2.teamlog.PaperDocEditDetails;
import com.dropbox.core.v2.teamlog.PaperDocFollowedDetails;
import com.dropbox.core.v2.teamlog.PaperDocMentionDetails;
import com.dropbox.core.v2.teamlog.PaperDocRequestAccessDetails;
import com.dropbox.core.v2.teamlog.PaperDocResolveCommentDetails;
import com.dropbox.core.v2.teamlog.PaperDocRevertDetails;
import com.dropbox.core.v2.teamlog.PaperDocSlackShareDetails;
import com.dropbox.core.v2.teamlog.PaperDocTeamInviteDetails;
import com.dropbox.core.v2.teamlog.PaperDocTrashedDetails;
import com.dropbox.core.v2.teamlog.PaperDocUnresolveCommentDetails;
import com.dropbox.core.v2.teamlog.PaperDocUntrashedDetails;
import com.dropbox.core.v2.teamlog.PaperDocViewDetails;
import com.dropbox.core.v2.teamlog.PaperEnabledUsersGroupAdditionDetails;
import com.dropbox.core.v2.teamlog.PaperEnabledUsersGroupRemovalDetails;
import com.dropbox.core.v2.teamlog.PaperExternalViewAllowDetails;
import com.dropbox.core.v2.teamlog.PaperExternalViewDefaultTeamDetails;
import com.dropbox.core.v2.teamlog.PaperExternalViewForbidDetails;
import com.dropbox.core.v2.teamlog.PaperFolderChangeSubscriptionDetails;
import com.dropbox.core.v2.teamlog.PaperFolderDeletedDetails;
import com.dropbox.core.v2.teamlog.PaperFolderFollowedDetails;
import com.dropbox.core.v2.teamlog.PaperFolderTeamInviteDetails;
import com.dropbox.core.v2.teamlog.PasswordChangeDetails;
import com.dropbox.core.v2.teamlog.PasswordLoginFailDetails;
import com.dropbox.core.v2.teamlog.PasswordLoginSuccessDetails;
import com.dropbox.core.v2.teamlog.PasswordResetAllDetails;
import com.dropbox.core.v2.teamlog.PasswordResetDetails;
import com.dropbox.core.v2.teamlog.PermanentDeleteChangePolicyDetails;
import com.dropbox.core.v2.teamlog.ResellerSupportSessionEndDetails;
import com.dropbox.core.v2.teamlog.ResellerSupportSessionStartDetails;
import com.dropbox.core.v2.teamlog.SfAddGroupDetails;
import com.dropbox.core.v2.teamlog.SfAllowNonMembersToViewSharedLinksDetails;
import com.dropbox.core.v2.teamlog.SfExternalInviteWarnDetails;
import com.dropbox.core.v2.teamlog.SfInviteGroupDetails;
import com.dropbox.core.v2.teamlog.SfNestDetails;
import com.dropbox.core.v2.teamlog.SfTeamDeclineDetails;
import com.dropbox.core.v2.teamlog.SfTeamGrantAccessDetails;
import com.dropbox.core.v2.teamlog.SfTeamInviteChangeRoleDetails;
import com.dropbox.core.v2.teamlog.SfTeamInviteDetails;
import com.dropbox.core.v2.teamlog.SfTeamJoinDetails;
import com.dropbox.core.v2.teamlog.SfTeamJoinFromOobLinkDetails;
import com.dropbox.core.v2.teamlog.SfTeamUninviteDetails;
import com.dropbox.core.v2.teamlog.SharedContentAddInviteesDetails;
import com.dropbox.core.v2.teamlog.SharedContentAddLinkExpiryDetails;
import com.dropbox.core.v2.teamlog.SharedContentAddLinkPasswordDetails;
import com.dropbox.core.v2.teamlog.SharedContentAddMemberDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeDownloadsPolicyDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeInviteeRoleDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeLinkAudienceDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeLinkExpiryDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeLinkPasswordDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeMemberRoleDetails;
import com.dropbox.core.v2.teamlog.SharedContentChangeViewerInfoPolicyDetails;
import com.dropbox.core.v2.teamlog.SharedContentClaimInvitationDetails;
import com.dropbox.core.v2.teamlog.SharedContentCopyDetails;
import com.dropbox.core.v2.teamlog.SharedContentDownloadDetails;
import com.dropbox.core.v2.teamlog.SharedContentRelinquishMembershipDetails;
import com.dropbox.core.v2.teamlog.SharedContentRemoveInviteeDetails;
import com.dropbox.core.v2.teamlog.SharedContentRemoveLinkExpiryDetails;
import com.dropbox.core.v2.teamlog.SharedContentRemoveLinkPasswordDetails;
import com.dropbox.core.v2.teamlog.SharedContentRemoveMemberDetails;
import com.dropbox.core.v2.teamlog.SharedContentRequestAccessDetails;
import com.dropbox.core.v2.teamlog.SharedContentUnshareDetails;
import com.dropbox.core.v2.teamlog.SharedContentViewDetails;
import com.dropbox.core.v2.teamlog.SharedFolderChangeConfidentialityDetails;
import com.dropbox.core.v2.teamlog.SharedFolderChangeLinkPolicyDetails;
import com.dropbox.core.v2.teamlog.SharedFolderChangeMemberManagementPolicyDetails;
import com.dropbox.core.v2.teamlog.SharedFolderChangeMemberPolicyDetails;
import com.dropbox.core.v2.teamlog.SharedFolderCreateDetails;
import com.dropbox.core.v2.teamlog.SharedFolderMountDetails;
import com.dropbox.core.v2.teamlog.SharedFolderTransferOwnershipDetails;
import com.dropbox.core.v2.teamlog.SharedFolderUnmountDetails;
import com.dropbox.core.v2.teamlog.SharedNoteOpenedDetails;
import com.dropbox.core.v2.teamlog.SharingChangeFolderJoinPolicyDetails;
import com.dropbox.core.v2.teamlog.SharingChangeLinkPolicyDetails;
import com.dropbox.core.v2.teamlog.SharingChangeMemberPolicyDetails;
import com.dropbox.core.v2.teamlog.ShmodelAppCreateDetails;
import com.dropbox.core.v2.teamlog.ShmodelCreateDetails;
import com.dropbox.core.v2.teamlog.ShmodelDisableDetails;
import com.dropbox.core.v2.teamlog.ShmodelFbShareDetails;
import com.dropbox.core.v2.teamlog.ShmodelGroupShareDetails;
import com.dropbox.core.v2.teamlog.ShmodelRemoveExpirationDetails;
import com.dropbox.core.v2.teamlog.ShmodelSetExpirationDetails;
import com.dropbox.core.v2.teamlog.ShmodelTeamCopyDetails;
import com.dropbox.core.v2.teamlog.ShmodelTeamDownloadDetails;
import com.dropbox.core.v2.teamlog.ShmodelTeamShareDetails;
import com.dropbox.core.v2.teamlog.ShmodelTeamViewDetails;
import com.dropbox.core.v2.teamlog.ShmodelVisibilityPasswordDetails;
import com.dropbox.core.v2.teamlog.ShmodelVisibilityPublicDetails;
import com.dropbox.core.v2.teamlog.ShmodelVisibilityTeamOnlyDetails;
import com.dropbox.core.v2.teamlog.SignInAsSessionEndDetails;
import com.dropbox.core.v2.teamlog.SignInAsSessionStartDetails;
import com.dropbox.core.v2.teamlog.SmartSyncChangePolicyDetails;
import com.dropbox.core.v2.teamlog.SmartSyncCreateAdminPrivilegeReportDetails;
import com.dropbox.core.v2.teamlog.SmartSyncNotOptOutDetails;
import com.dropbox.core.v2.teamlog.SmartSyncOptOutDetails;
import com.dropbox.core.v2.teamlog.SsoAddCertDetails;
import com.dropbox.core.v2.teamlog.SsoAddLoginUrlDetails;
import com.dropbox.core.v2.teamlog.SsoAddLogoutUrlDetails;
import com.dropbox.core.v2.teamlog.SsoChangeCertDetails;
import com.dropbox.core.v2.teamlog.SsoChangeLoginUrlDetails;
import com.dropbox.core.v2.teamlog.SsoChangeLogoutUrlDetails;
import com.dropbox.core.v2.teamlog.SsoChangePolicyDetails;
import com.dropbox.core.v2.teamlog.SsoChangeSamlIdentityModeDetails;
import com.dropbox.core.v2.teamlog.SsoLoginFailDetails;
import com.dropbox.core.v2.teamlog.SsoRemoveCertDetails;
import com.dropbox.core.v2.teamlog.SsoRemoveLoginUrlDetails;
import com.dropbox.core.v2.teamlog.SsoRemoveLogoutUrlDetails;
import com.dropbox.core.v2.teamlog.TeamActivityCreateReportDetails;
import com.dropbox.core.v2.teamlog.TeamFolderChangeStatusDetails;
import com.dropbox.core.v2.teamlog.TeamFolderCreateDetails;
import com.dropbox.core.v2.teamlog.TeamFolderDowngradeDetails;
import com.dropbox.core.v2.teamlog.TeamFolderPermanentlyDeleteDetails;
import com.dropbox.core.v2.teamlog.TeamFolderRenameDetails;
import com.dropbox.core.v2.teamlog.TeamMergeFromDetails;
import com.dropbox.core.v2.teamlog.TeamMergeToDetails;
import com.dropbox.core.v2.teamlog.TeamProfileAddLogoDetails;
import com.dropbox.core.v2.teamlog.TeamProfileChangeDefaultLanguageDetails;
import com.dropbox.core.v2.teamlog.TeamProfileChangeLogoDetails;
import com.dropbox.core.v2.teamlog.TeamProfileChangeNameDetails;
import com.dropbox.core.v2.teamlog.TeamProfileRemoveLogoDetails;
import com.dropbox.core.v2.teamlog.TfaAddBackupPhoneDetails;
import com.dropbox.core.v2.teamlog.TfaAddSecurityKeyDetails;
import com.dropbox.core.v2.teamlog.TfaChangeBackupPhoneDetails;
import com.dropbox.core.v2.teamlog.TfaChangePolicyDetails;
import com.dropbox.core.v2.teamlog.TfaChangeStatusDetails;
import com.dropbox.core.v2.teamlog.TfaRemoveBackupPhoneDetails;
import com.dropbox.core.v2.teamlog.TfaRemoveSecurityKeyDetails;
import com.dropbox.core.v2.teamlog.TfaResetDetails;
import com.dropbox.core.v2.teamlog.TwoAccountChangePolicyDetails;
import com.dropbox.core.v2.teamlog.WebSessionsChangeFixedLengthPolicyDetails;
import com.dropbox.core.v2.teamlog.WebSessionsChangeIdleLengthPolicyDetails;
import java.io.IOException;
import java.util.Arrays;
import org.joda.time.DateTimeConstants;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class EventDetails {
    public static final EventDetails OTHER = new EventDetails().withTag(Tag.OTHER);
    private Tag _tag;
    private AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetailsValue;
    private AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetailsValue;
    private AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetailsValue;
    private AccountCaptureRelinquishAccountDetails accountCaptureRelinquishAccountDetailsValue;
    private AllowDownloadDisabledDetails allowDownloadDisabledDetailsValue;
    private AllowDownloadEnabledDetails allowDownloadEnabledDetailsValue;
    private AppLinkTeamDetails appLinkTeamDetailsValue;
    private AppLinkUserDetails appLinkUserDetailsValue;
    private AppUnlinkTeamDetails appUnlinkTeamDetailsValue;
    private AppUnlinkUserDetails appUnlinkUserDetailsValue;
    private CollectionShareDetails collectionShareDetailsValue;
    private CreateFolderDetails createFolderDetailsValue;
    private DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetailsValue;
    private DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetailsValue;
    private DeviceApprovalsChangeDesktopPolicyDetails deviceApprovalsChangeDesktopPolicyDetailsValue;
    private DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetailsValue;
    private DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetailsValue;
    private DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetailsValue;
    private DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetailsValue;
    private DeviceChangeIpMobileDetails deviceChangeIpMobileDetailsValue;
    private DeviceChangeIpWebDetails deviceChangeIpWebDetailsValue;
    private DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetailsValue;
    private DeviceDeleteOnUnlinkSuccessDetails deviceDeleteOnUnlinkSuccessDetailsValue;
    private DeviceLinkFailDetails deviceLinkFailDetailsValue;
    private DeviceLinkSuccessDetails deviceLinkSuccessDetailsValue;
    private DeviceManagementDisabledDetails deviceManagementDisabledDetailsValue;
    private DeviceManagementEnabledDetails deviceManagementEnabledDetailsValue;
    private DeviceUnlinkDetails deviceUnlinkDetailsValue;
    private DisabledDomainInvitesDetails disabledDomainInvitesDetailsValue;
    private DomainInvitesApproveRequestToJoinTeamDetails domainInvitesApproveRequestToJoinTeamDetailsValue;
    private DomainInvitesDeclineRequestToJoinTeamDetails domainInvitesDeclineRequestToJoinTeamDetailsValue;
    private DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetailsValue;
    private DomainInvitesRequestToJoinTeamDetails domainInvitesRequestToJoinTeamDetailsValue;
    private DomainInvitesSetInviteNewUserPrefToNoDetails domainInvitesSetInviteNewUserPrefToNoDetailsValue;
    private DomainInvitesSetInviteNewUserPrefToYesDetails domainInvitesSetInviteNewUserPrefToYesDetailsValue;
    private DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetailsValue;
    private DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetailsValue;
    private DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetailsValue;
    private EmmAddExceptionDetails emmAddExceptionDetailsValue;
    private EmmChangePolicyDetails emmChangePolicyDetailsValue;
    private EmmCreateExceptionsReportDetails emmCreateExceptionsReportDetailsValue;
    private EmmCreateUsageReportDetails emmCreateUsageReportDetailsValue;
    private EmmLoginSuccessDetails emmLoginSuccessDetailsValue;
    private EmmRefreshAuthTokenDetails emmRefreshAuthTokenDetailsValue;
    private EmmRemoveExceptionDetails emmRemoveExceptionDetailsValue;
    private EnabledDomainInvitesDetails enabledDomainInvitesDetailsValue;
    private ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetailsValue;
    private FileAddCommentDetails fileAddCommentDetailsValue;
    private FileAddDetails fileAddDetailsValue;
    private FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetailsValue;
    private FileCommentsChangePolicyDetails fileCommentsChangePolicyDetailsValue;
    private FileCopyDetails fileCopyDetailsValue;
    private FileDeleteCommentDetails fileDeleteCommentDetailsValue;
    private FileDeleteDetails fileDeleteDetailsValue;
    private FileDownloadDetails fileDownloadDetailsValue;
    private FileEditDetails fileEditDetailsValue;
    private FileGetCopyReferenceDetails fileGetCopyReferenceDetailsValue;
    private FileLikeCommentDetails fileLikeCommentDetailsValue;
    private FileMoveDetails fileMoveDetailsValue;
    private FilePermanentlyDeleteDetails filePermanentlyDeleteDetailsValue;
    private FilePreviewDetails filePreviewDetailsValue;
    private FileRenameDetails fileRenameDetailsValue;
    private FileRequestAddDeadlineDetails fileRequestAddDeadlineDetailsValue;
    private FileRequestChangeFolderDetails fileRequestChangeFolderDetailsValue;
    private FileRequestChangeTitleDetails fileRequestChangeTitleDetailsValue;
    private FileRequestCloseDetails fileRequestCloseDetailsValue;
    private FileRequestCreateDetails fileRequestCreateDetailsValue;
    private FileRequestReceiveFileDetails fileRequestReceiveFileDetailsValue;
    private FileRequestRemoveDeadlineDetails fileRequestRemoveDeadlineDetailsValue;
    private FileRequestSendDetails fileRequestSendDetailsValue;
    private FileRequestsChangePolicyDetails fileRequestsChangePolicyDetailsValue;
    private FileRequestsEmailsEnabledDetails fileRequestsEmailsEnabledDetailsValue;
    private FileRequestsEmailsRestrictedToTeamOnlyDetails fileRequestsEmailsRestrictedToTeamOnlyDetailsValue;
    private FileResolveCommentDetails fileResolveCommentDetailsValue;
    private FileRestoreDetails fileRestoreDetailsValue;
    private FileRevertDetails fileRevertDetailsValue;
    private FileRollbackChangesDetails fileRollbackChangesDetailsValue;
    private FileSaveCopyReferenceDetails fileSaveCopyReferenceDetailsValue;
    private FileUnlikeCommentDetails fileUnlikeCommentDetailsValue;
    private FileUnresolveCommentDetails fileUnresolveCommentDetailsValue;
    private GoogleSsoChangePolicyDetails googleSsoChangePolicyDetailsValue;
    private GroupAddExternalIdDetails groupAddExternalIdDetailsValue;
    private GroupAddMemberDetails groupAddMemberDetailsValue;
    private GroupChangeExternalIdDetails groupChangeExternalIdDetailsValue;
    private GroupChangeManagementTypeDetails groupChangeManagementTypeDetailsValue;
    private GroupChangeMemberRoleDetails groupChangeMemberRoleDetailsValue;
    private GroupCreateDetails groupCreateDetailsValue;
    private GroupDeleteDetails groupDeleteDetailsValue;
    private GroupMovedDetails groupMovedDetailsValue;
    private GroupRemoveExternalIdDetails groupRemoveExternalIdDetailsValue;
    private GroupRemoveMemberDetails groupRemoveMemberDetailsValue;
    private GroupRenameDetails groupRenameDetailsValue;
    private GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetailsValue;
    private LogoutDetails logoutDetailsValue;
    private MemberAddNameDetails memberAddNameDetailsValue;
    private MemberChangeAdminRoleDetails memberChangeAdminRoleDetailsValue;
    private MemberChangeEmailDetails memberChangeEmailDetailsValue;
    private MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetailsValue;
    private MemberChangeNameDetails memberChangeNameDetailsValue;
    private MemberChangeStatusDetails memberChangeStatusDetailsValue;
    private MemberPermanentlyDeleteAccountContentsDetails memberPermanentlyDeleteAccountContentsDetailsValue;
    private MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetailsValue;
    private MemberSpaceLimitsAddExceptionDetails memberSpaceLimitsAddExceptionDetailsValue;
    private MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetailsValue;
    private MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetailsValue;
    private MemberSpaceLimitsRemoveExceptionDetails memberSpaceLimitsRemoveExceptionDetailsValue;
    private MemberSuggestDetails memberSuggestDetailsValue;
    private MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetailsValue;
    private MemberTransferAccountContentsDetails memberTransferAccountContentsDetailsValue;
    private MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetailsValue;
    private MissingDetails missingDetailsValue;
    private NetworkControlChangePolicyDetails networkControlChangePolicyDetailsValue;
    private NoteAclInviteOnlyDetails noteAclInviteOnlyDetailsValue;
    private NoteAclLinkDetails noteAclLinkDetailsValue;
    private NoteAclTeamLinkDetails noteAclTeamLinkDetailsValue;
    private NoteShareReceiveDetails noteShareReceiveDetailsValue;
    private NoteSharedDetails noteSharedDetailsValue;
    private OpenNoteSharedDetails openNoteSharedDetailsValue;
    private PaperAdminExportStartDetails paperAdminExportStartDetailsValue;
    private PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetailsValue;
    private PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetailsValue;
    private PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetailsValue;
    private PaperChangePolicyDetails paperChangePolicyDetailsValue;
    private PaperContentAddMemberDetails paperContentAddMemberDetailsValue;
    private PaperContentAddToFolderDetails paperContentAddToFolderDetailsValue;
    private PaperContentArchiveDetails paperContentArchiveDetailsValue;
    private PaperContentCreateDetails paperContentCreateDetailsValue;
    private PaperContentPermanentlyDeleteDetails paperContentPermanentlyDeleteDetailsValue;
    private PaperContentRemoveFromFolderDetails paperContentRemoveFromFolderDetailsValue;
    private PaperContentRemoveMemberDetails paperContentRemoveMemberDetailsValue;
    private PaperContentRenameDetails paperContentRenameDetailsValue;
    private PaperContentRestoreDetails paperContentRestoreDetailsValue;
    private PaperDocAddCommentDetails paperDocAddCommentDetailsValue;
    private PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetailsValue;
    private PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetailsValue;
    private PaperDocChangeSubscriptionDetails paperDocChangeSubscriptionDetailsValue;
    private PaperDocDeleteCommentDetails paperDocDeleteCommentDetailsValue;
    private PaperDocDeletedDetails paperDocDeletedDetailsValue;
    private PaperDocDownloadDetails paperDocDownloadDetailsValue;
    private PaperDocEditCommentDetails paperDocEditCommentDetailsValue;
    private PaperDocEditDetails paperDocEditDetailsValue;
    private PaperDocFollowedDetails paperDocFollowedDetailsValue;
    private PaperDocMentionDetails paperDocMentionDetailsValue;
    private PaperDocRequestAccessDetails paperDocRequestAccessDetailsValue;
    private PaperDocResolveCommentDetails paperDocResolveCommentDetailsValue;
    private PaperDocRevertDetails paperDocRevertDetailsValue;
    private PaperDocSlackShareDetails paperDocSlackShareDetailsValue;
    private PaperDocTeamInviteDetails paperDocTeamInviteDetailsValue;
    private PaperDocTrashedDetails paperDocTrashedDetailsValue;
    private PaperDocUnresolveCommentDetails paperDocUnresolveCommentDetailsValue;
    private PaperDocUntrashedDetails paperDocUntrashedDetailsValue;
    private PaperDocViewDetails paperDocViewDetailsValue;
    private PaperEnabledUsersGroupAdditionDetails paperEnabledUsersGroupAdditionDetailsValue;
    private PaperEnabledUsersGroupRemovalDetails paperEnabledUsersGroupRemovalDetailsValue;
    private PaperExternalViewAllowDetails paperExternalViewAllowDetailsValue;
    private PaperExternalViewDefaultTeamDetails paperExternalViewDefaultTeamDetailsValue;
    private PaperExternalViewForbidDetails paperExternalViewForbidDetailsValue;
    private PaperFolderChangeSubscriptionDetails paperFolderChangeSubscriptionDetailsValue;
    private PaperFolderDeletedDetails paperFolderDeletedDetailsValue;
    private PaperFolderFollowedDetails paperFolderFollowedDetailsValue;
    private PaperFolderTeamInviteDetails paperFolderTeamInviteDetailsValue;
    private PasswordChangeDetails passwordChangeDetailsValue;
    private PasswordLoginFailDetails passwordLoginFailDetailsValue;
    private PasswordLoginSuccessDetails passwordLoginSuccessDetailsValue;
    private PasswordResetAllDetails passwordResetAllDetailsValue;
    private PasswordResetDetails passwordResetDetailsValue;
    private PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetailsValue;
    private ResellerSupportSessionEndDetails resellerSupportSessionEndDetailsValue;
    private ResellerSupportSessionStartDetails resellerSupportSessionStartDetailsValue;
    private SfAddGroupDetails sfAddGroupDetailsValue;
    private SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetailsValue;
    private SfExternalInviteWarnDetails sfExternalInviteWarnDetailsValue;
    private SfInviteGroupDetails sfInviteGroupDetailsValue;
    private SfNestDetails sfNestDetailsValue;
    private SfTeamDeclineDetails sfTeamDeclineDetailsValue;
    private SfTeamGrantAccessDetails sfTeamGrantAccessDetailsValue;
    private SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetailsValue;
    private SfTeamInviteDetails sfTeamInviteDetailsValue;
    private SfTeamJoinDetails sfTeamJoinDetailsValue;
    private SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetailsValue;
    private SfTeamUninviteDetails sfTeamUninviteDetailsValue;
    private SharedContentAddInviteesDetails sharedContentAddInviteesDetailsValue;
    private SharedContentAddLinkExpiryDetails sharedContentAddLinkExpiryDetailsValue;
    private SharedContentAddLinkPasswordDetails sharedContentAddLinkPasswordDetailsValue;
    private SharedContentAddMemberDetails sharedContentAddMemberDetailsValue;
    private SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetailsValue;
    private SharedContentChangeInviteeRoleDetails sharedContentChangeInviteeRoleDetailsValue;
    private SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetailsValue;
    private SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetailsValue;
    private SharedContentChangeLinkPasswordDetails sharedContentChangeLinkPasswordDetailsValue;
    private SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetailsValue;
    private SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetailsValue;
    private SharedContentClaimInvitationDetails sharedContentClaimInvitationDetailsValue;
    private SharedContentCopyDetails sharedContentCopyDetailsValue;
    private SharedContentDownloadDetails sharedContentDownloadDetailsValue;
    private SharedContentRelinquishMembershipDetails sharedContentRelinquishMembershipDetailsValue;
    private SharedContentRemoveInviteeDetails sharedContentRemoveInviteeDetailsValue;
    private SharedContentRemoveLinkExpiryDetails sharedContentRemoveLinkExpiryDetailsValue;
    private SharedContentRemoveLinkPasswordDetails sharedContentRemoveLinkPasswordDetailsValue;
    private SharedContentRemoveMemberDetails sharedContentRemoveMemberDetailsValue;
    private SharedContentRequestAccessDetails sharedContentRequestAccessDetailsValue;
    private SharedContentUnshareDetails sharedContentUnshareDetailsValue;
    private SharedContentViewDetails sharedContentViewDetailsValue;
    private SharedFolderChangeConfidentialityDetails sharedFolderChangeConfidentialityDetailsValue;
    private SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetailsValue;
    private SharedFolderChangeMemberManagementPolicyDetails sharedFolderChangeMemberManagementPolicyDetailsValue;
    private SharedFolderChangeMemberPolicyDetails sharedFolderChangeMemberPolicyDetailsValue;
    private SharedFolderCreateDetails sharedFolderCreateDetailsValue;
    private SharedFolderMountDetails sharedFolderMountDetailsValue;
    private SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetailsValue;
    private SharedFolderUnmountDetails sharedFolderUnmountDetailsValue;
    private SharedNoteOpenedDetails sharedNoteOpenedDetailsValue;
    private SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetailsValue;
    private SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetailsValue;
    private SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetailsValue;
    private ShmodelAppCreateDetails shmodelAppCreateDetailsValue;
    private ShmodelCreateDetails shmodelCreateDetailsValue;
    private ShmodelDisableDetails shmodelDisableDetailsValue;
    private ShmodelFbShareDetails shmodelFbShareDetailsValue;
    private ShmodelGroupShareDetails shmodelGroupShareDetailsValue;
    private ShmodelRemoveExpirationDetails shmodelRemoveExpirationDetailsValue;
    private ShmodelSetExpirationDetails shmodelSetExpirationDetailsValue;
    private ShmodelTeamCopyDetails shmodelTeamCopyDetailsValue;
    private ShmodelTeamDownloadDetails shmodelTeamDownloadDetailsValue;
    private ShmodelTeamShareDetails shmodelTeamShareDetailsValue;
    private ShmodelTeamViewDetails shmodelTeamViewDetailsValue;
    private ShmodelVisibilityPasswordDetails shmodelVisibilityPasswordDetailsValue;
    private ShmodelVisibilityPublicDetails shmodelVisibilityPublicDetailsValue;
    private ShmodelVisibilityTeamOnlyDetails shmodelVisibilityTeamOnlyDetailsValue;
    private SignInAsSessionEndDetails signInAsSessionEndDetailsValue;
    private SignInAsSessionStartDetails signInAsSessionStartDetailsValue;
    private SmartSyncChangePolicyDetails smartSyncChangePolicyDetailsValue;
    private SmartSyncCreateAdminPrivilegeReportDetails smartSyncCreateAdminPrivilegeReportDetailsValue;
    private SmartSyncNotOptOutDetails smartSyncNotOptOutDetailsValue;
    private SmartSyncOptOutDetails smartSyncOptOutDetailsValue;
    private SsoAddCertDetails ssoAddCertDetailsValue;
    private SsoAddLoginUrlDetails ssoAddLoginUrlDetailsValue;
    private SsoAddLogoutUrlDetails ssoAddLogoutUrlDetailsValue;
    private SsoChangeCertDetails ssoChangeCertDetailsValue;
    private SsoChangeLoginUrlDetails ssoChangeLoginUrlDetailsValue;
    private SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetailsValue;
    private SsoChangePolicyDetails ssoChangePolicyDetailsValue;
    private SsoChangeSamlIdentityModeDetails ssoChangeSamlIdentityModeDetailsValue;
    private SsoLoginFailDetails ssoLoginFailDetailsValue;
    private SsoRemoveCertDetails ssoRemoveCertDetailsValue;
    private SsoRemoveLoginUrlDetails ssoRemoveLoginUrlDetailsValue;
    private SsoRemoveLogoutUrlDetails ssoRemoveLogoutUrlDetailsValue;
    private TeamActivityCreateReportDetails teamActivityCreateReportDetailsValue;
    private TeamFolderChangeStatusDetails teamFolderChangeStatusDetailsValue;
    private TeamFolderCreateDetails teamFolderCreateDetailsValue;
    private TeamFolderDowngradeDetails teamFolderDowngradeDetailsValue;
    private TeamFolderPermanentlyDeleteDetails teamFolderPermanentlyDeleteDetailsValue;
    private TeamFolderRenameDetails teamFolderRenameDetailsValue;
    private TeamMergeFromDetails teamMergeFromDetailsValue;
    private TeamMergeToDetails teamMergeToDetailsValue;
    private TeamProfileAddLogoDetails teamProfileAddLogoDetailsValue;
    private TeamProfileChangeDefaultLanguageDetails teamProfileChangeDefaultLanguageDetailsValue;
    private TeamProfileChangeLogoDetails teamProfileChangeLogoDetailsValue;
    private TeamProfileChangeNameDetails teamProfileChangeNameDetailsValue;
    private TeamProfileRemoveLogoDetails teamProfileRemoveLogoDetailsValue;
    private TfaAddBackupPhoneDetails tfaAddBackupPhoneDetailsValue;
    private TfaAddSecurityKeyDetails tfaAddSecurityKeyDetailsValue;
    private TfaChangeBackupPhoneDetails tfaChangeBackupPhoneDetailsValue;
    private TfaChangePolicyDetails tfaChangePolicyDetailsValue;
    private TfaChangeStatusDetails tfaChangeStatusDetailsValue;
    private TfaRemoveBackupPhoneDetails tfaRemoveBackupPhoneDetailsValue;
    private TfaRemoveSecurityKeyDetails tfaRemoveSecurityKeyDetailsValue;
    private TfaResetDetails tfaResetDetailsValue;
    private TwoAccountChangePolicyDetails twoAccountChangePolicyDetailsValue;
    private WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetailsValue;
    private WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetailsValue;

    public enum Tag {
        MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS,
        MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS,
        MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS,
        MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS,
        PAPER_ADMIN_EXPORT_START_DETAILS,
        PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS,
        PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS,
        PAPER_EXTERNAL_VIEW_ALLOW_DETAILS,
        PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS,
        PAPER_EXTERNAL_VIEW_FORBID_DETAILS,
        SF_EXTERNAL_INVITE_WARN_DETAILS,
        TEAM_MERGE_FROM_DETAILS,
        TEAM_MERGE_TO_DETAILS,
        APP_LINK_TEAM_DETAILS,
        APP_LINK_USER_DETAILS,
        APP_UNLINK_TEAM_DETAILS,
        APP_UNLINK_USER_DETAILS,
        FILE_ADD_COMMENT_DETAILS,
        FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS,
        FILE_DELETE_COMMENT_DETAILS,
        FILE_LIKE_COMMENT_DETAILS,
        FILE_RESOLVE_COMMENT_DETAILS,
        FILE_UNLIKE_COMMENT_DETAILS,
        FILE_UNRESOLVE_COMMENT_DETAILS,
        DEVICE_CHANGE_IP_DESKTOP_DETAILS,
        DEVICE_CHANGE_IP_MOBILE_DETAILS,
        DEVICE_CHANGE_IP_WEB_DETAILS,
        DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS,
        DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS,
        DEVICE_LINK_FAIL_DETAILS,
        DEVICE_LINK_SUCCESS_DETAILS,
        DEVICE_MANAGEMENT_DISABLED_DETAILS,
        DEVICE_MANAGEMENT_ENABLED_DETAILS,
        DEVICE_UNLINK_DETAILS,
        EMM_REFRESH_AUTH_TOKEN_DETAILS,
        ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS,
        ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS,
        ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS,
        DISABLED_DOMAIN_INVITES_DETAILS,
        DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS,
        DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS,
        DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS,
        DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS,
        DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS,
        DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS,
        DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS,
        DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS,
        DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS,
        ENABLED_DOMAIN_INVITES_DETAILS,
        CREATE_FOLDER_DETAILS,
        FILE_ADD_DETAILS,
        FILE_COPY_DETAILS,
        FILE_DELETE_DETAILS,
        FILE_DOWNLOAD_DETAILS,
        FILE_EDIT_DETAILS,
        FILE_GET_COPY_REFERENCE_DETAILS,
        FILE_MOVE_DETAILS,
        FILE_PERMANENTLY_DELETE_DETAILS,
        FILE_PREVIEW_DETAILS,
        FILE_RENAME_DETAILS,
        FILE_RESTORE_DETAILS,
        FILE_REVERT_DETAILS,
        FILE_ROLLBACK_CHANGES_DETAILS,
        FILE_SAVE_COPY_REFERENCE_DETAILS,
        FILE_REQUEST_ADD_DEADLINE_DETAILS,
        FILE_REQUEST_CHANGE_FOLDER_DETAILS,
        FILE_REQUEST_CHANGE_TITLE_DETAILS,
        FILE_REQUEST_CLOSE_DETAILS,
        FILE_REQUEST_CREATE_DETAILS,
        FILE_REQUEST_RECEIVE_FILE_DETAILS,
        FILE_REQUEST_REMOVE_DEADLINE_DETAILS,
        FILE_REQUEST_SEND_DETAILS,
        GROUP_ADD_EXTERNAL_ID_DETAILS,
        GROUP_ADD_MEMBER_DETAILS,
        GROUP_CHANGE_EXTERNAL_ID_DETAILS,
        GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS,
        GROUP_CHANGE_MEMBER_ROLE_DETAILS,
        GROUP_CREATE_DETAILS,
        GROUP_DELETE_DETAILS,
        GROUP_MOVED_DETAILS,
        GROUP_REMOVE_EXTERNAL_ID_DETAILS,
        GROUP_REMOVE_MEMBER_DETAILS,
        GROUP_RENAME_DETAILS,
        EMM_LOGIN_SUCCESS_DETAILS,
        LOGOUT_DETAILS,
        PASSWORD_LOGIN_FAIL_DETAILS,
        PASSWORD_LOGIN_SUCCESS_DETAILS,
        RESELLER_SUPPORT_SESSION_END_DETAILS,
        RESELLER_SUPPORT_SESSION_START_DETAILS,
        SIGN_IN_AS_SESSION_END_DETAILS,
        SIGN_IN_AS_SESSION_START_DETAILS,
        SSO_LOGIN_FAIL_DETAILS,
        MEMBER_ADD_NAME_DETAILS,
        MEMBER_CHANGE_ADMIN_ROLE_DETAILS,
        MEMBER_CHANGE_EMAIL_DETAILS,
        MEMBER_CHANGE_NAME_DETAILS,
        MEMBER_CHANGE_STATUS_DETAILS,
        MEMBER_SUGGEST_DETAILS,
        PAPER_CONTENT_ADD_MEMBER_DETAILS,
        PAPER_CONTENT_ADD_TO_FOLDER_DETAILS,
        PAPER_CONTENT_ARCHIVE_DETAILS,
        PAPER_CONTENT_CREATE_DETAILS,
        PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS,
        PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS,
        PAPER_CONTENT_REMOVE_MEMBER_DETAILS,
        PAPER_CONTENT_RENAME_DETAILS,
        PAPER_CONTENT_RESTORE_DETAILS,
        PAPER_DOC_ADD_COMMENT_DETAILS,
        PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS,
        PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS,
        PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS,
        PAPER_DOC_DELETED_DETAILS,
        PAPER_DOC_DELETE_COMMENT_DETAILS,
        PAPER_DOC_DOWNLOAD_DETAILS,
        PAPER_DOC_EDIT_DETAILS,
        PAPER_DOC_EDIT_COMMENT_DETAILS,
        PAPER_DOC_FOLLOWED_DETAILS,
        PAPER_DOC_MENTION_DETAILS,
        PAPER_DOC_REQUEST_ACCESS_DETAILS,
        PAPER_DOC_RESOLVE_COMMENT_DETAILS,
        PAPER_DOC_REVERT_DETAILS,
        PAPER_DOC_SLACK_SHARE_DETAILS,
        PAPER_DOC_TEAM_INVITE_DETAILS,
        PAPER_DOC_TRASHED_DETAILS,
        PAPER_DOC_UNRESOLVE_COMMENT_DETAILS,
        PAPER_DOC_UNTRASHED_DETAILS,
        PAPER_DOC_VIEW_DETAILS,
        PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS,
        PAPER_FOLDER_DELETED_DETAILS,
        PAPER_FOLDER_FOLLOWED_DETAILS,
        PAPER_FOLDER_TEAM_INVITE_DETAILS,
        PASSWORD_CHANGE_DETAILS,
        PASSWORD_RESET_DETAILS,
        PASSWORD_RESET_ALL_DETAILS,
        EMM_CREATE_EXCEPTIONS_REPORT_DETAILS,
        EMM_CREATE_USAGE_REPORT_DETAILS,
        SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS,
        TEAM_ACTIVITY_CREATE_REPORT_DETAILS,
        COLLECTION_SHARE_DETAILS,
        NOTE_ACL_INVITE_ONLY_DETAILS,
        NOTE_ACL_LINK_DETAILS,
        NOTE_ACL_TEAM_LINK_DETAILS,
        NOTE_SHARED_DETAILS,
        NOTE_SHARE_RECEIVE_DETAILS,
        OPEN_NOTE_SHARED_DETAILS,
        SF_ADD_GROUP_DETAILS,
        SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS,
        SF_INVITE_GROUP_DETAILS,
        SF_NEST_DETAILS,
        SF_TEAM_DECLINE_DETAILS,
        SF_TEAM_GRANT_ACCESS_DETAILS,
        SF_TEAM_INVITE_DETAILS,
        SF_TEAM_INVITE_CHANGE_ROLE_DETAILS,
        SF_TEAM_JOIN_DETAILS,
        SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS,
        SF_TEAM_UNINVITE_DETAILS,
        SHARED_CONTENT_ADD_INVITEES_DETAILS,
        SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS,
        SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS,
        SHARED_CONTENT_ADD_MEMBER_DETAILS,
        SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS,
        SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS,
        SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS,
        SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS,
        SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS,
        SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS,
        SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS,
        SHARED_CONTENT_CLAIM_INVITATION_DETAILS,
        SHARED_CONTENT_COPY_DETAILS,
        SHARED_CONTENT_DOWNLOAD_DETAILS,
        SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS,
        SHARED_CONTENT_REMOVE_INVITEE_DETAILS,
        SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS,
        SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS,
        SHARED_CONTENT_REMOVE_MEMBER_DETAILS,
        SHARED_CONTENT_REQUEST_ACCESS_DETAILS,
        SHARED_CONTENT_UNSHARE_DETAILS,
        SHARED_CONTENT_VIEW_DETAILS,
        SHARED_FOLDER_CHANGE_CONFIDENTIALITY_DETAILS,
        SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS,
        SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY_DETAILS,
        SHARED_FOLDER_CHANGE_MEMBER_POLICY_DETAILS,
        SHARED_FOLDER_CREATE_DETAILS,
        SHARED_FOLDER_MOUNT_DETAILS,
        SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS,
        SHARED_FOLDER_UNMOUNT_DETAILS,
        SHARED_NOTE_OPENED_DETAILS,
        SHMODEL_APP_CREATE_DETAILS,
        SHMODEL_CREATE_DETAILS,
        SHMODEL_DISABLE_DETAILS,
        SHMODEL_FB_SHARE_DETAILS,
        SHMODEL_GROUP_SHARE_DETAILS,
        SHMODEL_REMOVE_EXPIRATION_DETAILS,
        SHMODEL_SET_EXPIRATION_DETAILS,
        SHMODEL_TEAM_COPY_DETAILS,
        SHMODEL_TEAM_DOWNLOAD_DETAILS,
        SHMODEL_TEAM_SHARE_DETAILS,
        SHMODEL_TEAM_VIEW_DETAILS,
        SHMODEL_VISIBILITY_PASSWORD_DETAILS,
        SHMODEL_VISIBILITY_PUBLIC_DETAILS,
        SHMODEL_VISIBILITY_TEAM_ONLY_DETAILS,
        SSO_ADD_CERT_DETAILS,
        SSO_ADD_LOGIN_URL_DETAILS,
        SSO_ADD_LOGOUT_URL_DETAILS,
        SSO_CHANGE_CERT_DETAILS,
        SSO_CHANGE_LOGIN_URL_DETAILS,
        SSO_CHANGE_LOGOUT_URL_DETAILS,
        SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS,
        SSO_REMOVE_CERT_DETAILS,
        SSO_REMOVE_LOGIN_URL_DETAILS,
        SSO_REMOVE_LOGOUT_URL_DETAILS,
        TEAM_FOLDER_CHANGE_STATUS_DETAILS,
        TEAM_FOLDER_CREATE_DETAILS,
        TEAM_FOLDER_DOWNGRADE_DETAILS,
        TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS,
        TEAM_FOLDER_RENAME_DETAILS,
        ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS,
        ALLOW_DOWNLOAD_DISABLED_DETAILS,
        ALLOW_DOWNLOAD_ENABLED_DETAILS,
        DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS,
        DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS,
        DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS,
        DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS,
        DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS,
        DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS,
        EMM_ADD_EXCEPTION_DETAILS,
        EMM_CHANGE_POLICY_DETAILS,
        EMM_REMOVE_EXCEPTION_DETAILS,
        EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS,
        FILE_COMMENTS_CHANGE_POLICY_DETAILS,
        FILE_REQUESTS_CHANGE_POLICY_DETAILS,
        FILE_REQUESTS_EMAILS_ENABLED_DETAILS,
        FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS,
        GOOGLE_SSO_CHANGE_POLICY_DETAILS,
        GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS,
        MEMBER_REQUESTS_CHANGE_POLICY_DETAILS,
        MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS,
        MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS,
        MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS,
        MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS,
        MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS,
        NETWORK_CONTROL_CHANGE_POLICY_DETAILS,
        PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS,
        PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS,
        PAPER_CHANGE_MEMBER_POLICY_DETAILS,
        PAPER_CHANGE_POLICY_DETAILS,
        PERMANENT_DELETE_CHANGE_POLICY_DETAILS,
        SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS,
        SHARING_CHANGE_LINK_POLICY_DETAILS,
        SHARING_CHANGE_MEMBER_POLICY_DETAILS,
        SMART_SYNC_CHANGE_POLICY_DETAILS,
        SMART_SYNC_NOT_OPT_OUT_DETAILS,
        SMART_SYNC_OPT_OUT_DETAILS,
        SSO_CHANGE_POLICY_DETAILS,
        TFA_CHANGE_POLICY_DETAILS,
        TWO_ACCOUNT_CHANGE_POLICY_DETAILS,
        WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS,
        WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS,
        TEAM_PROFILE_ADD_LOGO_DETAILS,
        TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS,
        TEAM_PROFILE_CHANGE_LOGO_DETAILS,
        TEAM_PROFILE_CHANGE_NAME_DETAILS,
        TEAM_PROFILE_REMOVE_LOGO_DETAILS,
        TFA_ADD_BACKUP_PHONE_DETAILS,
        TFA_ADD_SECURITY_KEY_DETAILS,
        TFA_CHANGE_BACKUP_PHONE_DETAILS,
        TFA_CHANGE_STATUS_DETAILS,
        TFA_REMOVE_BACKUP_PHONE_DETAILS,
        TFA_REMOVE_SECURITY_KEY_DETAILS,
        TFA_RESET_DETAILS,
        MISSING_DETAILS,
        OTHER
    }

    private EventDetails() {
    }

    private EventDetails withTag(Tag tag) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        return eventDetails;
    }

    private EventDetails withTagAndMemberChangeMembershipTypeDetails(Tag tag, MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberChangeMembershipTypeDetailsValue = memberChangeMembershipTypeDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberPermanentlyDeleteAccountContentsDetails(Tag tag, MemberPermanentlyDeleteAccountContentsDetails memberPermanentlyDeleteAccountContentsDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberPermanentlyDeleteAccountContentsDetailsValue = memberPermanentlyDeleteAccountContentsDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberSpaceLimitsChangeStatusDetails(Tag tag, MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberSpaceLimitsChangeStatusDetailsValue = memberSpaceLimitsChangeStatusDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberTransferAccountContentsDetails(Tag tag, MemberTransferAccountContentsDetails memberTransferAccountContentsDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberTransferAccountContentsDetailsValue = memberTransferAccountContentsDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperAdminExportStartDetails(Tag tag, PaperAdminExportStartDetails paperAdminExportStartDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperAdminExportStartDetailsValue = paperAdminExportStartDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperEnabledUsersGroupAdditionDetails(Tag tag, PaperEnabledUsersGroupAdditionDetails paperEnabledUsersGroupAdditionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperEnabledUsersGroupAdditionDetailsValue = paperEnabledUsersGroupAdditionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperEnabledUsersGroupRemovalDetails(Tag tag, PaperEnabledUsersGroupRemovalDetails paperEnabledUsersGroupRemovalDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperEnabledUsersGroupRemovalDetailsValue = paperEnabledUsersGroupRemovalDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperExternalViewAllowDetails(Tag tag, PaperExternalViewAllowDetails paperExternalViewAllowDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperExternalViewAllowDetailsValue = paperExternalViewAllowDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperExternalViewDefaultTeamDetails(Tag tag, PaperExternalViewDefaultTeamDetails paperExternalViewDefaultTeamDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperExternalViewDefaultTeamDetailsValue = paperExternalViewDefaultTeamDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperExternalViewForbidDetails(Tag tag, PaperExternalViewForbidDetails paperExternalViewForbidDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperExternalViewForbidDetailsValue = paperExternalViewForbidDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfExternalInviteWarnDetails(Tag tag, SfExternalInviteWarnDetails sfExternalInviteWarnDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfExternalInviteWarnDetailsValue = sfExternalInviteWarnDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamMergeFromDetails(Tag tag, TeamMergeFromDetails teamMergeFromDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamMergeFromDetailsValue = teamMergeFromDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamMergeToDetails(Tag tag, TeamMergeToDetails teamMergeToDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamMergeToDetailsValue = teamMergeToDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAppLinkTeamDetails(Tag tag, AppLinkTeamDetails appLinkTeamDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.appLinkTeamDetailsValue = appLinkTeamDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAppLinkUserDetails(Tag tag, AppLinkUserDetails appLinkUserDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.appLinkUserDetailsValue = appLinkUserDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAppUnlinkTeamDetails(Tag tag, AppUnlinkTeamDetails appUnlinkTeamDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.appUnlinkTeamDetailsValue = appUnlinkTeamDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAppUnlinkUserDetails(Tag tag, AppUnlinkUserDetails appUnlinkUserDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.appUnlinkUserDetailsValue = appUnlinkUserDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileAddCommentDetails(Tag tag, FileAddCommentDetails fileAddCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileAddCommentDetailsValue = fileAddCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileChangeCommentSubscriptionDetails(Tag tag, FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileChangeCommentSubscriptionDetailsValue = fileChangeCommentSubscriptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileDeleteCommentDetails(Tag tag, FileDeleteCommentDetails fileDeleteCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileDeleteCommentDetailsValue = fileDeleteCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileLikeCommentDetails(Tag tag, FileLikeCommentDetails fileLikeCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileLikeCommentDetailsValue = fileLikeCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileResolveCommentDetails(Tag tag, FileResolveCommentDetails fileResolveCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileResolveCommentDetailsValue = fileResolveCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileUnlikeCommentDetails(Tag tag, FileUnlikeCommentDetails fileUnlikeCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileUnlikeCommentDetailsValue = fileUnlikeCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileUnresolveCommentDetails(Tag tag, FileUnresolveCommentDetails fileUnresolveCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileUnresolveCommentDetailsValue = fileUnresolveCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceChangeIpDesktopDetails(Tag tag, DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceChangeIpDesktopDetailsValue = deviceChangeIpDesktopDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceChangeIpMobileDetails(Tag tag, DeviceChangeIpMobileDetails deviceChangeIpMobileDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceChangeIpMobileDetailsValue = deviceChangeIpMobileDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceChangeIpWebDetails(Tag tag, DeviceChangeIpWebDetails deviceChangeIpWebDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceChangeIpWebDetailsValue = deviceChangeIpWebDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceDeleteOnUnlinkFailDetails(Tag tag, DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceDeleteOnUnlinkFailDetailsValue = deviceDeleteOnUnlinkFailDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceDeleteOnUnlinkSuccessDetails(Tag tag, DeviceDeleteOnUnlinkSuccessDetails deviceDeleteOnUnlinkSuccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceDeleteOnUnlinkSuccessDetailsValue = deviceDeleteOnUnlinkSuccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceLinkFailDetails(Tag tag, DeviceLinkFailDetails deviceLinkFailDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceLinkFailDetailsValue = deviceLinkFailDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceLinkSuccessDetails(Tag tag, DeviceLinkSuccessDetails deviceLinkSuccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceLinkSuccessDetailsValue = deviceLinkSuccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceManagementDisabledDetails(Tag tag, DeviceManagementDisabledDetails deviceManagementDisabledDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceManagementDisabledDetailsValue = deviceManagementDisabledDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceManagementEnabledDetails(Tag tag, DeviceManagementEnabledDetails deviceManagementEnabledDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceManagementEnabledDetailsValue = deviceManagementEnabledDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceUnlinkDetails(Tag tag, DeviceUnlinkDetails deviceUnlinkDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceUnlinkDetailsValue = deviceUnlinkDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmRefreshAuthTokenDetails(Tag tag, EmmRefreshAuthTokenDetails emmRefreshAuthTokenDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmRefreshAuthTokenDetailsValue = emmRefreshAuthTokenDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAccountCaptureChangeAvailabilityDetails(Tag tag, AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.accountCaptureChangeAvailabilityDetailsValue = accountCaptureChangeAvailabilityDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAccountCaptureMigrateAccountDetails(Tag tag, AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.accountCaptureMigrateAccountDetailsValue = accountCaptureMigrateAccountDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAccountCaptureRelinquishAccountDetails(Tag tag, AccountCaptureRelinquishAccountDetails accountCaptureRelinquishAccountDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.accountCaptureRelinquishAccountDetailsValue = accountCaptureRelinquishAccountDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDisabledDomainInvitesDetails(Tag tag, DisabledDomainInvitesDetails disabledDomainInvitesDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.disabledDomainInvitesDetailsValue = disabledDomainInvitesDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainInvitesApproveRequestToJoinTeamDetails(Tag tag, DomainInvitesApproveRequestToJoinTeamDetails domainInvitesApproveRequestToJoinTeamDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainInvitesApproveRequestToJoinTeamDetailsValue = domainInvitesApproveRequestToJoinTeamDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainInvitesDeclineRequestToJoinTeamDetails(Tag tag, DomainInvitesDeclineRequestToJoinTeamDetails domainInvitesDeclineRequestToJoinTeamDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainInvitesDeclineRequestToJoinTeamDetailsValue = domainInvitesDeclineRequestToJoinTeamDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainInvitesEmailExistingUsersDetails(Tag tag, DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainInvitesEmailExistingUsersDetailsValue = domainInvitesEmailExistingUsersDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainInvitesRequestToJoinTeamDetails(Tag tag, DomainInvitesRequestToJoinTeamDetails domainInvitesRequestToJoinTeamDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainInvitesRequestToJoinTeamDetailsValue = domainInvitesRequestToJoinTeamDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainInvitesSetInviteNewUserPrefToNoDetails(Tag tag, DomainInvitesSetInviteNewUserPrefToNoDetails domainInvitesSetInviteNewUserPrefToNoDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainInvitesSetInviteNewUserPrefToNoDetailsValue = domainInvitesSetInviteNewUserPrefToNoDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainInvitesSetInviteNewUserPrefToYesDetails(Tag tag, DomainInvitesSetInviteNewUserPrefToYesDetails domainInvitesSetInviteNewUserPrefToYesDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainInvitesSetInviteNewUserPrefToYesDetailsValue = domainInvitesSetInviteNewUserPrefToYesDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainVerificationAddDomainFailDetails(Tag tag, DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainVerificationAddDomainFailDetailsValue = domainVerificationAddDomainFailDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainVerificationAddDomainSuccessDetails(Tag tag, DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainVerificationAddDomainSuccessDetailsValue = domainVerificationAddDomainSuccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDomainVerificationRemoveDomainDetails(Tag tag, DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.domainVerificationRemoveDomainDetailsValue = domainVerificationRemoveDomainDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEnabledDomainInvitesDetails(Tag tag, EnabledDomainInvitesDetails enabledDomainInvitesDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.enabledDomainInvitesDetailsValue = enabledDomainInvitesDetails;
        return eventDetails;
    }

    private EventDetails withTagAndCreateFolderDetails(Tag tag, CreateFolderDetails createFolderDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.createFolderDetailsValue = createFolderDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileAddDetails(Tag tag, FileAddDetails fileAddDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileAddDetailsValue = fileAddDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileCopyDetails(Tag tag, FileCopyDetails fileCopyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileCopyDetailsValue = fileCopyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileDeleteDetails(Tag tag, FileDeleteDetails fileDeleteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileDeleteDetailsValue = fileDeleteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileDownloadDetails(Tag tag, FileDownloadDetails fileDownloadDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileDownloadDetailsValue = fileDownloadDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileEditDetails(Tag tag, FileEditDetails fileEditDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileEditDetailsValue = fileEditDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileGetCopyReferenceDetails(Tag tag, FileGetCopyReferenceDetails fileGetCopyReferenceDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileGetCopyReferenceDetailsValue = fileGetCopyReferenceDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileMoveDetails(Tag tag, FileMoveDetails fileMoveDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileMoveDetailsValue = fileMoveDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFilePermanentlyDeleteDetails(Tag tag, FilePermanentlyDeleteDetails filePermanentlyDeleteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.filePermanentlyDeleteDetailsValue = filePermanentlyDeleteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFilePreviewDetails(Tag tag, FilePreviewDetails filePreviewDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.filePreviewDetailsValue = filePreviewDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRenameDetails(Tag tag, FileRenameDetails fileRenameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRenameDetailsValue = fileRenameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRestoreDetails(Tag tag, FileRestoreDetails fileRestoreDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRestoreDetailsValue = fileRestoreDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRevertDetails(Tag tag, FileRevertDetails fileRevertDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRevertDetailsValue = fileRevertDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRollbackChangesDetails(Tag tag, FileRollbackChangesDetails fileRollbackChangesDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRollbackChangesDetailsValue = fileRollbackChangesDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileSaveCopyReferenceDetails(Tag tag, FileSaveCopyReferenceDetails fileSaveCopyReferenceDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileSaveCopyReferenceDetailsValue = fileSaveCopyReferenceDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestAddDeadlineDetails(Tag tag, FileRequestAddDeadlineDetails fileRequestAddDeadlineDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestAddDeadlineDetailsValue = fileRequestAddDeadlineDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestChangeFolderDetails(Tag tag, FileRequestChangeFolderDetails fileRequestChangeFolderDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestChangeFolderDetailsValue = fileRequestChangeFolderDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestChangeTitleDetails(Tag tag, FileRequestChangeTitleDetails fileRequestChangeTitleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestChangeTitleDetailsValue = fileRequestChangeTitleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestCloseDetails(Tag tag, FileRequestCloseDetails fileRequestCloseDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestCloseDetailsValue = fileRequestCloseDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestCreateDetails(Tag tag, FileRequestCreateDetails fileRequestCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestCreateDetailsValue = fileRequestCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestReceiveFileDetails(Tag tag, FileRequestReceiveFileDetails fileRequestReceiveFileDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestReceiveFileDetailsValue = fileRequestReceiveFileDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestRemoveDeadlineDetails(Tag tag, FileRequestRemoveDeadlineDetails fileRequestRemoveDeadlineDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestRemoveDeadlineDetailsValue = fileRequestRemoveDeadlineDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestSendDetails(Tag tag, FileRequestSendDetails fileRequestSendDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestSendDetailsValue = fileRequestSendDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupAddExternalIdDetails(Tag tag, GroupAddExternalIdDetails groupAddExternalIdDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupAddExternalIdDetailsValue = groupAddExternalIdDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupAddMemberDetails(Tag tag, GroupAddMemberDetails groupAddMemberDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupAddMemberDetailsValue = groupAddMemberDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupChangeExternalIdDetails(Tag tag, GroupChangeExternalIdDetails groupChangeExternalIdDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupChangeExternalIdDetailsValue = groupChangeExternalIdDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupChangeManagementTypeDetails(Tag tag, GroupChangeManagementTypeDetails groupChangeManagementTypeDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupChangeManagementTypeDetailsValue = groupChangeManagementTypeDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupChangeMemberRoleDetails(Tag tag, GroupChangeMemberRoleDetails groupChangeMemberRoleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupChangeMemberRoleDetailsValue = groupChangeMemberRoleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupCreateDetails(Tag tag, GroupCreateDetails groupCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupCreateDetailsValue = groupCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupDeleteDetails(Tag tag, GroupDeleteDetails groupDeleteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupDeleteDetailsValue = groupDeleteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupMovedDetails(Tag tag, GroupMovedDetails groupMovedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupMovedDetailsValue = groupMovedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupRemoveExternalIdDetails(Tag tag, GroupRemoveExternalIdDetails groupRemoveExternalIdDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupRemoveExternalIdDetailsValue = groupRemoveExternalIdDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupRemoveMemberDetails(Tag tag, GroupRemoveMemberDetails groupRemoveMemberDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupRemoveMemberDetailsValue = groupRemoveMemberDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupRenameDetails(Tag tag, GroupRenameDetails groupRenameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupRenameDetailsValue = groupRenameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmLoginSuccessDetails(Tag tag, EmmLoginSuccessDetails emmLoginSuccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmLoginSuccessDetailsValue = emmLoginSuccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndLogoutDetails(Tag tag, LogoutDetails logoutDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.logoutDetailsValue = logoutDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPasswordLoginFailDetails(Tag tag, PasswordLoginFailDetails passwordLoginFailDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.passwordLoginFailDetailsValue = passwordLoginFailDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPasswordLoginSuccessDetails(Tag tag, PasswordLoginSuccessDetails passwordLoginSuccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.passwordLoginSuccessDetailsValue = passwordLoginSuccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndResellerSupportSessionEndDetails(Tag tag, ResellerSupportSessionEndDetails resellerSupportSessionEndDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.resellerSupportSessionEndDetailsValue = resellerSupportSessionEndDetails;
        return eventDetails;
    }

    private EventDetails withTagAndResellerSupportSessionStartDetails(Tag tag, ResellerSupportSessionStartDetails resellerSupportSessionStartDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.resellerSupportSessionStartDetailsValue = resellerSupportSessionStartDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSignInAsSessionEndDetails(Tag tag, SignInAsSessionEndDetails signInAsSessionEndDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.signInAsSessionEndDetailsValue = signInAsSessionEndDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSignInAsSessionStartDetails(Tag tag, SignInAsSessionStartDetails signInAsSessionStartDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.signInAsSessionStartDetailsValue = signInAsSessionStartDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoLoginFailDetails(Tag tag, SsoLoginFailDetails ssoLoginFailDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoLoginFailDetailsValue = ssoLoginFailDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberAddNameDetails(Tag tag, MemberAddNameDetails memberAddNameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberAddNameDetailsValue = memberAddNameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberChangeAdminRoleDetails(Tag tag, MemberChangeAdminRoleDetails memberChangeAdminRoleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberChangeAdminRoleDetailsValue = memberChangeAdminRoleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberChangeEmailDetails(Tag tag, MemberChangeEmailDetails memberChangeEmailDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberChangeEmailDetailsValue = memberChangeEmailDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberChangeNameDetails(Tag tag, MemberChangeNameDetails memberChangeNameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberChangeNameDetailsValue = memberChangeNameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberChangeStatusDetails(Tag tag, MemberChangeStatusDetails memberChangeStatusDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberChangeStatusDetailsValue = memberChangeStatusDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberSuggestDetails(Tag tag, MemberSuggestDetails memberSuggestDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberSuggestDetailsValue = memberSuggestDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentAddMemberDetails(Tag tag, PaperContentAddMemberDetails paperContentAddMemberDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentAddMemberDetailsValue = paperContentAddMemberDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentAddToFolderDetails(Tag tag, PaperContentAddToFolderDetails paperContentAddToFolderDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentAddToFolderDetailsValue = paperContentAddToFolderDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentArchiveDetails(Tag tag, PaperContentArchiveDetails paperContentArchiveDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentArchiveDetailsValue = paperContentArchiveDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentCreateDetails(Tag tag, PaperContentCreateDetails paperContentCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentCreateDetailsValue = paperContentCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentPermanentlyDeleteDetails(Tag tag, PaperContentPermanentlyDeleteDetails paperContentPermanentlyDeleteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentPermanentlyDeleteDetailsValue = paperContentPermanentlyDeleteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentRemoveFromFolderDetails(Tag tag, PaperContentRemoveFromFolderDetails paperContentRemoveFromFolderDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentRemoveFromFolderDetailsValue = paperContentRemoveFromFolderDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentRemoveMemberDetails(Tag tag, PaperContentRemoveMemberDetails paperContentRemoveMemberDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentRemoveMemberDetailsValue = paperContentRemoveMemberDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentRenameDetails(Tag tag, PaperContentRenameDetails paperContentRenameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentRenameDetailsValue = paperContentRenameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperContentRestoreDetails(Tag tag, PaperContentRestoreDetails paperContentRestoreDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperContentRestoreDetailsValue = paperContentRestoreDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocAddCommentDetails(Tag tag, PaperDocAddCommentDetails paperDocAddCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocAddCommentDetailsValue = paperDocAddCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocChangeMemberRoleDetails(Tag tag, PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocChangeMemberRoleDetailsValue = paperDocChangeMemberRoleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocChangeSharingPolicyDetails(Tag tag, PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocChangeSharingPolicyDetailsValue = paperDocChangeSharingPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocChangeSubscriptionDetails(Tag tag, PaperDocChangeSubscriptionDetails paperDocChangeSubscriptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocChangeSubscriptionDetailsValue = paperDocChangeSubscriptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocDeletedDetails(Tag tag, PaperDocDeletedDetails paperDocDeletedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocDeletedDetailsValue = paperDocDeletedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocDeleteCommentDetails(Tag tag, PaperDocDeleteCommentDetails paperDocDeleteCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocDeleteCommentDetailsValue = paperDocDeleteCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocDownloadDetails(Tag tag, PaperDocDownloadDetails paperDocDownloadDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocDownloadDetailsValue = paperDocDownloadDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocEditDetails(Tag tag, PaperDocEditDetails paperDocEditDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocEditDetailsValue = paperDocEditDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocEditCommentDetails(Tag tag, PaperDocEditCommentDetails paperDocEditCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocEditCommentDetailsValue = paperDocEditCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocFollowedDetails(Tag tag, PaperDocFollowedDetails paperDocFollowedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocFollowedDetailsValue = paperDocFollowedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocMentionDetails(Tag tag, PaperDocMentionDetails paperDocMentionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocMentionDetailsValue = paperDocMentionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocRequestAccessDetails(Tag tag, PaperDocRequestAccessDetails paperDocRequestAccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocRequestAccessDetailsValue = paperDocRequestAccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocResolveCommentDetails(Tag tag, PaperDocResolveCommentDetails paperDocResolveCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocResolveCommentDetailsValue = paperDocResolveCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocRevertDetails(Tag tag, PaperDocRevertDetails paperDocRevertDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocRevertDetailsValue = paperDocRevertDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocSlackShareDetails(Tag tag, PaperDocSlackShareDetails paperDocSlackShareDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocSlackShareDetailsValue = paperDocSlackShareDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocTeamInviteDetails(Tag tag, PaperDocTeamInviteDetails paperDocTeamInviteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocTeamInviteDetailsValue = paperDocTeamInviteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocTrashedDetails(Tag tag, PaperDocTrashedDetails paperDocTrashedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocTrashedDetailsValue = paperDocTrashedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocUnresolveCommentDetails(Tag tag, PaperDocUnresolveCommentDetails paperDocUnresolveCommentDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocUnresolveCommentDetailsValue = paperDocUnresolveCommentDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocUntrashedDetails(Tag tag, PaperDocUntrashedDetails paperDocUntrashedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocUntrashedDetailsValue = paperDocUntrashedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperDocViewDetails(Tag tag, PaperDocViewDetails paperDocViewDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperDocViewDetailsValue = paperDocViewDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperFolderChangeSubscriptionDetails(Tag tag, PaperFolderChangeSubscriptionDetails paperFolderChangeSubscriptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperFolderChangeSubscriptionDetailsValue = paperFolderChangeSubscriptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperFolderDeletedDetails(Tag tag, PaperFolderDeletedDetails paperFolderDeletedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperFolderDeletedDetailsValue = paperFolderDeletedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperFolderFollowedDetails(Tag tag, PaperFolderFollowedDetails paperFolderFollowedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperFolderFollowedDetailsValue = paperFolderFollowedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperFolderTeamInviteDetails(Tag tag, PaperFolderTeamInviteDetails paperFolderTeamInviteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperFolderTeamInviteDetailsValue = paperFolderTeamInviteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPasswordChangeDetails(Tag tag, PasswordChangeDetails passwordChangeDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.passwordChangeDetailsValue = passwordChangeDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPasswordResetDetails(Tag tag, PasswordResetDetails passwordResetDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.passwordResetDetailsValue = passwordResetDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPasswordResetAllDetails(Tag tag, PasswordResetAllDetails passwordResetAllDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.passwordResetAllDetailsValue = passwordResetAllDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmCreateExceptionsReportDetails(Tag tag, EmmCreateExceptionsReportDetails emmCreateExceptionsReportDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmCreateExceptionsReportDetailsValue = emmCreateExceptionsReportDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmCreateUsageReportDetails(Tag tag, EmmCreateUsageReportDetails emmCreateUsageReportDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmCreateUsageReportDetailsValue = emmCreateUsageReportDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSmartSyncCreateAdminPrivilegeReportDetails(Tag tag, SmartSyncCreateAdminPrivilegeReportDetails smartSyncCreateAdminPrivilegeReportDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.smartSyncCreateAdminPrivilegeReportDetailsValue = smartSyncCreateAdminPrivilegeReportDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamActivityCreateReportDetails(Tag tag, TeamActivityCreateReportDetails teamActivityCreateReportDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamActivityCreateReportDetailsValue = teamActivityCreateReportDetails;
        return eventDetails;
    }

    private EventDetails withTagAndCollectionShareDetails(Tag tag, CollectionShareDetails collectionShareDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.collectionShareDetailsValue = collectionShareDetails;
        return eventDetails;
    }

    private EventDetails withTagAndNoteAclInviteOnlyDetails(Tag tag, NoteAclInviteOnlyDetails noteAclInviteOnlyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.noteAclInviteOnlyDetailsValue = noteAclInviteOnlyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndNoteAclLinkDetails(Tag tag, NoteAclLinkDetails noteAclLinkDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.noteAclLinkDetailsValue = noteAclLinkDetails;
        return eventDetails;
    }

    private EventDetails withTagAndNoteAclTeamLinkDetails(Tag tag, NoteAclTeamLinkDetails noteAclTeamLinkDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.noteAclTeamLinkDetailsValue = noteAclTeamLinkDetails;
        return eventDetails;
    }

    private EventDetails withTagAndNoteSharedDetails(Tag tag, NoteSharedDetails noteSharedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.noteSharedDetailsValue = noteSharedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndNoteShareReceiveDetails(Tag tag, NoteShareReceiveDetails noteShareReceiveDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.noteShareReceiveDetailsValue = noteShareReceiveDetails;
        return eventDetails;
    }

    private EventDetails withTagAndOpenNoteSharedDetails(Tag tag, OpenNoteSharedDetails openNoteSharedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.openNoteSharedDetailsValue = openNoteSharedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfAddGroupDetails(Tag tag, SfAddGroupDetails sfAddGroupDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfAddGroupDetailsValue = sfAddGroupDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfAllowNonMembersToViewSharedLinksDetails(Tag tag, SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfAllowNonMembersToViewSharedLinksDetailsValue = sfAllowNonMembersToViewSharedLinksDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfInviteGroupDetails(Tag tag, SfInviteGroupDetails sfInviteGroupDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfInviteGroupDetailsValue = sfInviteGroupDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfNestDetails(Tag tag, SfNestDetails sfNestDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfNestDetailsValue = sfNestDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamDeclineDetails(Tag tag, SfTeamDeclineDetails sfTeamDeclineDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamDeclineDetailsValue = sfTeamDeclineDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamGrantAccessDetails(Tag tag, SfTeamGrantAccessDetails sfTeamGrantAccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamGrantAccessDetailsValue = sfTeamGrantAccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamInviteDetails(Tag tag, SfTeamInviteDetails sfTeamInviteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamInviteDetailsValue = sfTeamInviteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamInviteChangeRoleDetails(Tag tag, SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamInviteChangeRoleDetailsValue = sfTeamInviteChangeRoleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamJoinDetails(Tag tag, SfTeamJoinDetails sfTeamJoinDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamJoinDetailsValue = sfTeamJoinDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamJoinFromOobLinkDetails(Tag tag, SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamJoinFromOobLinkDetailsValue = sfTeamJoinFromOobLinkDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSfTeamUninviteDetails(Tag tag, SfTeamUninviteDetails sfTeamUninviteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sfTeamUninviteDetailsValue = sfTeamUninviteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentAddInviteesDetails(Tag tag, SharedContentAddInviteesDetails sharedContentAddInviteesDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentAddInviteesDetailsValue = sharedContentAddInviteesDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentAddLinkExpiryDetails(Tag tag, SharedContentAddLinkExpiryDetails sharedContentAddLinkExpiryDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentAddLinkExpiryDetailsValue = sharedContentAddLinkExpiryDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentAddLinkPasswordDetails(Tag tag, SharedContentAddLinkPasswordDetails sharedContentAddLinkPasswordDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentAddLinkPasswordDetailsValue = sharedContentAddLinkPasswordDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentAddMemberDetails(Tag tag, SharedContentAddMemberDetails sharedContentAddMemberDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentAddMemberDetailsValue = sharedContentAddMemberDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeDownloadsPolicyDetails(Tag tag, SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeDownloadsPolicyDetailsValue = sharedContentChangeDownloadsPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeInviteeRoleDetails(Tag tag, SharedContentChangeInviteeRoleDetails sharedContentChangeInviteeRoleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeInviteeRoleDetailsValue = sharedContentChangeInviteeRoleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeLinkAudienceDetails(Tag tag, SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeLinkAudienceDetailsValue = sharedContentChangeLinkAudienceDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeLinkExpiryDetails(Tag tag, SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeLinkExpiryDetailsValue = sharedContentChangeLinkExpiryDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeLinkPasswordDetails(Tag tag, SharedContentChangeLinkPasswordDetails sharedContentChangeLinkPasswordDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeLinkPasswordDetailsValue = sharedContentChangeLinkPasswordDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeMemberRoleDetails(Tag tag, SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeMemberRoleDetailsValue = sharedContentChangeMemberRoleDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentChangeViewerInfoPolicyDetails(Tag tag, SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentChangeViewerInfoPolicyDetailsValue = sharedContentChangeViewerInfoPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentClaimInvitationDetails(Tag tag, SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentClaimInvitationDetailsValue = sharedContentClaimInvitationDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentCopyDetails(Tag tag, SharedContentCopyDetails sharedContentCopyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentCopyDetailsValue = sharedContentCopyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentDownloadDetails(Tag tag, SharedContentDownloadDetails sharedContentDownloadDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentDownloadDetailsValue = sharedContentDownloadDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentRelinquishMembershipDetails(Tag tag, SharedContentRelinquishMembershipDetails sharedContentRelinquishMembershipDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentRelinquishMembershipDetailsValue = sharedContentRelinquishMembershipDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentRemoveInviteeDetails(Tag tag, SharedContentRemoveInviteeDetails sharedContentRemoveInviteeDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentRemoveInviteeDetailsValue = sharedContentRemoveInviteeDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentRemoveLinkExpiryDetails(Tag tag, SharedContentRemoveLinkExpiryDetails sharedContentRemoveLinkExpiryDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentRemoveLinkExpiryDetailsValue = sharedContentRemoveLinkExpiryDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentRemoveLinkPasswordDetails(Tag tag, SharedContentRemoveLinkPasswordDetails sharedContentRemoveLinkPasswordDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentRemoveLinkPasswordDetailsValue = sharedContentRemoveLinkPasswordDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentRemoveMemberDetails(Tag tag, SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentRemoveMemberDetailsValue = sharedContentRemoveMemberDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentRequestAccessDetails(Tag tag, SharedContentRequestAccessDetails sharedContentRequestAccessDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentRequestAccessDetailsValue = sharedContentRequestAccessDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentUnshareDetails(Tag tag, SharedContentUnshareDetails sharedContentUnshareDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentUnshareDetailsValue = sharedContentUnshareDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedContentViewDetails(Tag tag, SharedContentViewDetails sharedContentViewDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedContentViewDetailsValue = sharedContentViewDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderChangeConfidentialityDetails(Tag tag, SharedFolderChangeConfidentialityDetails sharedFolderChangeConfidentialityDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderChangeConfidentialityDetailsValue = sharedFolderChangeConfidentialityDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderChangeLinkPolicyDetails(Tag tag, SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderChangeLinkPolicyDetailsValue = sharedFolderChangeLinkPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderChangeMemberManagementPolicyDetails(Tag tag, SharedFolderChangeMemberManagementPolicyDetails sharedFolderChangeMemberManagementPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderChangeMemberManagementPolicyDetailsValue = sharedFolderChangeMemberManagementPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderChangeMemberPolicyDetails(Tag tag, SharedFolderChangeMemberPolicyDetails sharedFolderChangeMemberPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderChangeMemberPolicyDetailsValue = sharedFolderChangeMemberPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderCreateDetails(Tag tag, SharedFolderCreateDetails sharedFolderCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderCreateDetailsValue = sharedFolderCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderMountDetails(Tag tag, SharedFolderMountDetails sharedFolderMountDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderMountDetailsValue = sharedFolderMountDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderTransferOwnershipDetails(Tag tag, SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderTransferOwnershipDetailsValue = sharedFolderTransferOwnershipDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedFolderUnmountDetails(Tag tag, SharedFolderUnmountDetails sharedFolderUnmountDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedFolderUnmountDetailsValue = sharedFolderUnmountDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharedNoteOpenedDetails(Tag tag, SharedNoteOpenedDetails sharedNoteOpenedDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharedNoteOpenedDetailsValue = sharedNoteOpenedDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelAppCreateDetails(Tag tag, ShmodelAppCreateDetails shmodelAppCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelAppCreateDetailsValue = shmodelAppCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelCreateDetails(Tag tag, ShmodelCreateDetails shmodelCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelCreateDetailsValue = shmodelCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelDisableDetails(Tag tag, ShmodelDisableDetails shmodelDisableDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelDisableDetailsValue = shmodelDisableDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelFbShareDetails(Tag tag, ShmodelFbShareDetails shmodelFbShareDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelFbShareDetailsValue = shmodelFbShareDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelGroupShareDetails(Tag tag, ShmodelGroupShareDetails shmodelGroupShareDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelGroupShareDetailsValue = shmodelGroupShareDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelRemoveExpirationDetails(Tag tag, ShmodelRemoveExpirationDetails shmodelRemoveExpirationDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelRemoveExpirationDetailsValue = shmodelRemoveExpirationDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelSetExpirationDetails(Tag tag, ShmodelSetExpirationDetails shmodelSetExpirationDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelSetExpirationDetailsValue = shmodelSetExpirationDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelTeamCopyDetails(Tag tag, ShmodelTeamCopyDetails shmodelTeamCopyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelTeamCopyDetailsValue = shmodelTeamCopyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelTeamDownloadDetails(Tag tag, ShmodelTeamDownloadDetails shmodelTeamDownloadDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelTeamDownloadDetailsValue = shmodelTeamDownloadDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelTeamShareDetails(Tag tag, ShmodelTeamShareDetails shmodelTeamShareDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelTeamShareDetailsValue = shmodelTeamShareDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelTeamViewDetails(Tag tag, ShmodelTeamViewDetails shmodelTeamViewDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelTeamViewDetailsValue = shmodelTeamViewDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelVisibilityPasswordDetails(Tag tag, ShmodelVisibilityPasswordDetails shmodelVisibilityPasswordDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelVisibilityPasswordDetailsValue = shmodelVisibilityPasswordDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelVisibilityPublicDetails(Tag tag, ShmodelVisibilityPublicDetails shmodelVisibilityPublicDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelVisibilityPublicDetailsValue = shmodelVisibilityPublicDetails;
        return eventDetails;
    }

    private EventDetails withTagAndShmodelVisibilityTeamOnlyDetails(Tag tag, ShmodelVisibilityTeamOnlyDetails shmodelVisibilityTeamOnlyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.shmodelVisibilityTeamOnlyDetailsValue = shmodelVisibilityTeamOnlyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoAddCertDetails(Tag tag, SsoAddCertDetails ssoAddCertDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoAddCertDetailsValue = ssoAddCertDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoAddLoginUrlDetails(Tag tag, SsoAddLoginUrlDetails ssoAddLoginUrlDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoAddLoginUrlDetailsValue = ssoAddLoginUrlDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoAddLogoutUrlDetails(Tag tag, SsoAddLogoutUrlDetails ssoAddLogoutUrlDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoAddLogoutUrlDetailsValue = ssoAddLogoutUrlDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoChangeCertDetails(Tag tag, SsoChangeCertDetails ssoChangeCertDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoChangeCertDetailsValue = ssoChangeCertDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoChangeLoginUrlDetails(Tag tag, SsoChangeLoginUrlDetails ssoChangeLoginUrlDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoChangeLoginUrlDetailsValue = ssoChangeLoginUrlDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoChangeLogoutUrlDetails(Tag tag, SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoChangeLogoutUrlDetailsValue = ssoChangeLogoutUrlDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoChangeSamlIdentityModeDetails(Tag tag, SsoChangeSamlIdentityModeDetails ssoChangeSamlIdentityModeDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoChangeSamlIdentityModeDetailsValue = ssoChangeSamlIdentityModeDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoRemoveCertDetails(Tag tag, SsoRemoveCertDetails ssoRemoveCertDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoRemoveCertDetailsValue = ssoRemoveCertDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoRemoveLoginUrlDetails(Tag tag, SsoRemoveLoginUrlDetails ssoRemoveLoginUrlDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoRemoveLoginUrlDetailsValue = ssoRemoveLoginUrlDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoRemoveLogoutUrlDetails(Tag tag, SsoRemoveLogoutUrlDetails ssoRemoveLogoutUrlDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoRemoveLogoutUrlDetailsValue = ssoRemoveLogoutUrlDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamFolderChangeStatusDetails(Tag tag, TeamFolderChangeStatusDetails teamFolderChangeStatusDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamFolderChangeStatusDetailsValue = teamFolderChangeStatusDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamFolderCreateDetails(Tag tag, TeamFolderCreateDetails teamFolderCreateDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamFolderCreateDetailsValue = teamFolderCreateDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamFolderDowngradeDetails(Tag tag, TeamFolderDowngradeDetails teamFolderDowngradeDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamFolderDowngradeDetailsValue = teamFolderDowngradeDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamFolderPermanentlyDeleteDetails(Tag tag, TeamFolderPermanentlyDeleteDetails teamFolderPermanentlyDeleteDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamFolderPermanentlyDeleteDetailsValue = teamFolderPermanentlyDeleteDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamFolderRenameDetails(Tag tag, TeamFolderRenameDetails teamFolderRenameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamFolderRenameDetailsValue = teamFolderRenameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAccountCaptureChangePolicyDetails(Tag tag, AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.accountCaptureChangePolicyDetailsValue = accountCaptureChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAllowDownloadDisabledDetails(Tag tag, AllowDownloadDisabledDetails allowDownloadDisabledDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.allowDownloadDisabledDetailsValue = allowDownloadDisabledDetails;
        return eventDetails;
    }

    private EventDetails withTagAndAllowDownloadEnabledDetails(Tag tag, AllowDownloadEnabledDetails allowDownloadEnabledDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.allowDownloadEnabledDetailsValue = allowDownloadEnabledDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDataPlacementRestrictionChangePolicyDetails(Tag tag, DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.dataPlacementRestrictionChangePolicyDetailsValue = dataPlacementRestrictionChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDataPlacementRestrictionSatisfyPolicyDetails(Tag tag, DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.dataPlacementRestrictionSatisfyPolicyDetailsValue = dataPlacementRestrictionSatisfyPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceApprovalsChangeDesktopPolicyDetails(Tag tag, DeviceApprovalsChangeDesktopPolicyDetails deviceApprovalsChangeDesktopPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceApprovalsChangeDesktopPolicyDetailsValue = deviceApprovalsChangeDesktopPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceApprovalsChangeMobilePolicyDetails(Tag tag, DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceApprovalsChangeMobilePolicyDetailsValue = deviceApprovalsChangeMobilePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceApprovalsChangeOverageActionDetails(Tag tag, DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceApprovalsChangeOverageActionDetailsValue = deviceApprovalsChangeOverageActionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndDeviceApprovalsChangeUnlinkActionDetails(Tag tag, DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.deviceApprovalsChangeUnlinkActionDetailsValue = deviceApprovalsChangeUnlinkActionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmAddExceptionDetails(Tag tag, EmmAddExceptionDetails emmAddExceptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmAddExceptionDetailsValue = emmAddExceptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmChangePolicyDetails(Tag tag, EmmChangePolicyDetails emmChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmChangePolicyDetailsValue = emmChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndEmmRemoveExceptionDetails(Tag tag, EmmRemoveExceptionDetails emmRemoveExceptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.emmRemoveExceptionDetailsValue = emmRemoveExceptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndExtendedVersionHistoryChangePolicyDetails(Tag tag, ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.extendedVersionHistoryChangePolicyDetailsValue = extendedVersionHistoryChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileCommentsChangePolicyDetails(Tag tag, FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileCommentsChangePolicyDetailsValue = fileCommentsChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestsChangePolicyDetails(Tag tag, FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestsChangePolicyDetailsValue = fileRequestsChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestsEmailsEnabledDetails(Tag tag, FileRequestsEmailsEnabledDetails fileRequestsEmailsEnabledDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestsEmailsEnabledDetailsValue = fileRequestsEmailsEnabledDetails;
        return eventDetails;
    }

    private EventDetails withTagAndFileRequestsEmailsRestrictedToTeamOnlyDetails(Tag tag, FileRequestsEmailsRestrictedToTeamOnlyDetails fileRequestsEmailsRestrictedToTeamOnlyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue = fileRequestsEmailsRestrictedToTeamOnlyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGoogleSsoChangePolicyDetails(Tag tag, GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.googleSsoChangePolicyDetailsValue = googleSsoChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndGroupUserManagementChangePolicyDetails(Tag tag, GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.groupUserManagementChangePolicyDetailsValue = groupUserManagementChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberRequestsChangePolicyDetails(Tag tag, MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberRequestsChangePolicyDetailsValue = memberRequestsChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberSpaceLimitsAddExceptionDetails(Tag tag, MemberSpaceLimitsAddExceptionDetails memberSpaceLimitsAddExceptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberSpaceLimitsAddExceptionDetailsValue = memberSpaceLimitsAddExceptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberSpaceLimitsChangePolicyDetails(Tag tag, MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberSpaceLimitsChangePolicyDetailsValue = memberSpaceLimitsChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberSpaceLimitsRemoveExceptionDetails(Tag tag, MemberSpaceLimitsRemoveExceptionDetails memberSpaceLimitsRemoveExceptionDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberSpaceLimitsRemoveExceptionDetailsValue = memberSpaceLimitsRemoveExceptionDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMemberSuggestionsChangePolicyDetails(Tag tag, MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.memberSuggestionsChangePolicyDetailsValue = memberSuggestionsChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMicrosoftOfficeAddinChangePolicyDetails(Tag tag, MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.microsoftOfficeAddinChangePolicyDetailsValue = microsoftOfficeAddinChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndNetworkControlChangePolicyDetails(Tag tag, NetworkControlChangePolicyDetails networkControlChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.networkControlChangePolicyDetailsValue = networkControlChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperChangeDeploymentPolicyDetails(Tag tag, PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperChangeDeploymentPolicyDetailsValue = paperChangeDeploymentPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperChangeMemberLinkPolicyDetails(Tag tag, PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperChangeMemberLinkPolicyDetailsValue = paperChangeMemberLinkPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperChangeMemberPolicyDetails(Tag tag, PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperChangeMemberPolicyDetailsValue = paperChangeMemberPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPaperChangePolicyDetails(Tag tag, PaperChangePolicyDetails paperChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.paperChangePolicyDetailsValue = paperChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndPermanentDeleteChangePolicyDetails(Tag tag, PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.permanentDeleteChangePolicyDetailsValue = permanentDeleteChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharingChangeFolderJoinPolicyDetails(Tag tag, SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharingChangeFolderJoinPolicyDetailsValue = sharingChangeFolderJoinPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharingChangeLinkPolicyDetails(Tag tag, SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharingChangeLinkPolicyDetailsValue = sharingChangeLinkPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSharingChangeMemberPolicyDetails(Tag tag, SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.sharingChangeMemberPolicyDetailsValue = sharingChangeMemberPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSmartSyncChangePolicyDetails(Tag tag, SmartSyncChangePolicyDetails smartSyncChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.smartSyncChangePolicyDetailsValue = smartSyncChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSmartSyncNotOptOutDetails(Tag tag, SmartSyncNotOptOutDetails smartSyncNotOptOutDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.smartSyncNotOptOutDetailsValue = smartSyncNotOptOutDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSmartSyncOptOutDetails(Tag tag, SmartSyncOptOutDetails smartSyncOptOutDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.smartSyncOptOutDetailsValue = smartSyncOptOutDetails;
        return eventDetails;
    }

    private EventDetails withTagAndSsoChangePolicyDetails(Tag tag, SsoChangePolicyDetails ssoChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.ssoChangePolicyDetailsValue = ssoChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaChangePolicyDetails(Tag tag, TfaChangePolicyDetails tfaChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaChangePolicyDetailsValue = tfaChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTwoAccountChangePolicyDetails(Tag tag, TwoAccountChangePolicyDetails twoAccountChangePolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.twoAccountChangePolicyDetailsValue = twoAccountChangePolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndWebSessionsChangeFixedLengthPolicyDetails(Tag tag, WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.webSessionsChangeFixedLengthPolicyDetailsValue = webSessionsChangeFixedLengthPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndWebSessionsChangeIdleLengthPolicyDetails(Tag tag, WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.webSessionsChangeIdleLengthPolicyDetailsValue = webSessionsChangeIdleLengthPolicyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamProfileAddLogoDetails(Tag tag, TeamProfileAddLogoDetails teamProfileAddLogoDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamProfileAddLogoDetailsValue = teamProfileAddLogoDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamProfileChangeDefaultLanguageDetails(Tag tag, TeamProfileChangeDefaultLanguageDetails teamProfileChangeDefaultLanguageDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamProfileChangeDefaultLanguageDetailsValue = teamProfileChangeDefaultLanguageDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamProfileChangeLogoDetails(Tag tag, TeamProfileChangeLogoDetails teamProfileChangeLogoDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamProfileChangeLogoDetailsValue = teamProfileChangeLogoDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamProfileChangeNameDetails(Tag tag, TeamProfileChangeNameDetails teamProfileChangeNameDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamProfileChangeNameDetailsValue = teamProfileChangeNameDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTeamProfileRemoveLogoDetails(Tag tag, TeamProfileRemoveLogoDetails teamProfileRemoveLogoDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.teamProfileRemoveLogoDetailsValue = teamProfileRemoveLogoDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaAddBackupPhoneDetails(Tag tag, TfaAddBackupPhoneDetails tfaAddBackupPhoneDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaAddBackupPhoneDetailsValue = tfaAddBackupPhoneDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaAddSecurityKeyDetails(Tag tag, TfaAddSecurityKeyDetails tfaAddSecurityKeyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaAddSecurityKeyDetailsValue = tfaAddSecurityKeyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaChangeBackupPhoneDetails(Tag tag, TfaChangeBackupPhoneDetails tfaChangeBackupPhoneDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaChangeBackupPhoneDetailsValue = tfaChangeBackupPhoneDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaChangeStatusDetails(Tag tag, TfaChangeStatusDetails tfaChangeStatusDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaChangeStatusDetailsValue = tfaChangeStatusDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaRemoveBackupPhoneDetails(Tag tag, TfaRemoveBackupPhoneDetails tfaRemoveBackupPhoneDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaRemoveBackupPhoneDetailsValue = tfaRemoveBackupPhoneDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaRemoveSecurityKeyDetails(Tag tag, TfaRemoveSecurityKeyDetails tfaRemoveSecurityKeyDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaRemoveSecurityKeyDetailsValue = tfaRemoveSecurityKeyDetails;
        return eventDetails;
    }

    private EventDetails withTagAndTfaResetDetails(Tag tag, TfaResetDetails tfaResetDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.tfaResetDetailsValue = tfaResetDetails;
        return eventDetails;
    }

    private EventDetails withTagAndMissingDetails(Tag tag, MissingDetails missingDetails) {
        EventDetails eventDetails = new EventDetails();
        eventDetails._tag = tag;
        eventDetails.missingDetailsValue = missingDetails;
        return eventDetails;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isMemberChangeMembershipTypeDetails() {
        return this._tag == Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS;
    }

    public static EventDetails memberChangeMembershipTypeDetails(MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails) {
        if (memberChangeMembershipTypeDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberChangeMembershipTypeDetails(Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS, memberChangeMembershipTypeDetails);
    }

    public MemberChangeMembershipTypeDetails getMemberChangeMembershipTypeDetailsValue() {
        if (this._tag != Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberChangeMembershipTypeDetailsValue;
    }

    public boolean isMemberPermanentlyDeleteAccountContentsDetails() {
        return this._tag == Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS;
    }

    public static EventDetails memberPermanentlyDeleteAccountContentsDetails(MemberPermanentlyDeleteAccountContentsDetails memberPermanentlyDeleteAccountContentsDetails) {
        if (memberPermanentlyDeleteAccountContentsDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberPermanentlyDeleteAccountContentsDetails(Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS, memberPermanentlyDeleteAccountContentsDetails);
    }

    public MemberPermanentlyDeleteAccountContentsDetails getMemberPermanentlyDeleteAccountContentsDetailsValue() {
        if (this._tag != Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberPermanentlyDeleteAccountContentsDetailsValue;
    }

    public boolean isMemberSpaceLimitsChangeStatusDetails() {
        return this._tag == Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS;
    }

    public static EventDetails memberSpaceLimitsChangeStatusDetails(MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails) {
        if (memberSpaceLimitsChangeStatusDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberSpaceLimitsChangeStatusDetails(Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS, memberSpaceLimitsChangeStatusDetails);
    }

    public MemberSpaceLimitsChangeStatusDetails getMemberSpaceLimitsChangeStatusDetailsValue() {
        if (this._tag != Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberSpaceLimitsChangeStatusDetailsValue;
    }

    public boolean isMemberTransferAccountContentsDetails() {
        return this._tag == Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS;
    }

    public static EventDetails memberTransferAccountContentsDetails(MemberTransferAccountContentsDetails memberTransferAccountContentsDetails) {
        if (memberTransferAccountContentsDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberTransferAccountContentsDetails(Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS, memberTransferAccountContentsDetails);
    }

    public MemberTransferAccountContentsDetails getMemberTransferAccountContentsDetailsValue() {
        if (this._tag != Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberTransferAccountContentsDetailsValue;
    }

    public boolean isPaperAdminExportStartDetails() {
        return this._tag == Tag.PAPER_ADMIN_EXPORT_START_DETAILS;
    }

    public static EventDetails paperAdminExportStartDetails(PaperAdminExportStartDetails paperAdminExportStartDetails) {
        if (paperAdminExportStartDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperAdminExportStartDetails(Tag.PAPER_ADMIN_EXPORT_START_DETAILS, paperAdminExportStartDetails);
    }

    public PaperAdminExportStartDetails getPaperAdminExportStartDetailsValue() {
        if (this._tag != Tag.PAPER_ADMIN_EXPORT_START_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_ADMIN_EXPORT_START_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperAdminExportStartDetailsValue;
    }

    public boolean isPaperEnabledUsersGroupAdditionDetails() {
        return this._tag == Tag.PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS;
    }

    public static EventDetails paperEnabledUsersGroupAdditionDetails(PaperEnabledUsersGroupAdditionDetails paperEnabledUsersGroupAdditionDetails) {
        if (paperEnabledUsersGroupAdditionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperEnabledUsersGroupAdditionDetails(Tag.PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS, paperEnabledUsersGroupAdditionDetails);
    }

    public PaperEnabledUsersGroupAdditionDetails getPaperEnabledUsersGroupAdditionDetailsValue() {
        if (this._tag != Tag.PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperEnabledUsersGroupAdditionDetailsValue;
    }

    public boolean isPaperEnabledUsersGroupRemovalDetails() {
        return this._tag == Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS;
    }

    public static EventDetails paperEnabledUsersGroupRemovalDetails(PaperEnabledUsersGroupRemovalDetails paperEnabledUsersGroupRemovalDetails) {
        if (paperEnabledUsersGroupRemovalDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperEnabledUsersGroupRemovalDetails(Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS, paperEnabledUsersGroupRemovalDetails);
    }

    public PaperEnabledUsersGroupRemovalDetails getPaperEnabledUsersGroupRemovalDetailsValue() {
        if (this._tag != Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperEnabledUsersGroupRemovalDetailsValue;
    }

    public boolean isPaperExternalViewAllowDetails() {
        return this._tag == Tag.PAPER_EXTERNAL_VIEW_ALLOW_DETAILS;
    }

    public static EventDetails paperExternalViewAllowDetails(PaperExternalViewAllowDetails paperExternalViewAllowDetails) {
        if (paperExternalViewAllowDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperExternalViewAllowDetails(Tag.PAPER_EXTERNAL_VIEW_ALLOW_DETAILS, paperExternalViewAllowDetails);
    }

    public PaperExternalViewAllowDetails getPaperExternalViewAllowDetailsValue() {
        if (this._tag != Tag.PAPER_EXTERNAL_VIEW_ALLOW_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_EXTERNAL_VIEW_ALLOW_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperExternalViewAllowDetailsValue;
    }

    public boolean isPaperExternalViewDefaultTeamDetails() {
        return this._tag == Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS;
    }

    public static EventDetails paperExternalViewDefaultTeamDetails(PaperExternalViewDefaultTeamDetails paperExternalViewDefaultTeamDetails) {
        if (paperExternalViewDefaultTeamDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperExternalViewDefaultTeamDetails(Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS, paperExternalViewDefaultTeamDetails);
    }

    public PaperExternalViewDefaultTeamDetails getPaperExternalViewDefaultTeamDetailsValue() {
        if (this._tag != Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperExternalViewDefaultTeamDetailsValue;
    }

    public boolean isPaperExternalViewForbidDetails() {
        return this._tag == Tag.PAPER_EXTERNAL_VIEW_FORBID_DETAILS;
    }

    public static EventDetails paperExternalViewForbidDetails(PaperExternalViewForbidDetails paperExternalViewForbidDetails) {
        if (paperExternalViewForbidDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperExternalViewForbidDetails(Tag.PAPER_EXTERNAL_VIEW_FORBID_DETAILS, paperExternalViewForbidDetails);
    }

    public PaperExternalViewForbidDetails getPaperExternalViewForbidDetailsValue() {
        if (this._tag != Tag.PAPER_EXTERNAL_VIEW_FORBID_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_EXTERNAL_VIEW_FORBID_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperExternalViewForbidDetailsValue;
    }

    public boolean isSfExternalInviteWarnDetails() {
        return this._tag == Tag.SF_EXTERNAL_INVITE_WARN_DETAILS;
    }

    public static EventDetails sfExternalInviteWarnDetails(SfExternalInviteWarnDetails sfExternalInviteWarnDetails) {
        if (sfExternalInviteWarnDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfExternalInviteWarnDetails(Tag.SF_EXTERNAL_INVITE_WARN_DETAILS, sfExternalInviteWarnDetails);
    }

    public SfExternalInviteWarnDetails getSfExternalInviteWarnDetailsValue() {
        if (this._tag != Tag.SF_EXTERNAL_INVITE_WARN_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_EXTERNAL_INVITE_WARN_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfExternalInviteWarnDetailsValue;
    }

    public boolean isTeamMergeFromDetails() {
        return this._tag == Tag.TEAM_MERGE_FROM_DETAILS;
    }

    public static EventDetails teamMergeFromDetails(TeamMergeFromDetails teamMergeFromDetails) {
        if (teamMergeFromDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamMergeFromDetails(Tag.TEAM_MERGE_FROM_DETAILS, teamMergeFromDetails);
    }

    public TeamMergeFromDetails getTeamMergeFromDetailsValue() {
        if (this._tag != Tag.TEAM_MERGE_FROM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_FROM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamMergeFromDetailsValue;
    }

    public boolean isTeamMergeToDetails() {
        return this._tag == Tag.TEAM_MERGE_TO_DETAILS;
    }

    public static EventDetails teamMergeToDetails(TeamMergeToDetails teamMergeToDetails) {
        if (teamMergeToDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamMergeToDetails(Tag.TEAM_MERGE_TO_DETAILS, teamMergeToDetails);
    }

    public TeamMergeToDetails getTeamMergeToDetailsValue() {
        if (this._tag != Tag.TEAM_MERGE_TO_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_MERGE_TO_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamMergeToDetailsValue;
    }

    public boolean isAppLinkTeamDetails() {
        return this._tag == Tag.APP_LINK_TEAM_DETAILS;
    }

    public static EventDetails appLinkTeamDetails(AppLinkTeamDetails appLinkTeamDetails) {
        if (appLinkTeamDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAppLinkTeamDetails(Tag.APP_LINK_TEAM_DETAILS, appLinkTeamDetails);
    }

    public AppLinkTeamDetails getAppLinkTeamDetailsValue() {
        if (this._tag != Tag.APP_LINK_TEAM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.APP_LINK_TEAM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.appLinkTeamDetailsValue;
    }

    public boolean isAppLinkUserDetails() {
        return this._tag == Tag.APP_LINK_USER_DETAILS;
    }

    public static EventDetails appLinkUserDetails(AppLinkUserDetails appLinkUserDetails) {
        if (appLinkUserDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAppLinkUserDetails(Tag.APP_LINK_USER_DETAILS, appLinkUserDetails);
    }

    public AppLinkUserDetails getAppLinkUserDetailsValue() {
        if (this._tag != Tag.APP_LINK_USER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.APP_LINK_USER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.appLinkUserDetailsValue;
    }

    public boolean isAppUnlinkTeamDetails() {
        return this._tag == Tag.APP_UNLINK_TEAM_DETAILS;
    }

    public static EventDetails appUnlinkTeamDetails(AppUnlinkTeamDetails appUnlinkTeamDetails) {
        if (appUnlinkTeamDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAppUnlinkTeamDetails(Tag.APP_UNLINK_TEAM_DETAILS, appUnlinkTeamDetails);
    }

    public AppUnlinkTeamDetails getAppUnlinkTeamDetailsValue() {
        if (this._tag != Tag.APP_UNLINK_TEAM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.APP_UNLINK_TEAM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.appUnlinkTeamDetailsValue;
    }

    public boolean isAppUnlinkUserDetails() {
        return this._tag == Tag.APP_UNLINK_USER_DETAILS;
    }

    public static EventDetails appUnlinkUserDetails(AppUnlinkUserDetails appUnlinkUserDetails) {
        if (appUnlinkUserDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAppUnlinkUserDetails(Tag.APP_UNLINK_USER_DETAILS, appUnlinkUserDetails);
    }

    public AppUnlinkUserDetails getAppUnlinkUserDetailsValue() {
        if (this._tag != Tag.APP_UNLINK_USER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.APP_UNLINK_USER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.appUnlinkUserDetailsValue;
    }

    public boolean isFileAddCommentDetails() {
        return this._tag == Tag.FILE_ADD_COMMENT_DETAILS;
    }

    public static EventDetails fileAddCommentDetails(FileAddCommentDetails fileAddCommentDetails) {
        if (fileAddCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileAddCommentDetails(Tag.FILE_ADD_COMMENT_DETAILS, fileAddCommentDetails);
    }

    public FileAddCommentDetails getFileAddCommentDetailsValue() {
        if (this._tag != Tag.FILE_ADD_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_ADD_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileAddCommentDetailsValue;
    }

    public boolean isFileChangeCommentSubscriptionDetails() {
        return this._tag == Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS;
    }

    public static EventDetails fileChangeCommentSubscriptionDetails(FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails) {
        if (fileChangeCommentSubscriptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileChangeCommentSubscriptionDetails(Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS, fileChangeCommentSubscriptionDetails);
    }

    public FileChangeCommentSubscriptionDetails getFileChangeCommentSubscriptionDetailsValue() {
        if (this._tag != Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileChangeCommentSubscriptionDetailsValue;
    }

    public boolean isFileDeleteCommentDetails() {
        return this._tag == Tag.FILE_DELETE_COMMENT_DETAILS;
    }

    public static EventDetails fileDeleteCommentDetails(FileDeleteCommentDetails fileDeleteCommentDetails) {
        if (fileDeleteCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileDeleteCommentDetails(Tag.FILE_DELETE_COMMENT_DETAILS, fileDeleteCommentDetails);
    }

    public FileDeleteCommentDetails getFileDeleteCommentDetailsValue() {
        if (this._tag != Tag.FILE_DELETE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_DELETE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileDeleteCommentDetailsValue;
    }

    public boolean isFileLikeCommentDetails() {
        return this._tag == Tag.FILE_LIKE_COMMENT_DETAILS;
    }

    public static EventDetails fileLikeCommentDetails(FileLikeCommentDetails fileLikeCommentDetails) {
        if (fileLikeCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileLikeCommentDetails(Tag.FILE_LIKE_COMMENT_DETAILS, fileLikeCommentDetails);
    }

    public FileLikeCommentDetails getFileLikeCommentDetailsValue() {
        if (this._tag != Tag.FILE_LIKE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_LIKE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileLikeCommentDetailsValue;
    }

    public boolean isFileResolveCommentDetails() {
        return this._tag == Tag.FILE_RESOLVE_COMMENT_DETAILS;
    }

    public static EventDetails fileResolveCommentDetails(FileResolveCommentDetails fileResolveCommentDetails) {
        if (fileResolveCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileResolveCommentDetails(Tag.FILE_RESOLVE_COMMENT_DETAILS, fileResolveCommentDetails);
    }

    public FileResolveCommentDetails getFileResolveCommentDetailsValue() {
        if (this._tag != Tag.FILE_RESOLVE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_RESOLVE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileResolveCommentDetailsValue;
    }

    public boolean isFileUnlikeCommentDetails() {
        return this._tag == Tag.FILE_UNLIKE_COMMENT_DETAILS;
    }

    public static EventDetails fileUnlikeCommentDetails(FileUnlikeCommentDetails fileUnlikeCommentDetails) {
        if (fileUnlikeCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileUnlikeCommentDetails(Tag.FILE_UNLIKE_COMMENT_DETAILS, fileUnlikeCommentDetails);
    }

    public FileUnlikeCommentDetails getFileUnlikeCommentDetailsValue() {
        if (this._tag != Tag.FILE_UNLIKE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_UNLIKE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileUnlikeCommentDetailsValue;
    }

    public boolean isFileUnresolveCommentDetails() {
        return this._tag == Tag.FILE_UNRESOLVE_COMMENT_DETAILS;
    }

    public static EventDetails fileUnresolveCommentDetails(FileUnresolveCommentDetails fileUnresolveCommentDetails) {
        if (fileUnresolveCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileUnresolveCommentDetails(Tag.FILE_UNRESOLVE_COMMENT_DETAILS, fileUnresolveCommentDetails);
    }

    public FileUnresolveCommentDetails getFileUnresolveCommentDetailsValue() {
        if (this._tag != Tag.FILE_UNRESOLVE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_UNRESOLVE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileUnresolveCommentDetailsValue;
    }

    public boolean isDeviceChangeIpDesktopDetails() {
        return this._tag == Tag.DEVICE_CHANGE_IP_DESKTOP_DETAILS;
    }

    public static EventDetails deviceChangeIpDesktopDetails(DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails) {
        if (deviceChangeIpDesktopDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceChangeIpDesktopDetails(Tag.DEVICE_CHANGE_IP_DESKTOP_DETAILS, deviceChangeIpDesktopDetails);
    }

    public DeviceChangeIpDesktopDetails getDeviceChangeIpDesktopDetailsValue() {
        if (this._tag != Tag.DEVICE_CHANGE_IP_DESKTOP_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_CHANGE_IP_DESKTOP_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceChangeIpDesktopDetailsValue;
    }

    public boolean isDeviceChangeIpMobileDetails() {
        return this._tag == Tag.DEVICE_CHANGE_IP_MOBILE_DETAILS;
    }

    public static EventDetails deviceChangeIpMobileDetails(DeviceChangeIpMobileDetails deviceChangeIpMobileDetails) {
        if (deviceChangeIpMobileDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceChangeIpMobileDetails(Tag.DEVICE_CHANGE_IP_MOBILE_DETAILS, deviceChangeIpMobileDetails);
    }

    public DeviceChangeIpMobileDetails getDeviceChangeIpMobileDetailsValue() {
        if (this._tag != Tag.DEVICE_CHANGE_IP_MOBILE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_CHANGE_IP_MOBILE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceChangeIpMobileDetailsValue;
    }

    public boolean isDeviceChangeIpWebDetails() {
        return this._tag == Tag.DEVICE_CHANGE_IP_WEB_DETAILS;
    }

    public static EventDetails deviceChangeIpWebDetails(DeviceChangeIpWebDetails deviceChangeIpWebDetails) {
        if (deviceChangeIpWebDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceChangeIpWebDetails(Tag.DEVICE_CHANGE_IP_WEB_DETAILS, deviceChangeIpWebDetails);
    }

    public DeviceChangeIpWebDetails getDeviceChangeIpWebDetailsValue() {
        if (this._tag != Tag.DEVICE_CHANGE_IP_WEB_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_CHANGE_IP_WEB_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceChangeIpWebDetailsValue;
    }

    public boolean isDeviceDeleteOnUnlinkFailDetails() {
        return this._tag == Tag.DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS;
    }

    public static EventDetails deviceDeleteOnUnlinkFailDetails(DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails) {
        if (deviceDeleteOnUnlinkFailDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceDeleteOnUnlinkFailDetails(Tag.DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS, deviceDeleteOnUnlinkFailDetails);
    }

    public DeviceDeleteOnUnlinkFailDetails getDeviceDeleteOnUnlinkFailDetailsValue() {
        if (this._tag != Tag.DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceDeleteOnUnlinkFailDetailsValue;
    }

    public boolean isDeviceDeleteOnUnlinkSuccessDetails() {
        return this._tag == Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS;
    }

    public static EventDetails deviceDeleteOnUnlinkSuccessDetails(DeviceDeleteOnUnlinkSuccessDetails deviceDeleteOnUnlinkSuccessDetails) {
        if (deviceDeleteOnUnlinkSuccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceDeleteOnUnlinkSuccessDetails(Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS, deviceDeleteOnUnlinkSuccessDetails);
    }

    public DeviceDeleteOnUnlinkSuccessDetails getDeviceDeleteOnUnlinkSuccessDetailsValue() {
        if (this._tag != Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceDeleteOnUnlinkSuccessDetailsValue;
    }

    public boolean isDeviceLinkFailDetails() {
        return this._tag == Tag.DEVICE_LINK_FAIL_DETAILS;
    }

    public static EventDetails deviceLinkFailDetails(DeviceLinkFailDetails deviceLinkFailDetails) {
        if (deviceLinkFailDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceLinkFailDetails(Tag.DEVICE_LINK_FAIL_DETAILS, deviceLinkFailDetails);
    }

    public DeviceLinkFailDetails getDeviceLinkFailDetailsValue() {
        if (this._tag != Tag.DEVICE_LINK_FAIL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_LINK_FAIL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceLinkFailDetailsValue;
    }

    public boolean isDeviceLinkSuccessDetails() {
        return this._tag == Tag.DEVICE_LINK_SUCCESS_DETAILS;
    }

    public static EventDetails deviceLinkSuccessDetails(DeviceLinkSuccessDetails deviceLinkSuccessDetails) {
        if (deviceLinkSuccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceLinkSuccessDetails(Tag.DEVICE_LINK_SUCCESS_DETAILS, deviceLinkSuccessDetails);
    }

    public DeviceLinkSuccessDetails getDeviceLinkSuccessDetailsValue() {
        if (this._tag != Tag.DEVICE_LINK_SUCCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_LINK_SUCCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceLinkSuccessDetailsValue;
    }

    public boolean isDeviceManagementDisabledDetails() {
        return this._tag == Tag.DEVICE_MANAGEMENT_DISABLED_DETAILS;
    }

    public static EventDetails deviceManagementDisabledDetails(DeviceManagementDisabledDetails deviceManagementDisabledDetails) {
        if (deviceManagementDisabledDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceManagementDisabledDetails(Tag.DEVICE_MANAGEMENT_DISABLED_DETAILS, deviceManagementDisabledDetails);
    }

    public DeviceManagementDisabledDetails getDeviceManagementDisabledDetailsValue() {
        if (this._tag != Tag.DEVICE_MANAGEMENT_DISABLED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_MANAGEMENT_DISABLED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceManagementDisabledDetailsValue;
    }

    public boolean isDeviceManagementEnabledDetails() {
        return this._tag == Tag.DEVICE_MANAGEMENT_ENABLED_DETAILS;
    }

    public static EventDetails deviceManagementEnabledDetails(DeviceManagementEnabledDetails deviceManagementEnabledDetails) {
        if (deviceManagementEnabledDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceManagementEnabledDetails(Tag.DEVICE_MANAGEMENT_ENABLED_DETAILS, deviceManagementEnabledDetails);
    }

    public DeviceManagementEnabledDetails getDeviceManagementEnabledDetailsValue() {
        if (this._tag != Tag.DEVICE_MANAGEMENT_ENABLED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_MANAGEMENT_ENABLED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceManagementEnabledDetailsValue;
    }

    public boolean isDeviceUnlinkDetails() {
        return this._tag == Tag.DEVICE_UNLINK_DETAILS;
    }

    public static EventDetails deviceUnlinkDetails(DeviceUnlinkDetails deviceUnlinkDetails) {
        if (deviceUnlinkDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceUnlinkDetails(Tag.DEVICE_UNLINK_DETAILS, deviceUnlinkDetails);
    }

    public DeviceUnlinkDetails getDeviceUnlinkDetailsValue() {
        if (this._tag != Tag.DEVICE_UNLINK_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_UNLINK_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceUnlinkDetailsValue;
    }

    public boolean isEmmRefreshAuthTokenDetails() {
        return this._tag == Tag.EMM_REFRESH_AUTH_TOKEN_DETAILS;
    }

    public static EventDetails emmRefreshAuthTokenDetails(EmmRefreshAuthTokenDetails emmRefreshAuthTokenDetails) {
        if (emmRefreshAuthTokenDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmRefreshAuthTokenDetails(Tag.EMM_REFRESH_AUTH_TOKEN_DETAILS, emmRefreshAuthTokenDetails);
    }

    public EmmRefreshAuthTokenDetails getEmmRefreshAuthTokenDetailsValue() {
        if (this._tag != Tag.EMM_REFRESH_AUTH_TOKEN_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_REFRESH_AUTH_TOKEN_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmRefreshAuthTokenDetailsValue;
    }

    public boolean isAccountCaptureChangeAvailabilityDetails() {
        return this._tag == Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS;
    }

    public static EventDetails accountCaptureChangeAvailabilityDetails(AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails) {
        if (accountCaptureChangeAvailabilityDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAccountCaptureChangeAvailabilityDetails(Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS, accountCaptureChangeAvailabilityDetails);
    }

    public AccountCaptureChangeAvailabilityDetails getAccountCaptureChangeAvailabilityDetailsValue() {
        if (this._tag != Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.accountCaptureChangeAvailabilityDetailsValue;
    }

    public boolean isAccountCaptureMigrateAccountDetails() {
        return this._tag == Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS;
    }

    public static EventDetails accountCaptureMigrateAccountDetails(AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails) {
        if (accountCaptureMigrateAccountDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAccountCaptureMigrateAccountDetails(Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS, accountCaptureMigrateAccountDetails);
    }

    public AccountCaptureMigrateAccountDetails getAccountCaptureMigrateAccountDetailsValue() {
        if (this._tag != Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.accountCaptureMigrateAccountDetailsValue;
    }

    public boolean isAccountCaptureRelinquishAccountDetails() {
        return this._tag == Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS;
    }

    public static EventDetails accountCaptureRelinquishAccountDetails(AccountCaptureRelinquishAccountDetails accountCaptureRelinquishAccountDetails) {
        if (accountCaptureRelinquishAccountDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAccountCaptureRelinquishAccountDetails(Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS, accountCaptureRelinquishAccountDetails);
    }

    public AccountCaptureRelinquishAccountDetails getAccountCaptureRelinquishAccountDetailsValue() {
        if (this._tag != Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.accountCaptureRelinquishAccountDetailsValue;
    }

    public boolean isDisabledDomainInvitesDetails() {
        return this._tag == Tag.DISABLED_DOMAIN_INVITES_DETAILS;
    }

    public static EventDetails disabledDomainInvitesDetails(DisabledDomainInvitesDetails disabledDomainInvitesDetails) {
        if (disabledDomainInvitesDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDisabledDomainInvitesDetails(Tag.DISABLED_DOMAIN_INVITES_DETAILS, disabledDomainInvitesDetails);
    }

    public DisabledDomainInvitesDetails getDisabledDomainInvitesDetailsValue() {
        if (this._tag != Tag.DISABLED_DOMAIN_INVITES_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DISABLED_DOMAIN_INVITES_DETAILS, but was Tag." + this._tag.name());
        }
        return this.disabledDomainInvitesDetailsValue;
    }

    public boolean isDomainInvitesApproveRequestToJoinTeamDetails() {
        return this._tag == Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS;
    }

    public static EventDetails domainInvitesApproveRequestToJoinTeamDetails(DomainInvitesApproveRequestToJoinTeamDetails domainInvitesApproveRequestToJoinTeamDetails) {
        if (domainInvitesApproveRequestToJoinTeamDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainInvitesApproveRequestToJoinTeamDetails(Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS, domainInvitesApproveRequestToJoinTeamDetails);
    }

    public DomainInvitesApproveRequestToJoinTeamDetails getDomainInvitesApproveRequestToJoinTeamDetailsValue() {
        if (this._tag != Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainInvitesApproveRequestToJoinTeamDetailsValue;
    }

    public boolean isDomainInvitesDeclineRequestToJoinTeamDetails() {
        return this._tag == Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS;
    }

    public static EventDetails domainInvitesDeclineRequestToJoinTeamDetails(DomainInvitesDeclineRequestToJoinTeamDetails domainInvitesDeclineRequestToJoinTeamDetails) {
        if (domainInvitesDeclineRequestToJoinTeamDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainInvitesDeclineRequestToJoinTeamDetails(Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS, domainInvitesDeclineRequestToJoinTeamDetails);
    }

    public DomainInvitesDeclineRequestToJoinTeamDetails getDomainInvitesDeclineRequestToJoinTeamDetailsValue() {
        if (this._tag != Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainInvitesDeclineRequestToJoinTeamDetailsValue;
    }

    public boolean isDomainInvitesEmailExistingUsersDetails() {
        return this._tag == Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS;
    }

    public static EventDetails domainInvitesEmailExistingUsersDetails(DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails) {
        if (domainInvitesEmailExistingUsersDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainInvitesEmailExistingUsersDetails(Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS, domainInvitesEmailExistingUsersDetails);
    }

    public DomainInvitesEmailExistingUsersDetails getDomainInvitesEmailExistingUsersDetailsValue() {
        if (this._tag != Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainInvitesEmailExistingUsersDetailsValue;
    }

    public boolean isDomainInvitesRequestToJoinTeamDetails() {
        return this._tag == Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS;
    }

    public static EventDetails domainInvitesRequestToJoinTeamDetails(DomainInvitesRequestToJoinTeamDetails domainInvitesRequestToJoinTeamDetails) {
        if (domainInvitesRequestToJoinTeamDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainInvitesRequestToJoinTeamDetails(Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS, domainInvitesRequestToJoinTeamDetails);
    }

    public DomainInvitesRequestToJoinTeamDetails getDomainInvitesRequestToJoinTeamDetailsValue() {
        if (this._tag != Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainInvitesRequestToJoinTeamDetailsValue;
    }

    public boolean isDomainInvitesSetInviteNewUserPrefToNoDetails() {
        return this._tag == Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS;
    }

    public static EventDetails domainInvitesSetInviteNewUserPrefToNoDetails(DomainInvitesSetInviteNewUserPrefToNoDetails domainInvitesSetInviteNewUserPrefToNoDetails) {
        if (domainInvitesSetInviteNewUserPrefToNoDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainInvitesSetInviteNewUserPrefToNoDetails(Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS, domainInvitesSetInviteNewUserPrefToNoDetails);
    }

    public DomainInvitesSetInviteNewUserPrefToNoDetails getDomainInvitesSetInviteNewUserPrefToNoDetailsValue() {
        if (this._tag != Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainInvitesSetInviteNewUserPrefToNoDetailsValue;
    }

    public boolean isDomainInvitesSetInviteNewUserPrefToYesDetails() {
        return this._tag == Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS;
    }

    public static EventDetails domainInvitesSetInviteNewUserPrefToYesDetails(DomainInvitesSetInviteNewUserPrefToYesDetails domainInvitesSetInviteNewUserPrefToYesDetails) {
        if (domainInvitesSetInviteNewUserPrefToYesDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainInvitesSetInviteNewUserPrefToYesDetails(Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS, domainInvitesSetInviteNewUserPrefToYesDetails);
    }

    public DomainInvitesSetInviteNewUserPrefToYesDetails getDomainInvitesSetInviteNewUserPrefToYesDetailsValue() {
        if (this._tag != Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainInvitesSetInviteNewUserPrefToYesDetailsValue;
    }

    public boolean isDomainVerificationAddDomainFailDetails() {
        return this._tag == Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS;
    }

    public static EventDetails domainVerificationAddDomainFailDetails(DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails) {
        if (domainVerificationAddDomainFailDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainVerificationAddDomainFailDetails(Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS, domainVerificationAddDomainFailDetails);
    }

    public DomainVerificationAddDomainFailDetails getDomainVerificationAddDomainFailDetailsValue() {
        if (this._tag != Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainVerificationAddDomainFailDetailsValue;
    }

    public boolean isDomainVerificationAddDomainSuccessDetails() {
        return this._tag == Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS;
    }

    public static EventDetails domainVerificationAddDomainSuccessDetails(DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails) {
        if (domainVerificationAddDomainSuccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainVerificationAddDomainSuccessDetails(Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS, domainVerificationAddDomainSuccessDetails);
    }

    public DomainVerificationAddDomainSuccessDetails getDomainVerificationAddDomainSuccessDetailsValue() {
        if (this._tag != Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainVerificationAddDomainSuccessDetailsValue;
    }

    public boolean isDomainVerificationRemoveDomainDetails() {
        return this._tag == Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS;
    }

    public static EventDetails domainVerificationRemoveDomainDetails(DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails) {
        if (domainVerificationRemoveDomainDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDomainVerificationRemoveDomainDetails(Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS, domainVerificationRemoveDomainDetails);
    }

    public DomainVerificationRemoveDomainDetails getDomainVerificationRemoveDomainDetailsValue() {
        if (this._tag != Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS, but was Tag." + this._tag.name());
        }
        return this.domainVerificationRemoveDomainDetailsValue;
    }

    public boolean isEnabledDomainInvitesDetails() {
        return this._tag == Tag.ENABLED_DOMAIN_INVITES_DETAILS;
    }

    public static EventDetails enabledDomainInvitesDetails(EnabledDomainInvitesDetails enabledDomainInvitesDetails) {
        if (enabledDomainInvitesDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEnabledDomainInvitesDetails(Tag.ENABLED_DOMAIN_INVITES_DETAILS, enabledDomainInvitesDetails);
    }

    public EnabledDomainInvitesDetails getEnabledDomainInvitesDetailsValue() {
        if (this._tag != Tag.ENABLED_DOMAIN_INVITES_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ENABLED_DOMAIN_INVITES_DETAILS, but was Tag." + this._tag.name());
        }
        return this.enabledDomainInvitesDetailsValue;
    }

    public boolean isCreateFolderDetails() {
        return this._tag == Tag.CREATE_FOLDER_DETAILS;
    }

    public static EventDetails createFolderDetails(CreateFolderDetails createFolderDetails) {
        if (createFolderDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndCreateFolderDetails(Tag.CREATE_FOLDER_DETAILS, createFolderDetails);
    }

    public CreateFolderDetails getCreateFolderDetailsValue() {
        if (this._tag != Tag.CREATE_FOLDER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.CREATE_FOLDER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.createFolderDetailsValue;
    }

    public boolean isFileAddDetails() {
        return this._tag == Tag.FILE_ADD_DETAILS;
    }

    public static EventDetails fileAddDetails(FileAddDetails fileAddDetails) {
        if (fileAddDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileAddDetails(Tag.FILE_ADD_DETAILS, fileAddDetails);
    }

    public FileAddDetails getFileAddDetailsValue() {
        if (this._tag != Tag.FILE_ADD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_ADD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileAddDetailsValue;
    }

    public boolean isFileCopyDetails() {
        return this._tag == Tag.FILE_COPY_DETAILS;
    }

    public static EventDetails fileCopyDetails(FileCopyDetails fileCopyDetails) {
        if (fileCopyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileCopyDetails(Tag.FILE_COPY_DETAILS, fileCopyDetails);
    }

    public FileCopyDetails getFileCopyDetailsValue() {
        if (this._tag != Tag.FILE_COPY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_COPY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileCopyDetailsValue;
    }

    public boolean isFileDeleteDetails() {
        return this._tag == Tag.FILE_DELETE_DETAILS;
    }

    public static EventDetails fileDeleteDetails(FileDeleteDetails fileDeleteDetails) {
        if (fileDeleteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileDeleteDetails(Tag.FILE_DELETE_DETAILS, fileDeleteDetails);
    }

    public FileDeleteDetails getFileDeleteDetailsValue() {
        if (this._tag != Tag.FILE_DELETE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_DELETE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileDeleteDetailsValue;
    }

    public boolean isFileDownloadDetails() {
        return this._tag == Tag.FILE_DOWNLOAD_DETAILS;
    }

    public static EventDetails fileDownloadDetails(FileDownloadDetails fileDownloadDetails) {
        if (fileDownloadDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileDownloadDetails(Tag.FILE_DOWNLOAD_DETAILS, fileDownloadDetails);
    }

    public FileDownloadDetails getFileDownloadDetailsValue() {
        if (this._tag != Tag.FILE_DOWNLOAD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_DOWNLOAD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileDownloadDetailsValue;
    }

    public boolean isFileEditDetails() {
        return this._tag == Tag.FILE_EDIT_DETAILS;
    }

    public static EventDetails fileEditDetails(FileEditDetails fileEditDetails) {
        if (fileEditDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileEditDetails(Tag.FILE_EDIT_DETAILS, fileEditDetails);
    }

    public FileEditDetails getFileEditDetailsValue() {
        if (this._tag != Tag.FILE_EDIT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_EDIT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileEditDetailsValue;
    }

    public boolean isFileGetCopyReferenceDetails() {
        return this._tag == Tag.FILE_GET_COPY_REFERENCE_DETAILS;
    }

    public static EventDetails fileGetCopyReferenceDetails(FileGetCopyReferenceDetails fileGetCopyReferenceDetails) {
        if (fileGetCopyReferenceDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileGetCopyReferenceDetails(Tag.FILE_GET_COPY_REFERENCE_DETAILS, fileGetCopyReferenceDetails);
    }

    public FileGetCopyReferenceDetails getFileGetCopyReferenceDetailsValue() {
        if (this._tag != Tag.FILE_GET_COPY_REFERENCE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_GET_COPY_REFERENCE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileGetCopyReferenceDetailsValue;
    }

    public boolean isFileMoveDetails() {
        return this._tag == Tag.FILE_MOVE_DETAILS;
    }

    public static EventDetails fileMoveDetails(FileMoveDetails fileMoveDetails) {
        if (fileMoveDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileMoveDetails(Tag.FILE_MOVE_DETAILS, fileMoveDetails);
    }

    public FileMoveDetails getFileMoveDetailsValue() {
        if (this._tag != Tag.FILE_MOVE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_MOVE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileMoveDetailsValue;
    }

    public boolean isFilePermanentlyDeleteDetails() {
        return this._tag == Tag.FILE_PERMANENTLY_DELETE_DETAILS;
    }

    public static EventDetails filePermanentlyDeleteDetails(FilePermanentlyDeleteDetails filePermanentlyDeleteDetails) {
        if (filePermanentlyDeleteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFilePermanentlyDeleteDetails(Tag.FILE_PERMANENTLY_DELETE_DETAILS, filePermanentlyDeleteDetails);
    }

    public FilePermanentlyDeleteDetails getFilePermanentlyDeleteDetailsValue() {
        if (this._tag != Tag.FILE_PERMANENTLY_DELETE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_PERMANENTLY_DELETE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.filePermanentlyDeleteDetailsValue;
    }

    public boolean isFilePreviewDetails() {
        return this._tag == Tag.FILE_PREVIEW_DETAILS;
    }

    public static EventDetails filePreviewDetails(FilePreviewDetails filePreviewDetails) {
        if (filePreviewDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFilePreviewDetails(Tag.FILE_PREVIEW_DETAILS, filePreviewDetails);
    }

    public FilePreviewDetails getFilePreviewDetailsValue() {
        if (this._tag != Tag.FILE_PREVIEW_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_PREVIEW_DETAILS, but was Tag." + this._tag.name());
        }
        return this.filePreviewDetailsValue;
    }

    public boolean isFileRenameDetails() {
        return this._tag == Tag.FILE_RENAME_DETAILS;
    }

    public static EventDetails fileRenameDetails(FileRenameDetails fileRenameDetails) {
        if (fileRenameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRenameDetails(Tag.FILE_RENAME_DETAILS, fileRenameDetails);
    }

    public FileRenameDetails getFileRenameDetailsValue() {
        if (this._tag != Tag.FILE_RENAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_RENAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRenameDetailsValue;
    }

    public boolean isFileRestoreDetails() {
        return this._tag == Tag.FILE_RESTORE_DETAILS;
    }

    public static EventDetails fileRestoreDetails(FileRestoreDetails fileRestoreDetails) {
        if (fileRestoreDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRestoreDetails(Tag.FILE_RESTORE_DETAILS, fileRestoreDetails);
    }

    public FileRestoreDetails getFileRestoreDetailsValue() {
        if (this._tag != Tag.FILE_RESTORE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_RESTORE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRestoreDetailsValue;
    }

    public boolean isFileRevertDetails() {
        return this._tag == Tag.FILE_REVERT_DETAILS;
    }

    public static EventDetails fileRevertDetails(FileRevertDetails fileRevertDetails) {
        if (fileRevertDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRevertDetails(Tag.FILE_REVERT_DETAILS, fileRevertDetails);
    }

    public FileRevertDetails getFileRevertDetailsValue() {
        if (this._tag != Tag.FILE_REVERT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REVERT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRevertDetailsValue;
    }

    public boolean isFileRollbackChangesDetails() {
        return this._tag == Tag.FILE_ROLLBACK_CHANGES_DETAILS;
    }

    public static EventDetails fileRollbackChangesDetails(FileRollbackChangesDetails fileRollbackChangesDetails) {
        if (fileRollbackChangesDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRollbackChangesDetails(Tag.FILE_ROLLBACK_CHANGES_DETAILS, fileRollbackChangesDetails);
    }

    public FileRollbackChangesDetails getFileRollbackChangesDetailsValue() {
        if (this._tag != Tag.FILE_ROLLBACK_CHANGES_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_ROLLBACK_CHANGES_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRollbackChangesDetailsValue;
    }

    public boolean isFileSaveCopyReferenceDetails() {
        return this._tag == Tag.FILE_SAVE_COPY_REFERENCE_DETAILS;
    }

    public static EventDetails fileSaveCopyReferenceDetails(FileSaveCopyReferenceDetails fileSaveCopyReferenceDetails) {
        if (fileSaveCopyReferenceDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileSaveCopyReferenceDetails(Tag.FILE_SAVE_COPY_REFERENCE_DETAILS, fileSaveCopyReferenceDetails);
    }

    public FileSaveCopyReferenceDetails getFileSaveCopyReferenceDetailsValue() {
        if (this._tag != Tag.FILE_SAVE_COPY_REFERENCE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_SAVE_COPY_REFERENCE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileSaveCopyReferenceDetailsValue;
    }

    public boolean isFileRequestAddDeadlineDetails() {
        return this._tag == Tag.FILE_REQUEST_ADD_DEADLINE_DETAILS;
    }

    public static EventDetails fileRequestAddDeadlineDetails(FileRequestAddDeadlineDetails fileRequestAddDeadlineDetails) {
        if (fileRequestAddDeadlineDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestAddDeadlineDetails(Tag.FILE_REQUEST_ADD_DEADLINE_DETAILS, fileRequestAddDeadlineDetails);
    }

    public FileRequestAddDeadlineDetails getFileRequestAddDeadlineDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_ADD_DEADLINE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_ADD_DEADLINE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestAddDeadlineDetailsValue;
    }

    public boolean isFileRequestChangeFolderDetails() {
        return this._tag == Tag.FILE_REQUEST_CHANGE_FOLDER_DETAILS;
    }

    public static EventDetails fileRequestChangeFolderDetails(FileRequestChangeFolderDetails fileRequestChangeFolderDetails) {
        if (fileRequestChangeFolderDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestChangeFolderDetails(Tag.FILE_REQUEST_CHANGE_FOLDER_DETAILS, fileRequestChangeFolderDetails);
    }

    public FileRequestChangeFolderDetails getFileRequestChangeFolderDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_CHANGE_FOLDER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CHANGE_FOLDER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestChangeFolderDetailsValue;
    }

    public boolean isFileRequestChangeTitleDetails() {
        return this._tag == Tag.FILE_REQUEST_CHANGE_TITLE_DETAILS;
    }

    public static EventDetails fileRequestChangeTitleDetails(FileRequestChangeTitleDetails fileRequestChangeTitleDetails) {
        if (fileRequestChangeTitleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestChangeTitleDetails(Tag.FILE_REQUEST_CHANGE_TITLE_DETAILS, fileRequestChangeTitleDetails);
    }

    public FileRequestChangeTitleDetails getFileRequestChangeTitleDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_CHANGE_TITLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CHANGE_TITLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestChangeTitleDetailsValue;
    }

    public boolean isFileRequestCloseDetails() {
        return this._tag == Tag.FILE_REQUEST_CLOSE_DETAILS;
    }

    public static EventDetails fileRequestCloseDetails(FileRequestCloseDetails fileRequestCloseDetails) {
        if (fileRequestCloseDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestCloseDetails(Tag.FILE_REQUEST_CLOSE_DETAILS, fileRequestCloseDetails);
    }

    public FileRequestCloseDetails getFileRequestCloseDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_CLOSE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CLOSE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestCloseDetailsValue;
    }

    public boolean isFileRequestCreateDetails() {
        return this._tag == Tag.FILE_REQUEST_CREATE_DETAILS;
    }

    public static EventDetails fileRequestCreateDetails(FileRequestCreateDetails fileRequestCreateDetails) {
        if (fileRequestCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestCreateDetails(Tag.FILE_REQUEST_CREATE_DETAILS, fileRequestCreateDetails);
    }

    public FileRequestCreateDetails getFileRequestCreateDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestCreateDetailsValue;
    }

    public boolean isFileRequestReceiveFileDetails() {
        return this._tag == Tag.FILE_REQUEST_RECEIVE_FILE_DETAILS;
    }

    public static EventDetails fileRequestReceiveFileDetails(FileRequestReceiveFileDetails fileRequestReceiveFileDetails) {
        if (fileRequestReceiveFileDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestReceiveFileDetails(Tag.FILE_REQUEST_RECEIVE_FILE_DETAILS, fileRequestReceiveFileDetails);
    }

    public FileRequestReceiveFileDetails getFileRequestReceiveFileDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_RECEIVE_FILE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_RECEIVE_FILE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestReceiveFileDetailsValue;
    }

    public boolean isFileRequestRemoveDeadlineDetails() {
        return this._tag == Tag.FILE_REQUEST_REMOVE_DEADLINE_DETAILS;
    }

    public static EventDetails fileRequestRemoveDeadlineDetails(FileRequestRemoveDeadlineDetails fileRequestRemoveDeadlineDetails) {
        if (fileRequestRemoveDeadlineDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestRemoveDeadlineDetails(Tag.FILE_REQUEST_REMOVE_DEADLINE_DETAILS, fileRequestRemoveDeadlineDetails);
    }

    public FileRequestRemoveDeadlineDetails getFileRequestRemoveDeadlineDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_REMOVE_DEADLINE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_REMOVE_DEADLINE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestRemoveDeadlineDetailsValue;
    }

    public boolean isFileRequestSendDetails() {
        return this._tag == Tag.FILE_REQUEST_SEND_DETAILS;
    }

    public static EventDetails fileRequestSendDetails(FileRequestSendDetails fileRequestSendDetails) {
        if (fileRequestSendDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestSendDetails(Tag.FILE_REQUEST_SEND_DETAILS, fileRequestSendDetails);
    }

    public FileRequestSendDetails getFileRequestSendDetailsValue() {
        if (this._tag != Tag.FILE_REQUEST_SEND_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUEST_SEND_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestSendDetailsValue;
    }

    public boolean isGroupAddExternalIdDetails() {
        return this._tag == Tag.GROUP_ADD_EXTERNAL_ID_DETAILS;
    }

    public static EventDetails groupAddExternalIdDetails(GroupAddExternalIdDetails groupAddExternalIdDetails) {
        if (groupAddExternalIdDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupAddExternalIdDetails(Tag.GROUP_ADD_EXTERNAL_ID_DETAILS, groupAddExternalIdDetails);
    }

    public GroupAddExternalIdDetails getGroupAddExternalIdDetailsValue() {
        if (this._tag != Tag.GROUP_ADD_EXTERNAL_ID_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_ADD_EXTERNAL_ID_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupAddExternalIdDetailsValue;
    }

    public boolean isGroupAddMemberDetails() {
        return this._tag == Tag.GROUP_ADD_MEMBER_DETAILS;
    }

    public static EventDetails groupAddMemberDetails(GroupAddMemberDetails groupAddMemberDetails) {
        if (groupAddMemberDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupAddMemberDetails(Tag.GROUP_ADD_MEMBER_DETAILS, groupAddMemberDetails);
    }

    public GroupAddMemberDetails getGroupAddMemberDetailsValue() {
        if (this._tag != Tag.GROUP_ADD_MEMBER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_ADD_MEMBER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupAddMemberDetailsValue;
    }

    public boolean isGroupChangeExternalIdDetails() {
        return this._tag == Tag.GROUP_CHANGE_EXTERNAL_ID_DETAILS;
    }

    public static EventDetails groupChangeExternalIdDetails(GroupChangeExternalIdDetails groupChangeExternalIdDetails) {
        if (groupChangeExternalIdDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupChangeExternalIdDetails(Tag.GROUP_CHANGE_EXTERNAL_ID_DETAILS, groupChangeExternalIdDetails);
    }

    public GroupChangeExternalIdDetails getGroupChangeExternalIdDetailsValue() {
        if (this._tag != Tag.GROUP_CHANGE_EXTERNAL_ID_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_CHANGE_EXTERNAL_ID_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupChangeExternalIdDetailsValue;
    }

    public boolean isGroupChangeManagementTypeDetails() {
        return this._tag == Tag.GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS;
    }

    public static EventDetails groupChangeManagementTypeDetails(GroupChangeManagementTypeDetails groupChangeManagementTypeDetails) {
        if (groupChangeManagementTypeDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupChangeManagementTypeDetails(Tag.GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS, groupChangeManagementTypeDetails);
    }

    public GroupChangeManagementTypeDetails getGroupChangeManagementTypeDetailsValue() {
        if (this._tag != Tag.GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupChangeManagementTypeDetailsValue;
    }

    public boolean isGroupChangeMemberRoleDetails() {
        return this._tag == Tag.GROUP_CHANGE_MEMBER_ROLE_DETAILS;
    }

    public static EventDetails groupChangeMemberRoleDetails(GroupChangeMemberRoleDetails groupChangeMemberRoleDetails) {
        if (groupChangeMemberRoleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupChangeMemberRoleDetails(Tag.GROUP_CHANGE_MEMBER_ROLE_DETAILS, groupChangeMemberRoleDetails);
    }

    public GroupChangeMemberRoleDetails getGroupChangeMemberRoleDetailsValue() {
        if (this._tag != Tag.GROUP_CHANGE_MEMBER_ROLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_CHANGE_MEMBER_ROLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupChangeMemberRoleDetailsValue;
    }

    public boolean isGroupCreateDetails() {
        return this._tag == Tag.GROUP_CREATE_DETAILS;
    }

    public static EventDetails groupCreateDetails(GroupCreateDetails groupCreateDetails) {
        if (groupCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupCreateDetails(Tag.GROUP_CREATE_DETAILS, groupCreateDetails);
    }

    public GroupCreateDetails getGroupCreateDetailsValue() {
        if (this._tag != Tag.GROUP_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupCreateDetailsValue;
    }

    public boolean isGroupDeleteDetails() {
        return this._tag == Tag.GROUP_DELETE_DETAILS;
    }

    public static EventDetails groupDeleteDetails(GroupDeleteDetails groupDeleteDetails) {
        if (groupDeleteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupDeleteDetails(Tag.GROUP_DELETE_DETAILS, groupDeleteDetails);
    }

    public GroupDeleteDetails getGroupDeleteDetailsValue() {
        if (this._tag != Tag.GROUP_DELETE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_DELETE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupDeleteDetailsValue;
    }

    public boolean isGroupMovedDetails() {
        return this._tag == Tag.GROUP_MOVED_DETAILS;
    }

    public static EventDetails groupMovedDetails(GroupMovedDetails groupMovedDetails) {
        if (groupMovedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupMovedDetails(Tag.GROUP_MOVED_DETAILS, groupMovedDetails);
    }

    public GroupMovedDetails getGroupMovedDetailsValue() {
        if (this._tag != Tag.GROUP_MOVED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_MOVED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupMovedDetailsValue;
    }

    public boolean isGroupRemoveExternalIdDetails() {
        return this._tag == Tag.GROUP_REMOVE_EXTERNAL_ID_DETAILS;
    }

    public static EventDetails groupRemoveExternalIdDetails(GroupRemoveExternalIdDetails groupRemoveExternalIdDetails) {
        if (groupRemoveExternalIdDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupRemoveExternalIdDetails(Tag.GROUP_REMOVE_EXTERNAL_ID_DETAILS, groupRemoveExternalIdDetails);
    }

    public GroupRemoveExternalIdDetails getGroupRemoveExternalIdDetailsValue() {
        if (this._tag != Tag.GROUP_REMOVE_EXTERNAL_ID_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_REMOVE_EXTERNAL_ID_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupRemoveExternalIdDetailsValue;
    }

    public boolean isGroupRemoveMemberDetails() {
        return this._tag == Tag.GROUP_REMOVE_MEMBER_DETAILS;
    }

    public static EventDetails groupRemoveMemberDetails(GroupRemoveMemberDetails groupRemoveMemberDetails) {
        if (groupRemoveMemberDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupRemoveMemberDetails(Tag.GROUP_REMOVE_MEMBER_DETAILS, groupRemoveMemberDetails);
    }

    public GroupRemoveMemberDetails getGroupRemoveMemberDetailsValue() {
        if (this._tag != Tag.GROUP_REMOVE_MEMBER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_REMOVE_MEMBER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupRemoveMemberDetailsValue;
    }

    public boolean isGroupRenameDetails() {
        return this._tag == Tag.GROUP_RENAME_DETAILS;
    }

    public static EventDetails groupRenameDetails(GroupRenameDetails groupRenameDetails) {
        if (groupRenameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupRenameDetails(Tag.GROUP_RENAME_DETAILS, groupRenameDetails);
    }

    public GroupRenameDetails getGroupRenameDetailsValue() {
        if (this._tag != Tag.GROUP_RENAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_RENAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupRenameDetailsValue;
    }

    public boolean isEmmLoginSuccessDetails() {
        return this._tag == Tag.EMM_LOGIN_SUCCESS_DETAILS;
    }

    public static EventDetails emmLoginSuccessDetails(EmmLoginSuccessDetails emmLoginSuccessDetails) {
        if (emmLoginSuccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmLoginSuccessDetails(Tag.EMM_LOGIN_SUCCESS_DETAILS, emmLoginSuccessDetails);
    }

    public EmmLoginSuccessDetails getEmmLoginSuccessDetailsValue() {
        if (this._tag != Tag.EMM_LOGIN_SUCCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_LOGIN_SUCCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmLoginSuccessDetailsValue;
    }

    public boolean isLogoutDetails() {
        return this._tag == Tag.LOGOUT_DETAILS;
    }

    public static EventDetails logoutDetails(LogoutDetails logoutDetails) {
        if (logoutDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndLogoutDetails(Tag.LOGOUT_DETAILS, logoutDetails);
    }

    public LogoutDetails getLogoutDetailsValue() {
        if (this._tag != Tag.LOGOUT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.LOGOUT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.logoutDetailsValue;
    }

    public boolean isPasswordLoginFailDetails() {
        return this._tag == Tag.PASSWORD_LOGIN_FAIL_DETAILS;
    }

    public static EventDetails passwordLoginFailDetails(PasswordLoginFailDetails passwordLoginFailDetails) {
        if (passwordLoginFailDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPasswordLoginFailDetails(Tag.PASSWORD_LOGIN_FAIL_DETAILS, passwordLoginFailDetails);
    }

    public PasswordLoginFailDetails getPasswordLoginFailDetailsValue() {
        if (this._tag != Tag.PASSWORD_LOGIN_FAIL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_LOGIN_FAIL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.passwordLoginFailDetailsValue;
    }

    public boolean isPasswordLoginSuccessDetails() {
        return this._tag == Tag.PASSWORD_LOGIN_SUCCESS_DETAILS;
    }

    public static EventDetails passwordLoginSuccessDetails(PasswordLoginSuccessDetails passwordLoginSuccessDetails) {
        if (passwordLoginSuccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPasswordLoginSuccessDetails(Tag.PASSWORD_LOGIN_SUCCESS_DETAILS, passwordLoginSuccessDetails);
    }

    public PasswordLoginSuccessDetails getPasswordLoginSuccessDetailsValue() {
        if (this._tag != Tag.PASSWORD_LOGIN_SUCCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_LOGIN_SUCCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.passwordLoginSuccessDetailsValue;
    }

    public boolean isResellerSupportSessionEndDetails() {
        return this._tag == Tag.RESELLER_SUPPORT_SESSION_END_DETAILS;
    }

    public static EventDetails resellerSupportSessionEndDetails(ResellerSupportSessionEndDetails resellerSupportSessionEndDetails) {
        if (resellerSupportSessionEndDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndResellerSupportSessionEndDetails(Tag.RESELLER_SUPPORT_SESSION_END_DETAILS, resellerSupportSessionEndDetails);
    }

    public ResellerSupportSessionEndDetails getResellerSupportSessionEndDetailsValue() {
        if (this._tag != Tag.RESELLER_SUPPORT_SESSION_END_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.RESELLER_SUPPORT_SESSION_END_DETAILS, but was Tag." + this._tag.name());
        }
        return this.resellerSupportSessionEndDetailsValue;
    }

    public boolean isResellerSupportSessionStartDetails() {
        return this._tag == Tag.RESELLER_SUPPORT_SESSION_START_DETAILS;
    }

    public static EventDetails resellerSupportSessionStartDetails(ResellerSupportSessionStartDetails resellerSupportSessionStartDetails) {
        if (resellerSupportSessionStartDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndResellerSupportSessionStartDetails(Tag.RESELLER_SUPPORT_SESSION_START_DETAILS, resellerSupportSessionStartDetails);
    }

    public ResellerSupportSessionStartDetails getResellerSupportSessionStartDetailsValue() {
        if (this._tag != Tag.RESELLER_SUPPORT_SESSION_START_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.RESELLER_SUPPORT_SESSION_START_DETAILS, but was Tag." + this._tag.name());
        }
        return this.resellerSupportSessionStartDetailsValue;
    }

    public boolean isSignInAsSessionEndDetails() {
        return this._tag == Tag.SIGN_IN_AS_SESSION_END_DETAILS;
    }

    public static EventDetails signInAsSessionEndDetails(SignInAsSessionEndDetails signInAsSessionEndDetails) {
        if (signInAsSessionEndDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSignInAsSessionEndDetails(Tag.SIGN_IN_AS_SESSION_END_DETAILS, signInAsSessionEndDetails);
    }

    public SignInAsSessionEndDetails getSignInAsSessionEndDetailsValue() {
        if (this._tag != Tag.SIGN_IN_AS_SESSION_END_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SIGN_IN_AS_SESSION_END_DETAILS, but was Tag." + this._tag.name());
        }
        return this.signInAsSessionEndDetailsValue;
    }

    public boolean isSignInAsSessionStartDetails() {
        return this._tag == Tag.SIGN_IN_AS_SESSION_START_DETAILS;
    }

    public static EventDetails signInAsSessionStartDetails(SignInAsSessionStartDetails signInAsSessionStartDetails) {
        if (signInAsSessionStartDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSignInAsSessionStartDetails(Tag.SIGN_IN_AS_SESSION_START_DETAILS, signInAsSessionStartDetails);
    }

    public SignInAsSessionStartDetails getSignInAsSessionStartDetailsValue() {
        if (this._tag != Tag.SIGN_IN_AS_SESSION_START_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SIGN_IN_AS_SESSION_START_DETAILS, but was Tag." + this._tag.name());
        }
        return this.signInAsSessionStartDetailsValue;
    }

    public boolean isSsoLoginFailDetails() {
        return this._tag == Tag.SSO_LOGIN_FAIL_DETAILS;
    }

    public static EventDetails ssoLoginFailDetails(SsoLoginFailDetails ssoLoginFailDetails) {
        if (ssoLoginFailDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoLoginFailDetails(Tag.SSO_LOGIN_FAIL_DETAILS, ssoLoginFailDetails);
    }

    public SsoLoginFailDetails getSsoLoginFailDetailsValue() {
        if (this._tag != Tag.SSO_LOGIN_FAIL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_LOGIN_FAIL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoLoginFailDetailsValue;
    }

    public boolean isMemberAddNameDetails() {
        return this._tag == Tag.MEMBER_ADD_NAME_DETAILS;
    }

    public static EventDetails memberAddNameDetails(MemberAddNameDetails memberAddNameDetails) {
        if (memberAddNameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberAddNameDetails(Tag.MEMBER_ADD_NAME_DETAILS, memberAddNameDetails);
    }

    public MemberAddNameDetails getMemberAddNameDetailsValue() {
        if (this._tag != Tag.MEMBER_ADD_NAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ADD_NAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberAddNameDetailsValue;
    }

    public boolean isMemberChangeAdminRoleDetails() {
        return this._tag == Tag.MEMBER_CHANGE_ADMIN_ROLE_DETAILS;
    }

    public static EventDetails memberChangeAdminRoleDetails(MemberChangeAdminRoleDetails memberChangeAdminRoleDetails) {
        if (memberChangeAdminRoleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberChangeAdminRoleDetails(Tag.MEMBER_CHANGE_ADMIN_ROLE_DETAILS, memberChangeAdminRoleDetails);
    }

    public MemberChangeAdminRoleDetails getMemberChangeAdminRoleDetailsValue() {
        if (this._tag != Tag.MEMBER_CHANGE_ADMIN_ROLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_ADMIN_ROLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberChangeAdminRoleDetailsValue;
    }

    public boolean isMemberChangeEmailDetails() {
        return this._tag == Tag.MEMBER_CHANGE_EMAIL_DETAILS;
    }

    public static EventDetails memberChangeEmailDetails(MemberChangeEmailDetails memberChangeEmailDetails) {
        if (memberChangeEmailDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberChangeEmailDetails(Tag.MEMBER_CHANGE_EMAIL_DETAILS, memberChangeEmailDetails);
    }

    public MemberChangeEmailDetails getMemberChangeEmailDetailsValue() {
        if (this._tag != Tag.MEMBER_CHANGE_EMAIL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_EMAIL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberChangeEmailDetailsValue;
    }

    public boolean isMemberChangeNameDetails() {
        return this._tag == Tag.MEMBER_CHANGE_NAME_DETAILS;
    }

    public static EventDetails memberChangeNameDetails(MemberChangeNameDetails memberChangeNameDetails) {
        if (memberChangeNameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberChangeNameDetails(Tag.MEMBER_CHANGE_NAME_DETAILS, memberChangeNameDetails);
    }

    public MemberChangeNameDetails getMemberChangeNameDetailsValue() {
        if (this._tag != Tag.MEMBER_CHANGE_NAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_NAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberChangeNameDetailsValue;
    }

    public boolean isMemberChangeStatusDetails() {
        return this._tag == Tag.MEMBER_CHANGE_STATUS_DETAILS;
    }

    public static EventDetails memberChangeStatusDetails(MemberChangeStatusDetails memberChangeStatusDetails) {
        if (memberChangeStatusDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberChangeStatusDetails(Tag.MEMBER_CHANGE_STATUS_DETAILS, memberChangeStatusDetails);
    }

    public MemberChangeStatusDetails getMemberChangeStatusDetailsValue() {
        if (this._tag != Tag.MEMBER_CHANGE_STATUS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_CHANGE_STATUS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberChangeStatusDetailsValue;
    }

    public boolean isMemberSuggestDetails() {
        return this._tag == Tag.MEMBER_SUGGEST_DETAILS;
    }

    public static EventDetails memberSuggestDetails(MemberSuggestDetails memberSuggestDetails) {
        if (memberSuggestDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberSuggestDetails(Tag.MEMBER_SUGGEST_DETAILS, memberSuggestDetails);
    }

    public MemberSuggestDetails getMemberSuggestDetailsValue() {
        if (this._tag != Tag.MEMBER_SUGGEST_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SUGGEST_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberSuggestDetailsValue;
    }

    public boolean isPaperContentAddMemberDetails() {
        return this._tag == Tag.PAPER_CONTENT_ADD_MEMBER_DETAILS;
    }

    public static EventDetails paperContentAddMemberDetails(PaperContentAddMemberDetails paperContentAddMemberDetails) {
        if (paperContentAddMemberDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentAddMemberDetails(Tag.PAPER_CONTENT_ADD_MEMBER_DETAILS, paperContentAddMemberDetails);
    }

    public PaperContentAddMemberDetails getPaperContentAddMemberDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_ADD_MEMBER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_ADD_MEMBER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentAddMemberDetailsValue;
    }

    public boolean isPaperContentAddToFolderDetails() {
        return this._tag == Tag.PAPER_CONTENT_ADD_TO_FOLDER_DETAILS;
    }

    public static EventDetails paperContentAddToFolderDetails(PaperContentAddToFolderDetails paperContentAddToFolderDetails) {
        if (paperContentAddToFolderDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentAddToFolderDetails(Tag.PAPER_CONTENT_ADD_TO_FOLDER_DETAILS, paperContentAddToFolderDetails);
    }

    public PaperContentAddToFolderDetails getPaperContentAddToFolderDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_ADD_TO_FOLDER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_ADD_TO_FOLDER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentAddToFolderDetailsValue;
    }

    public boolean isPaperContentArchiveDetails() {
        return this._tag == Tag.PAPER_CONTENT_ARCHIVE_DETAILS;
    }

    public static EventDetails paperContentArchiveDetails(PaperContentArchiveDetails paperContentArchiveDetails) {
        if (paperContentArchiveDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentArchiveDetails(Tag.PAPER_CONTENT_ARCHIVE_DETAILS, paperContentArchiveDetails);
    }

    public PaperContentArchiveDetails getPaperContentArchiveDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_ARCHIVE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_ARCHIVE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentArchiveDetailsValue;
    }

    public boolean isPaperContentCreateDetails() {
        return this._tag == Tag.PAPER_CONTENT_CREATE_DETAILS;
    }

    public static EventDetails paperContentCreateDetails(PaperContentCreateDetails paperContentCreateDetails) {
        if (paperContentCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentCreateDetails(Tag.PAPER_CONTENT_CREATE_DETAILS, paperContentCreateDetails);
    }

    public PaperContentCreateDetails getPaperContentCreateDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentCreateDetailsValue;
    }

    public boolean isPaperContentPermanentlyDeleteDetails() {
        return this._tag == Tag.PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS;
    }

    public static EventDetails paperContentPermanentlyDeleteDetails(PaperContentPermanentlyDeleteDetails paperContentPermanentlyDeleteDetails) {
        if (paperContentPermanentlyDeleteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentPermanentlyDeleteDetails(Tag.PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS, paperContentPermanentlyDeleteDetails);
    }

    public PaperContentPermanentlyDeleteDetails getPaperContentPermanentlyDeleteDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentPermanentlyDeleteDetailsValue;
    }

    public boolean isPaperContentRemoveFromFolderDetails() {
        return this._tag == Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS;
    }

    public static EventDetails paperContentRemoveFromFolderDetails(PaperContentRemoveFromFolderDetails paperContentRemoveFromFolderDetails) {
        if (paperContentRemoveFromFolderDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentRemoveFromFolderDetails(Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS, paperContentRemoveFromFolderDetails);
    }

    public PaperContentRemoveFromFolderDetails getPaperContentRemoveFromFolderDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentRemoveFromFolderDetailsValue;
    }

    public boolean isPaperContentRemoveMemberDetails() {
        return this._tag == Tag.PAPER_CONTENT_REMOVE_MEMBER_DETAILS;
    }

    public static EventDetails paperContentRemoveMemberDetails(PaperContentRemoveMemberDetails paperContentRemoveMemberDetails) {
        if (paperContentRemoveMemberDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentRemoveMemberDetails(Tag.PAPER_CONTENT_REMOVE_MEMBER_DETAILS, paperContentRemoveMemberDetails);
    }

    public PaperContentRemoveMemberDetails getPaperContentRemoveMemberDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_REMOVE_MEMBER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_REMOVE_MEMBER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentRemoveMemberDetailsValue;
    }

    public boolean isPaperContentRenameDetails() {
        return this._tag == Tag.PAPER_CONTENT_RENAME_DETAILS;
    }

    public static EventDetails paperContentRenameDetails(PaperContentRenameDetails paperContentRenameDetails) {
        if (paperContentRenameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentRenameDetails(Tag.PAPER_CONTENT_RENAME_DETAILS, paperContentRenameDetails);
    }

    public PaperContentRenameDetails getPaperContentRenameDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_RENAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_RENAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentRenameDetailsValue;
    }

    public boolean isPaperContentRestoreDetails() {
        return this._tag == Tag.PAPER_CONTENT_RESTORE_DETAILS;
    }

    public static EventDetails paperContentRestoreDetails(PaperContentRestoreDetails paperContentRestoreDetails) {
        if (paperContentRestoreDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperContentRestoreDetails(Tag.PAPER_CONTENT_RESTORE_DETAILS, paperContentRestoreDetails);
    }

    public PaperContentRestoreDetails getPaperContentRestoreDetailsValue() {
        if (this._tag != Tag.PAPER_CONTENT_RESTORE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CONTENT_RESTORE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperContentRestoreDetailsValue;
    }

    public boolean isPaperDocAddCommentDetails() {
        return this._tag == Tag.PAPER_DOC_ADD_COMMENT_DETAILS;
    }

    public static EventDetails paperDocAddCommentDetails(PaperDocAddCommentDetails paperDocAddCommentDetails) {
        if (paperDocAddCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocAddCommentDetails(Tag.PAPER_DOC_ADD_COMMENT_DETAILS, paperDocAddCommentDetails);
    }

    public PaperDocAddCommentDetails getPaperDocAddCommentDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_ADD_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_ADD_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocAddCommentDetailsValue;
    }

    public boolean isPaperDocChangeMemberRoleDetails() {
        return this._tag == Tag.PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS;
    }

    public static EventDetails paperDocChangeMemberRoleDetails(PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails) {
        if (paperDocChangeMemberRoleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocChangeMemberRoleDetails(Tag.PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS, paperDocChangeMemberRoleDetails);
    }

    public PaperDocChangeMemberRoleDetails getPaperDocChangeMemberRoleDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocChangeMemberRoleDetailsValue;
    }

    public boolean isPaperDocChangeSharingPolicyDetails() {
        return this._tag == Tag.PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS;
    }

    public static EventDetails paperDocChangeSharingPolicyDetails(PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails) {
        if (paperDocChangeSharingPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocChangeSharingPolicyDetails(Tag.PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS, paperDocChangeSharingPolicyDetails);
    }

    public PaperDocChangeSharingPolicyDetails getPaperDocChangeSharingPolicyDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocChangeSharingPolicyDetailsValue;
    }

    public boolean isPaperDocChangeSubscriptionDetails() {
        return this._tag == Tag.PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS;
    }

    public static EventDetails paperDocChangeSubscriptionDetails(PaperDocChangeSubscriptionDetails paperDocChangeSubscriptionDetails) {
        if (paperDocChangeSubscriptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocChangeSubscriptionDetails(Tag.PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS, paperDocChangeSubscriptionDetails);
    }

    public PaperDocChangeSubscriptionDetails getPaperDocChangeSubscriptionDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocChangeSubscriptionDetailsValue;
    }

    public boolean isPaperDocDeletedDetails() {
        return this._tag == Tag.PAPER_DOC_DELETED_DETAILS;
    }

    public static EventDetails paperDocDeletedDetails(PaperDocDeletedDetails paperDocDeletedDetails) {
        if (paperDocDeletedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocDeletedDetails(Tag.PAPER_DOC_DELETED_DETAILS, paperDocDeletedDetails);
    }

    public PaperDocDeletedDetails getPaperDocDeletedDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_DELETED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_DELETED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocDeletedDetailsValue;
    }

    public boolean isPaperDocDeleteCommentDetails() {
        return this._tag == Tag.PAPER_DOC_DELETE_COMMENT_DETAILS;
    }

    public static EventDetails paperDocDeleteCommentDetails(PaperDocDeleteCommentDetails paperDocDeleteCommentDetails) {
        if (paperDocDeleteCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocDeleteCommentDetails(Tag.PAPER_DOC_DELETE_COMMENT_DETAILS, paperDocDeleteCommentDetails);
    }

    public PaperDocDeleteCommentDetails getPaperDocDeleteCommentDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_DELETE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_DELETE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocDeleteCommentDetailsValue;
    }

    public boolean isPaperDocDownloadDetails() {
        return this._tag == Tag.PAPER_DOC_DOWNLOAD_DETAILS;
    }

    public static EventDetails paperDocDownloadDetails(PaperDocDownloadDetails paperDocDownloadDetails) {
        if (paperDocDownloadDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocDownloadDetails(Tag.PAPER_DOC_DOWNLOAD_DETAILS, paperDocDownloadDetails);
    }

    public PaperDocDownloadDetails getPaperDocDownloadDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_DOWNLOAD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_DOWNLOAD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocDownloadDetailsValue;
    }

    public boolean isPaperDocEditDetails() {
        return this._tag == Tag.PAPER_DOC_EDIT_DETAILS;
    }

    public static EventDetails paperDocEditDetails(PaperDocEditDetails paperDocEditDetails) {
        if (paperDocEditDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocEditDetails(Tag.PAPER_DOC_EDIT_DETAILS, paperDocEditDetails);
    }

    public PaperDocEditDetails getPaperDocEditDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_EDIT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_EDIT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocEditDetailsValue;
    }

    public boolean isPaperDocEditCommentDetails() {
        return this._tag == Tag.PAPER_DOC_EDIT_COMMENT_DETAILS;
    }

    public static EventDetails paperDocEditCommentDetails(PaperDocEditCommentDetails paperDocEditCommentDetails) {
        if (paperDocEditCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocEditCommentDetails(Tag.PAPER_DOC_EDIT_COMMENT_DETAILS, paperDocEditCommentDetails);
    }

    public PaperDocEditCommentDetails getPaperDocEditCommentDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_EDIT_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_EDIT_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocEditCommentDetailsValue;
    }

    public boolean isPaperDocFollowedDetails() {
        return this._tag == Tag.PAPER_DOC_FOLLOWED_DETAILS;
    }

    public static EventDetails paperDocFollowedDetails(PaperDocFollowedDetails paperDocFollowedDetails) {
        if (paperDocFollowedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocFollowedDetails(Tag.PAPER_DOC_FOLLOWED_DETAILS, paperDocFollowedDetails);
    }

    public PaperDocFollowedDetails getPaperDocFollowedDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_FOLLOWED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_FOLLOWED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocFollowedDetailsValue;
    }

    public boolean isPaperDocMentionDetails() {
        return this._tag == Tag.PAPER_DOC_MENTION_DETAILS;
    }

    public static EventDetails paperDocMentionDetails(PaperDocMentionDetails paperDocMentionDetails) {
        if (paperDocMentionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocMentionDetails(Tag.PAPER_DOC_MENTION_DETAILS, paperDocMentionDetails);
    }

    public PaperDocMentionDetails getPaperDocMentionDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_MENTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_MENTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocMentionDetailsValue;
    }

    public boolean isPaperDocRequestAccessDetails() {
        return this._tag == Tag.PAPER_DOC_REQUEST_ACCESS_DETAILS;
    }

    public static EventDetails paperDocRequestAccessDetails(PaperDocRequestAccessDetails paperDocRequestAccessDetails) {
        if (paperDocRequestAccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocRequestAccessDetails(Tag.PAPER_DOC_REQUEST_ACCESS_DETAILS, paperDocRequestAccessDetails);
    }

    public PaperDocRequestAccessDetails getPaperDocRequestAccessDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_REQUEST_ACCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_REQUEST_ACCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocRequestAccessDetailsValue;
    }

    public boolean isPaperDocResolveCommentDetails() {
        return this._tag == Tag.PAPER_DOC_RESOLVE_COMMENT_DETAILS;
    }

    public static EventDetails paperDocResolveCommentDetails(PaperDocResolveCommentDetails paperDocResolveCommentDetails) {
        if (paperDocResolveCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocResolveCommentDetails(Tag.PAPER_DOC_RESOLVE_COMMENT_DETAILS, paperDocResolveCommentDetails);
    }

    public PaperDocResolveCommentDetails getPaperDocResolveCommentDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_RESOLVE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_RESOLVE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocResolveCommentDetailsValue;
    }

    public boolean isPaperDocRevertDetails() {
        return this._tag == Tag.PAPER_DOC_REVERT_DETAILS;
    }

    public static EventDetails paperDocRevertDetails(PaperDocRevertDetails paperDocRevertDetails) {
        if (paperDocRevertDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocRevertDetails(Tag.PAPER_DOC_REVERT_DETAILS, paperDocRevertDetails);
    }

    public PaperDocRevertDetails getPaperDocRevertDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_REVERT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_REVERT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocRevertDetailsValue;
    }

    public boolean isPaperDocSlackShareDetails() {
        return this._tag == Tag.PAPER_DOC_SLACK_SHARE_DETAILS;
    }

    public static EventDetails paperDocSlackShareDetails(PaperDocSlackShareDetails paperDocSlackShareDetails) {
        if (paperDocSlackShareDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocSlackShareDetails(Tag.PAPER_DOC_SLACK_SHARE_DETAILS, paperDocSlackShareDetails);
    }

    public PaperDocSlackShareDetails getPaperDocSlackShareDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_SLACK_SHARE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_SLACK_SHARE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocSlackShareDetailsValue;
    }

    public boolean isPaperDocTeamInviteDetails() {
        return this._tag == Tag.PAPER_DOC_TEAM_INVITE_DETAILS;
    }

    public static EventDetails paperDocTeamInviteDetails(PaperDocTeamInviteDetails paperDocTeamInviteDetails) {
        if (paperDocTeamInviteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocTeamInviteDetails(Tag.PAPER_DOC_TEAM_INVITE_DETAILS, paperDocTeamInviteDetails);
    }

    public PaperDocTeamInviteDetails getPaperDocTeamInviteDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_TEAM_INVITE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_TEAM_INVITE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocTeamInviteDetailsValue;
    }

    public boolean isPaperDocTrashedDetails() {
        return this._tag == Tag.PAPER_DOC_TRASHED_DETAILS;
    }

    public static EventDetails paperDocTrashedDetails(PaperDocTrashedDetails paperDocTrashedDetails) {
        if (paperDocTrashedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocTrashedDetails(Tag.PAPER_DOC_TRASHED_DETAILS, paperDocTrashedDetails);
    }

    public PaperDocTrashedDetails getPaperDocTrashedDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_TRASHED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_TRASHED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocTrashedDetailsValue;
    }

    public boolean isPaperDocUnresolveCommentDetails() {
        return this._tag == Tag.PAPER_DOC_UNRESOLVE_COMMENT_DETAILS;
    }

    public static EventDetails paperDocUnresolveCommentDetails(PaperDocUnresolveCommentDetails paperDocUnresolveCommentDetails) {
        if (paperDocUnresolveCommentDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocUnresolveCommentDetails(Tag.PAPER_DOC_UNRESOLVE_COMMENT_DETAILS, paperDocUnresolveCommentDetails);
    }

    public PaperDocUnresolveCommentDetails getPaperDocUnresolveCommentDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_UNRESOLVE_COMMENT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_UNRESOLVE_COMMENT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocUnresolveCommentDetailsValue;
    }

    public boolean isPaperDocUntrashedDetails() {
        return this._tag == Tag.PAPER_DOC_UNTRASHED_DETAILS;
    }

    public static EventDetails paperDocUntrashedDetails(PaperDocUntrashedDetails paperDocUntrashedDetails) {
        if (paperDocUntrashedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocUntrashedDetails(Tag.PAPER_DOC_UNTRASHED_DETAILS, paperDocUntrashedDetails);
    }

    public PaperDocUntrashedDetails getPaperDocUntrashedDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_UNTRASHED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_UNTRASHED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocUntrashedDetailsValue;
    }

    public boolean isPaperDocViewDetails() {
        return this._tag == Tag.PAPER_DOC_VIEW_DETAILS;
    }

    public static EventDetails paperDocViewDetails(PaperDocViewDetails paperDocViewDetails) {
        if (paperDocViewDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperDocViewDetails(Tag.PAPER_DOC_VIEW_DETAILS, paperDocViewDetails);
    }

    public PaperDocViewDetails getPaperDocViewDetailsValue() {
        if (this._tag != Tag.PAPER_DOC_VIEW_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOC_VIEW_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperDocViewDetailsValue;
    }

    public boolean isPaperFolderChangeSubscriptionDetails() {
        return this._tag == Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS;
    }

    public static EventDetails paperFolderChangeSubscriptionDetails(PaperFolderChangeSubscriptionDetails paperFolderChangeSubscriptionDetails) {
        if (paperFolderChangeSubscriptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperFolderChangeSubscriptionDetails(Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS, paperFolderChangeSubscriptionDetails);
    }

    public PaperFolderChangeSubscriptionDetails getPaperFolderChangeSubscriptionDetailsValue() {
        if (this._tag != Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperFolderChangeSubscriptionDetailsValue;
    }

    public boolean isPaperFolderDeletedDetails() {
        return this._tag == Tag.PAPER_FOLDER_DELETED_DETAILS;
    }

    public static EventDetails paperFolderDeletedDetails(PaperFolderDeletedDetails paperFolderDeletedDetails) {
        if (paperFolderDeletedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperFolderDeletedDetails(Tag.PAPER_FOLDER_DELETED_DETAILS, paperFolderDeletedDetails);
    }

    public PaperFolderDeletedDetails getPaperFolderDeletedDetailsValue() {
        if (this._tag != Tag.PAPER_FOLDER_DELETED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_DELETED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperFolderDeletedDetailsValue;
    }

    public boolean isPaperFolderFollowedDetails() {
        return this._tag == Tag.PAPER_FOLDER_FOLLOWED_DETAILS;
    }

    public static EventDetails paperFolderFollowedDetails(PaperFolderFollowedDetails paperFolderFollowedDetails) {
        if (paperFolderFollowedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperFolderFollowedDetails(Tag.PAPER_FOLDER_FOLLOWED_DETAILS, paperFolderFollowedDetails);
    }

    public PaperFolderFollowedDetails getPaperFolderFollowedDetailsValue() {
        if (this._tag != Tag.PAPER_FOLDER_FOLLOWED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_FOLLOWED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperFolderFollowedDetailsValue;
    }

    public boolean isPaperFolderTeamInviteDetails() {
        return this._tag == Tag.PAPER_FOLDER_TEAM_INVITE_DETAILS;
    }

    public static EventDetails paperFolderTeamInviteDetails(PaperFolderTeamInviteDetails paperFolderTeamInviteDetails) {
        if (paperFolderTeamInviteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperFolderTeamInviteDetails(Tag.PAPER_FOLDER_TEAM_INVITE_DETAILS, paperFolderTeamInviteDetails);
    }

    public PaperFolderTeamInviteDetails getPaperFolderTeamInviteDetailsValue() {
        if (this._tag != Tag.PAPER_FOLDER_TEAM_INVITE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER_TEAM_INVITE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperFolderTeamInviteDetailsValue;
    }

    public boolean isPasswordChangeDetails() {
        return this._tag == Tag.PASSWORD_CHANGE_DETAILS;
    }

    public static EventDetails passwordChangeDetails(PasswordChangeDetails passwordChangeDetails) {
        if (passwordChangeDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPasswordChangeDetails(Tag.PASSWORD_CHANGE_DETAILS, passwordChangeDetails);
    }

    public PasswordChangeDetails getPasswordChangeDetailsValue() {
        if (this._tag != Tag.PASSWORD_CHANGE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_CHANGE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.passwordChangeDetailsValue;
    }

    public boolean isPasswordResetDetails() {
        return this._tag == Tag.PASSWORD_RESET_DETAILS;
    }

    public static EventDetails passwordResetDetails(PasswordResetDetails passwordResetDetails) {
        if (passwordResetDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPasswordResetDetails(Tag.PASSWORD_RESET_DETAILS, passwordResetDetails);
    }

    public PasswordResetDetails getPasswordResetDetailsValue() {
        if (this._tag != Tag.PASSWORD_RESET_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_RESET_DETAILS, but was Tag." + this._tag.name());
        }
        return this.passwordResetDetailsValue;
    }

    public boolean isPasswordResetAllDetails() {
        return this._tag == Tag.PASSWORD_RESET_ALL_DETAILS;
    }

    public static EventDetails passwordResetAllDetails(PasswordResetAllDetails passwordResetAllDetails) {
        if (passwordResetAllDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPasswordResetAllDetails(Tag.PASSWORD_RESET_ALL_DETAILS, passwordResetAllDetails);
    }

    public PasswordResetAllDetails getPasswordResetAllDetailsValue() {
        if (this._tag != Tag.PASSWORD_RESET_ALL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PASSWORD_RESET_ALL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.passwordResetAllDetailsValue;
    }

    public boolean isEmmCreateExceptionsReportDetails() {
        return this._tag == Tag.EMM_CREATE_EXCEPTIONS_REPORT_DETAILS;
    }

    public static EventDetails emmCreateExceptionsReportDetails(EmmCreateExceptionsReportDetails emmCreateExceptionsReportDetails) {
        if (emmCreateExceptionsReportDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmCreateExceptionsReportDetails(Tag.EMM_CREATE_EXCEPTIONS_REPORT_DETAILS, emmCreateExceptionsReportDetails);
    }

    public EmmCreateExceptionsReportDetails getEmmCreateExceptionsReportDetailsValue() {
        if (this._tag != Tag.EMM_CREATE_EXCEPTIONS_REPORT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_CREATE_EXCEPTIONS_REPORT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmCreateExceptionsReportDetailsValue;
    }

    public boolean isEmmCreateUsageReportDetails() {
        return this._tag == Tag.EMM_CREATE_USAGE_REPORT_DETAILS;
    }

    public static EventDetails emmCreateUsageReportDetails(EmmCreateUsageReportDetails emmCreateUsageReportDetails) {
        if (emmCreateUsageReportDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmCreateUsageReportDetails(Tag.EMM_CREATE_USAGE_REPORT_DETAILS, emmCreateUsageReportDetails);
    }

    public EmmCreateUsageReportDetails getEmmCreateUsageReportDetailsValue() {
        if (this._tag != Tag.EMM_CREATE_USAGE_REPORT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_CREATE_USAGE_REPORT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmCreateUsageReportDetailsValue;
    }

    public boolean isSmartSyncCreateAdminPrivilegeReportDetails() {
        return this._tag == Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS;
    }

    public static EventDetails smartSyncCreateAdminPrivilegeReportDetails(SmartSyncCreateAdminPrivilegeReportDetails smartSyncCreateAdminPrivilegeReportDetails) {
        if (smartSyncCreateAdminPrivilegeReportDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSmartSyncCreateAdminPrivilegeReportDetails(Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS, smartSyncCreateAdminPrivilegeReportDetails);
    }

    public SmartSyncCreateAdminPrivilegeReportDetails getSmartSyncCreateAdminPrivilegeReportDetailsValue() {
        if (this._tag != Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.smartSyncCreateAdminPrivilegeReportDetailsValue;
    }

    public boolean isTeamActivityCreateReportDetails() {
        return this._tag == Tag.TEAM_ACTIVITY_CREATE_REPORT_DETAILS;
    }

    public static EventDetails teamActivityCreateReportDetails(TeamActivityCreateReportDetails teamActivityCreateReportDetails) {
        if (teamActivityCreateReportDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamActivityCreateReportDetails(Tag.TEAM_ACTIVITY_CREATE_REPORT_DETAILS, teamActivityCreateReportDetails);
    }

    public TeamActivityCreateReportDetails getTeamActivityCreateReportDetailsValue() {
        if (this._tag != Tag.TEAM_ACTIVITY_CREATE_REPORT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_ACTIVITY_CREATE_REPORT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamActivityCreateReportDetailsValue;
    }

    public boolean isCollectionShareDetails() {
        return this._tag == Tag.COLLECTION_SHARE_DETAILS;
    }

    public static EventDetails collectionShareDetails(CollectionShareDetails collectionShareDetails) {
        if (collectionShareDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndCollectionShareDetails(Tag.COLLECTION_SHARE_DETAILS, collectionShareDetails);
    }

    public CollectionShareDetails getCollectionShareDetailsValue() {
        if (this._tag != Tag.COLLECTION_SHARE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.COLLECTION_SHARE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.collectionShareDetailsValue;
    }

    public boolean isNoteAclInviteOnlyDetails() {
        return this._tag == Tag.NOTE_ACL_INVITE_ONLY_DETAILS;
    }

    public static EventDetails noteAclInviteOnlyDetails(NoteAclInviteOnlyDetails noteAclInviteOnlyDetails) {
        if (noteAclInviteOnlyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndNoteAclInviteOnlyDetails(Tag.NOTE_ACL_INVITE_ONLY_DETAILS, noteAclInviteOnlyDetails);
    }

    public NoteAclInviteOnlyDetails getNoteAclInviteOnlyDetailsValue() {
        if (this._tag != Tag.NOTE_ACL_INVITE_ONLY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.NOTE_ACL_INVITE_ONLY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.noteAclInviteOnlyDetailsValue;
    }

    public boolean isNoteAclLinkDetails() {
        return this._tag == Tag.NOTE_ACL_LINK_DETAILS;
    }

    public static EventDetails noteAclLinkDetails(NoteAclLinkDetails noteAclLinkDetails) {
        if (noteAclLinkDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndNoteAclLinkDetails(Tag.NOTE_ACL_LINK_DETAILS, noteAclLinkDetails);
    }

    public NoteAclLinkDetails getNoteAclLinkDetailsValue() {
        if (this._tag != Tag.NOTE_ACL_LINK_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.NOTE_ACL_LINK_DETAILS, but was Tag." + this._tag.name());
        }
        return this.noteAclLinkDetailsValue;
    }

    public boolean isNoteAclTeamLinkDetails() {
        return this._tag == Tag.NOTE_ACL_TEAM_LINK_DETAILS;
    }

    public static EventDetails noteAclTeamLinkDetails(NoteAclTeamLinkDetails noteAclTeamLinkDetails) {
        if (noteAclTeamLinkDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndNoteAclTeamLinkDetails(Tag.NOTE_ACL_TEAM_LINK_DETAILS, noteAclTeamLinkDetails);
    }

    public NoteAclTeamLinkDetails getNoteAclTeamLinkDetailsValue() {
        if (this._tag != Tag.NOTE_ACL_TEAM_LINK_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.NOTE_ACL_TEAM_LINK_DETAILS, but was Tag." + this._tag.name());
        }
        return this.noteAclTeamLinkDetailsValue;
    }

    public boolean isNoteSharedDetails() {
        return this._tag == Tag.NOTE_SHARED_DETAILS;
    }

    public static EventDetails noteSharedDetails(NoteSharedDetails noteSharedDetails) {
        if (noteSharedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndNoteSharedDetails(Tag.NOTE_SHARED_DETAILS, noteSharedDetails);
    }

    public NoteSharedDetails getNoteSharedDetailsValue() {
        if (this._tag != Tag.NOTE_SHARED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.NOTE_SHARED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.noteSharedDetailsValue;
    }

    public boolean isNoteShareReceiveDetails() {
        return this._tag == Tag.NOTE_SHARE_RECEIVE_DETAILS;
    }

    public static EventDetails noteShareReceiveDetails(NoteShareReceiveDetails noteShareReceiveDetails) {
        if (noteShareReceiveDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndNoteShareReceiveDetails(Tag.NOTE_SHARE_RECEIVE_DETAILS, noteShareReceiveDetails);
    }

    public NoteShareReceiveDetails getNoteShareReceiveDetailsValue() {
        if (this._tag != Tag.NOTE_SHARE_RECEIVE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.NOTE_SHARE_RECEIVE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.noteShareReceiveDetailsValue;
    }

    public boolean isOpenNoteSharedDetails() {
        return this._tag == Tag.OPEN_NOTE_SHARED_DETAILS;
    }

    public static EventDetails openNoteSharedDetails(OpenNoteSharedDetails openNoteSharedDetails) {
        if (openNoteSharedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndOpenNoteSharedDetails(Tag.OPEN_NOTE_SHARED_DETAILS, openNoteSharedDetails);
    }

    public OpenNoteSharedDetails getOpenNoteSharedDetailsValue() {
        if (this._tag != Tag.OPEN_NOTE_SHARED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.OPEN_NOTE_SHARED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.openNoteSharedDetailsValue;
    }

    public boolean isSfAddGroupDetails() {
        return this._tag == Tag.SF_ADD_GROUP_DETAILS;
    }

    public static EventDetails sfAddGroupDetails(SfAddGroupDetails sfAddGroupDetails) {
        if (sfAddGroupDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfAddGroupDetails(Tag.SF_ADD_GROUP_DETAILS, sfAddGroupDetails);
    }

    public SfAddGroupDetails getSfAddGroupDetailsValue() {
        if (this._tag != Tag.SF_ADD_GROUP_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_ADD_GROUP_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfAddGroupDetailsValue;
    }

    public boolean isSfAllowNonMembersToViewSharedLinksDetails() {
        return this._tag == Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS;
    }

    public static EventDetails sfAllowNonMembersToViewSharedLinksDetails(SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails) {
        if (sfAllowNonMembersToViewSharedLinksDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfAllowNonMembersToViewSharedLinksDetails(Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS, sfAllowNonMembersToViewSharedLinksDetails);
    }

    public SfAllowNonMembersToViewSharedLinksDetails getSfAllowNonMembersToViewSharedLinksDetailsValue() {
        if (this._tag != Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfAllowNonMembersToViewSharedLinksDetailsValue;
    }

    public boolean isSfInviteGroupDetails() {
        return this._tag == Tag.SF_INVITE_GROUP_DETAILS;
    }

    public static EventDetails sfInviteGroupDetails(SfInviteGroupDetails sfInviteGroupDetails) {
        if (sfInviteGroupDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfInviteGroupDetails(Tag.SF_INVITE_GROUP_DETAILS, sfInviteGroupDetails);
    }

    public SfInviteGroupDetails getSfInviteGroupDetailsValue() {
        if (this._tag != Tag.SF_INVITE_GROUP_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_INVITE_GROUP_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfInviteGroupDetailsValue;
    }

    public boolean isSfNestDetails() {
        return this._tag == Tag.SF_NEST_DETAILS;
    }

    public static EventDetails sfNestDetails(SfNestDetails sfNestDetails) {
        if (sfNestDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfNestDetails(Tag.SF_NEST_DETAILS, sfNestDetails);
    }

    public SfNestDetails getSfNestDetailsValue() {
        if (this._tag != Tag.SF_NEST_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_NEST_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfNestDetailsValue;
    }

    public boolean isSfTeamDeclineDetails() {
        return this._tag == Tag.SF_TEAM_DECLINE_DETAILS;
    }

    public static EventDetails sfTeamDeclineDetails(SfTeamDeclineDetails sfTeamDeclineDetails) {
        if (sfTeamDeclineDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamDeclineDetails(Tag.SF_TEAM_DECLINE_DETAILS, sfTeamDeclineDetails);
    }

    public SfTeamDeclineDetails getSfTeamDeclineDetailsValue() {
        if (this._tag != Tag.SF_TEAM_DECLINE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_DECLINE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamDeclineDetailsValue;
    }

    public boolean isSfTeamGrantAccessDetails() {
        return this._tag == Tag.SF_TEAM_GRANT_ACCESS_DETAILS;
    }

    public static EventDetails sfTeamGrantAccessDetails(SfTeamGrantAccessDetails sfTeamGrantAccessDetails) {
        if (sfTeamGrantAccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamGrantAccessDetails(Tag.SF_TEAM_GRANT_ACCESS_DETAILS, sfTeamGrantAccessDetails);
    }

    public SfTeamGrantAccessDetails getSfTeamGrantAccessDetailsValue() {
        if (this._tag != Tag.SF_TEAM_GRANT_ACCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_GRANT_ACCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamGrantAccessDetailsValue;
    }

    public boolean isSfTeamInviteDetails() {
        return this._tag == Tag.SF_TEAM_INVITE_DETAILS;
    }

    public static EventDetails sfTeamInviteDetails(SfTeamInviteDetails sfTeamInviteDetails) {
        if (sfTeamInviteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamInviteDetails(Tag.SF_TEAM_INVITE_DETAILS, sfTeamInviteDetails);
    }

    public SfTeamInviteDetails getSfTeamInviteDetailsValue() {
        if (this._tag != Tag.SF_TEAM_INVITE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_INVITE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamInviteDetailsValue;
    }

    public boolean isSfTeamInviteChangeRoleDetails() {
        return this._tag == Tag.SF_TEAM_INVITE_CHANGE_ROLE_DETAILS;
    }

    public static EventDetails sfTeamInviteChangeRoleDetails(SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails) {
        if (sfTeamInviteChangeRoleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamInviteChangeRoleDetails(Tag.SF_TEAM_INVITE_CHANGE_ROLE_DETAILS, sfTeamInviteChangeRoleDetails);
    }

    public SfTeamInviteChangeRoleDetails getSfTeamInviteChangeRoleDetailsValue() {
        if (this._tag != Tag.SF_TEAM_INVITE_CHANGE_ROLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_INVITE_CHANGE_ROLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamInviteChangeRoleDetailsValue;
    }

    public boolean isSfTeamJoinDetails() {
        return this._tag == Tag.SF_TEAM_JOIN_DETAILS;
    }

    public static EventDetails sfTeamJoinDetails(SfTeamJoinDetails sfTeamJoinDetails) {
        if (sfTeamJoinDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamJoinDetails(Tag.SF_TEAM_JOIN_DETAILS, sfTeamJoinDetails);
    }

    public SfTeamJoinDetails getSfTeamJoinDetailsValue() {
        if (this._tag != Tag.SF_TEAM_JOIN_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_JOIN_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamJoinDetailsValue;
    }

    public boolean isSfTeamJoinFromOobLinkDetails() {
        return this._tag == Tag.SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS;
    }

    public static EventDetails sfTeamJoinFromOobLinkDetails(SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails) {
        if (sfTeamJoinFromOobLinkDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamJoinFromOobLinkDetails(Tag.SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS, sfTeamJoinFromOobLinkDetails);
    }

    public SfTeamJoinFromOobLinkDetails getSfTeamJoinFromOobLinkDetailsValue() {
        if (this._tag != Tag.SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamJoinFromOobLinkDetailsValue;
    }

    public boolean isSfTeamUninviteDetails() {
        return this._tag == Tag.SF_TEAM_UNINVITE_DETAILS;
    }

    public static EventDetails sfTeamUninviteDetails(SfTeamUninviteDetails sfTeamUninviteDetails) {
        if (sfTeamUninviteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSfTeamUninviteDetails(Tag.SF_TEAM_UNINVITE_DETAILS, sfTeamUninviteDetails);
    }

    public SfTeamUninviteDetails getSfTeamUninviteDetailsValue() {
        if (this._tag != Tag.SF_TEAM_UNINVITE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SF_TEAM_UNINVITE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sfTeamUninviteDetailsValue;
    }

    public boolean isSharedContentAddInviteesDetails() {
        return this._tag == Tag.SHARED_CONTENT_ADD_INVITEES_DETAILS;
    }

    public static EventDetails sharedContentAddInviteesDetails(SharedContentAddInviteesDetails sharedContentAddInviteesDetails) {
        if (sharedContentAddInviteesDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentAddInviteesDetails(Tag.SHARED_CONTENT_ADD_INVITEES_DETAILS, sharedContentAddInviteesDetails);
    }

    public SharedContentAddInviteesDetails getSharedContentAddInviteesDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_ADD_INVITEES_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_INVITEES_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentAddInviteesDetailsValue;
    }

    public boolean isSharedContentAddLinkExpiryDetails() {
        return this._tag == Tag.SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS;
    }

    public static EventDetails sharedContentAddLinkExpiryDetails(SharedContentAddLinkExpiryDetails sharedContentAddLinkExpiryDetails) {
        if (sharedContentAddLinkExpiryDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentAddLinkExpiryDetails(Tag.SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS, sharedContentAddLinkExpiryDetails);
    }

    public SharedContentAddLinkExpiryDetails getSharedContentAddLinkExpiryDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentAddLinkExpiryDetailsValue;
    }

    public boolean isSharedContentAddLinkPasswordDetails() {
        return this._tag == Tag.SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS;
    }

    public static EventDetails sharedContentAddLinkPasswordDetails(SharedContentAddLinkPasswordDetails sharedContentAddLinkPasswordDetails) {
        if (sharedContentAddLinkPasswordDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentAddLinkPasswordDetails(Tag.SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS, sharedContentAddLinkPasswordDetails);
    }

    public SharedContentAddLinkPasswordDetails getSharedContentAddLinkPasswordDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentAddLinkPasswordDetailsValue;
    }

    public boolean isSharedContentAddMemberDetails() {
        return this._tag == Tag.SHARED_CONTENT_ADD_MEMBER_DETAILS;
    }

    public static EventDetails sharedContentAddMemberDetails(SharedContentAddMemberDetails sharedContentAddMemberDetails) {
        if (sharedContentAddMemberDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentAddMemberDetails(Tag.SHARED_CONTENT_ADD_MEMBER_DETAILS, sharedContentAddMemberDetails);
    }

    public SharedContentAddMemberDetails getSharedContentAddMemberDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_ADD_MEMBER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_ADD_MEMBER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentAddMemberDetailsValue;
    }

    public boolean isSharedContentChangeDownloadsPolicyDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS;
    }

    public static EventDetails sharedContentChangeDownloadsPolicyDetails(SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails) {
        if (sharedContentChangeDownloadsPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeDownloadsPolicyDetails(Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS, sharedContentChangeDownloadsPolicyDetails);
    }

    public SharedContentChangeDownloadsPolicyDetails getSharedContentChangeDownloadsPolicyDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeDownloadsPolicyDetailsValue;
    }

    public boolean isSharedContentChangeInviteeRoleDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS;
    }

    public static EventDetails sharedContentChangeInviteeRoleDetails(SharedContentChangeInviteeRoleDetails sharedContentChangeInviteeRoleDetails) {
        if (sharedContentChangeInviteeRoleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeInviteeRoleDetails(Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS, sharedContentChangeInviteeRoleDetails);
    }

    public SharedContentChangeInviteeRoleDetails getSharedContentChangeInviteeRoleDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeInviteeRoleDetailsValue;
    }

    public boolean isSharedContentChangeLinkAudienceDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS;
    }

    public static EventDetails sharedContentChangeLinkAudienceDetails(SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails) {
        if (sharedContentChangeLinkAudienceDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeLinkAudienceDetails(Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS, sharedContentChangeLinkAudienceDetails);
    }

    public SharedContentChangeLinkAudienceDetails getSharedContentChangeLinkAudienceDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeLinkAudienceDetailsValue;
    }

    public boolean isSharedContentChangeLinkExpiryDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS;
    }

    public static EventDetails sharedContentChangeLinkExpiryDetails(SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails) {
        if (sharedContentChangeLinkExpiryDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeLinkExpiryDetails(Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS, sharedContentChangeLinkExpiryDetails);
    }

    public SharedContentChangeLinkExpiryDetails getSharedContentChangeLinkExpiryDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeLinkExpiryDetailsValue;
    }

    public boolean isSharedContentChangeLinkPasswordDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS;
    }

    public static EventDetails sharedContentChangeLinkPasswordDetails(SharedContentChangeLinkPasswordDetails sharedContentChangeLinkPasswordDetails) {
        if (sharedContentChangeLinkPasswordDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeLinkPasswordDetails(Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS, sharedContentChangeLinkPasswordDetails);
    }

    public SharedContentChangeLinkPasswordDetails getSharedContentChangeLinkPasswordDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeLinkPasswordDetailsValue;
    }

    public boolean isSharedContentChangeMemberRoleDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS;
    }

    public static EventDetails sharedContentChangeMemberRoleDetails(SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails) {
        if (sharedContentChangeMemberRoleDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeMemberRoleDetails(Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS, sharedContentChangeMemberRoleDetails);
    }

    public SharedContentChangeMemberRoleDetails getSharedContentChangeMemberRoleDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeMemberRoleDetailsValue;
    }

    public boolean isSharedContentChangeViewerInfoPolicyDetails() {
        return this._tag == Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS;
    }

    public static EventDetails sharedContentChangeViewerInfoPolicyDetails(SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails) {
        if (sharedContentChangeViewerInfoPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentChangeViewerInfoPolicyDetails(Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS, sharedContentChangeViewerInfoPolicyDetails);
    }

    public SharedContentChangeViewerInfoPolicyDetails getSharedContentChangeViewerInfoPolicyDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentChangeViewerInfoPolicyDetailsValue;
    }

    public boolean isSharedContentClaimInvitationDetails() {
        return this._tag == Tag.SHARED_CONTENT_CLAIM_INVITATION_DETAILS;
    }

    public static EventDetails sharedContentClaimInvitationDetails(SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails) {
        if (sharedContentClaimInvitationDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentClaimInvitationDetails(Tag.SHARED_CONTENT_CLAIM_INVITATION_DETAILS, sharedContentClaimInvitationDetails);
    }

    public SharedContentClaimInvitationDetails getSharedContentClaimInvitationDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_CLAIM_INVITATION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_CLAIM_INVITATION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentClaimInvitationDetailsValue;
    }

    public boolean isSharedContentCopyDetails() {
        return this._tag == Tag.SHARED_CONTENT_COPY_DETAILS;
    }

    public static EventDetails sharedContentCopyDetails(SharedContentCopyDetails sharedContentCopyDetails) {
        if (sharedContentCopyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentCopyDetails(Tag.SHARED_CONTENT_COPY_DETAILS, sharedContentCopyDetails);
    }

    public SharedContentCopyDetails getSharedContentCopyDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_COPY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_COPY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentCopyDetailsValue;
    }

    public boolean isSharedContentDownloadDetails() {
        return this._tag == Tag.SHARED_CONTENT_DOWNLOAD_DETAILS;
    }

    public static EventDetails sharedContentDownloadDetails(SharedContentDownloadDetails sharedContentDownloadDetails) {
        if (sharedContentDownloadDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentDownloadDetails(Tag.SHARED_CONTENT_DOWNLOAD_DETAILS, sharedContentDownloadDetails);
    }

    public SharedContentDownloadDetails getSharedContentDownloadDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_DOWNLOAD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_DOWNLOAD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentDownloadDetailsValue;
    }

    public boolean isSharedContentRelinquishMembershipDetails() {
        return this._tag == Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS;
    }

    public static EventDetails sharedContentRelinquishMembershipDetails(SharedContentRelinquishMembershipDetails sharedContentRelinquishMembershipDetails) {
        if (sharedContentRelinquishMembershipDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentRelinquishMembershipDetails(Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS, sharedContentRelinquishMembershipDetails);
    }

    public SharedContentRelinquishMembershipDetails getSharedContentRelinquishMembershipDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentRelinquishMembershipDetailsValue;
    }

    public boolean isSharedContentRemoveInviteeDetails() {
        return this._tag == Tag.SHARED_CONTENT_REMOVE_INVITEE_DETAILS;
    }

    public static EventDetails sharedContentRemoveInviteeDetails(SharedContentRemoveInviteeDetails sharedContentRemoveInviteeDetails) {
        if (sharedContentRemoveInviteeDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentRemoveInviteeDetails(Tag.SHARED_CONTENT_REMOVE_INVITEE_DETAILS, sharedContentRemoveInviteeDetails);
    }

    public SharedContentRemoveInviteeDetails getSharedContentRemoveInviteeDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_REMOVE_INVITEE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_INVITEE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentRemoveInviteeDetailsValue;
    }

    public boolean isSharedContentRemoveLinkExpiryDetails() {
        return this._tag == Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS;
    }

    public static EventDetails sharedContentRemoveLinkExpiryDetails(SharedContentRemoveLinkExpiryDetails sharedContentRemoveLinkExpiryDetails) {
        if (sharedContentRemoveLinkExpiryDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentRemoveLinkExpiryDetails(Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS, sharedContentRemoveLinkExpiryDetails);
    }

    public SharedContentRemoveLinkExpiryDetails getSharedContentRemoveLinkExpiryDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentRemoveLinkExpiryDetailsValue;
    }

    public boolean isSharedContentRemoveLinkPasswordDetails() {
        return this._tag == Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS;
    }

    public static EventDetails sharedContentRemoveLinkPasswordDetails(SharedContentRemoveLinkPasswordDetails sharedContentRemoveLinkPasswordDetails) {
        if (sharedContentRemoveLinkPasswordDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentRemoveLinkPasswordDetails(Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS, sharedContentRemoveLinkPasswordDetails);
    }

    public SharedContentRemoveLinkPasswordDetails getSharedContentRemoveLinkPasswordDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentRemoveLinkPasswordDetailsValue;
    }

    public boolean isSharedContentRemoveMemberDetails() {
        return this._tag == Tag.SHARED_CONTENT_REMOVE_MEMBER_DETAILS;
    }

    public static EventDetails sharedContentRemoveMemberDetails(SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails) {
        if (sharedContentRemoveMemberDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentRemoveMemberDetails(Tag.SHARED_CONTENT_REMOVE_MEMBER_DETAILS, sharedContentRemoveMemberDetails);
    }

    public SharedContentRemoveMemberDetails getSharedContentRemoveMemberDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_REMOVE_MEMBER_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REMOVE_MEMBER_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentRemoveMemberDetailsValue;
    }

    public boolean isSharedContentRequestAccessDetails() {
        return this._tag == Tag.SHARED_CONTENT_REQUEST_ACCESS_DETAILS;
    }

    public static EventDetails sharedContentRequestAccessDetails(SharedContentRequestAccessDetails sharedContentRequestAccessDetails) {
        if (sharedContentRequestAccessDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentRequestAccessDetails(Tag.SHARED_CONTENT_REQUEST_ACCESS_DETAILS, sharedContentRequestAccessDetails);
    }

    public SharedContentRequestAccessDetails getSharedContentRequestAccessDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_REQUEST_ACCESS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_REQUEST_ACCESS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentRequestAccessDetailsValue;
    }

    public boolean isSharedContentUnshareDetails() {
        return this._tag == Tag.SHARED_CONTENT_UNSHARE_DETAILS;
    }

    public static EventDetails sharedContentUnshareDetails(SharedContentUnshareDetails sharedContentUnshareDetails) {
        if (sharedContentUnshareDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentUnshareDetails(Tag.SHARED_CONTENT_UNSHARE_DETAILS, sharedContentUnshareDetails);
    }

    public SharedContentUnshareDetails getSharedContentUnshareDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_UNSHARE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_UNSHARE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentUnshareDetailsValue;
    }

    public boolean isSharedContentViewDetails() {
        return this._tag == Tag.SHARED_CONTENT_VIEW_DETAILS;
    }

    public static EventDetails sharedContentViewDetails(SharedContentViewDetails sharedContentViewDetails) {
        if (sharedContentViewDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedContentViewDetails(Tag.SHARED_CONTENT_VIEW_DETAILS, sharedContentViewDetails);
    }

    public SharedContentViewDetails getSharedContentViewDetailsValue() {
        if (this._tag != Tag.SHARED_CONTENT_VIEW_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_CONTENT_VIEW_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedContentViewDetailsValue;
    }

    public boolean isSharedFolderChangeConfidentialityDetails() {
        return this._tag == Tag.SHARED_FOLDER_CHANGE_CONFIDENTIALITY_DETAILS;
    }

    public static EventDetails sharedFolderChangeConfidentialityDetails(SharedFolderChangeConfidentialityDetails sharedFolderChangeConfidentialityDetails) {
        if (sharedFolderChangeConfidentialityDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderChangeConfidentialityDetails(Tag.SHARED_FOLDER_CHANGE_CONFIDENTIALITY_DETAILS, sharedFolderChangeConfidentialityDetails);
    }

    public SharedFolderChangeConfidentialityDetails getSharedFolderChangeConfidentialityDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_CHANGE_CONFIDENTIALITY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_CONFIDENTIALITY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderChangeConfidentialityDetailsValue;
    }

    public boolean isSharedFolderChangeLinkPolicyDetails() {
        return this._tag == Tag.SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS;
    }

    public static EventDetails sharedFolderChangeLinkPolicyDetails(SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails) {
        if (sharedFolderChangeLinkPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderChangeLinkPolicyDetails(Tag.SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS, sharedFolderChangeLinkPolicyDetails);
    }

    public SharedFolderChangeLinkPolicyDetails getSharedFolderChangeLinkPolicyDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderChangeLinkPolicyDetailsValue;
    }

    public boolean isSharedFolderChangeMemberManagementPolicyDetails() {
        return this._tag == Tag.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY_DETAILS;
    }

    public static EventDetails sharedFolderChangeMemberManagementPolicyDetails(SharedFolderChangeMemberManagementPolicyDetails sharedFolderChangeMemberManagementPolicyDetails) {
        if (sharedFolderChangeMemberManagementPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderChangeMemberManagementPolicyDetails(Tag.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY_DETAILS, sharedFolderChangeMemberManagementPolicyDetails);
    }

    public SharedFolderChangeMemberManagementPolicyDetails getSharedFolderChangeMemberManagementPolicyDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderChangeMemberManagementPolicyDetailsValue;
    }

    public boolean isSharedFolderChangeMemberPolicyDetails() {
        return this._tag == Tag.SHARED_FOLDER_CHANGE_MEMBER_POLICY_DETAILS;
    }

    public static EventDetails sharedFolderChangeMemberPolicyDetails(SharedFolderChangeMemberPolicyDetails sharedFolderChangeMemberPolicyDetails) {
        if (sharedFolderChangeMemberPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderChangeMemberPolicyDetails(Tag.SHARED_FOLDER_CHANGE_MEMBER_POLICY_DETAILS, sharedFolderChangeMemberPolicyDetails);
    }

    public SharedFolderChangeMemberPolicyDetails getSharedFolderChangeMemberPolicyDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_CHANGE_MEMBER_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CHANGE_MEMBER_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderChangeMemberPolicyDetailsValue;
    }

    public boolean isSharedFolderCreateDetails() {
        return this._tag == Tag.SHARED_FOLDER_CREATE_DETAILS;
    }

    public static EventDetails sharedFolderCreateDetails(SharedFolderCreateDetails sharedFolderCreateDetails) {
        if (sharedFolderCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderCreateDetails(Tag.SHARED_FOLDER_CREATE_DETAILS, sharedFolderCreateDetails);
    }

    public SharedFolderCreateDetails getSharedFolderCreateDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderCreateDetailsValue;
    }

    public boolean isSharedFolderMountDetails() {
        return this._tag == Tag.SHARED_FOLDER_MOUNT_DETAILS;
    }

    public static EventDetails sharedFolderMountDetails(SharedFolderMountDetails sharedFolderMountDetails) {
        if (sharedFolderMountDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderMountDetails(Tag.SHARED_FOLDER_MOUNT_DETAILS, sharedFolderMountDetails);
    }

    public SharedFolderMountDetails getSharedFolderMountDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_MOUNT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_MOUNT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderMountDetailsValue;
    }

    public boolean isSharedFolderTransferOwnershipDetails() {
        return this._tag == Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS;
    }

    public static EventDetails sharedFolderTransferOwnershipDetails(SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails) {
        if (sharedFolderTransferOwnershipDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderTransferOwnershipDetails(Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS, sharedFolderTransferOwnershipDetails);
    }

    public SharedFolderTransferOwnershipDetails getSharedFolderTransferOwnershipDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderTransferOwnershipDetailsValue;
    }

    public boolean isSharedFolderUnmountDetails() {
        return this._tag == Tag.SHARED_FOLDER_UNMOUNT_DETAILS;
    }

    public static EventDetails sharedFolderUnmountDetails(SharedFolderUnmountDetails sharedFolderUnmountDetails) {
        if (sharedFolderUnmountDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedFolderUnmountDetails(Tag.SHARED_FOLDER_UNMOUNT_DETAILS, sharedFolderUnmountDetails);
    }

    public SharedFolderUnmountDetails getSharedFolderUnmountDetailsValue() {
        if (this._tag != Tag.SHARED_FOLDER_UNMOUNT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_FOLDER_UNMOUNT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedFolderUnmountDetailsValue;
    }

    public boolean isSharedNoteOpenedDetails() {
        return this._tag == Tag.SHARED_NOTE_OPENED_DETAILS;
    }

    public static EventDetails sharedNoteOpenedDetails(SharedNoteOpenedDetails sharedNoteOpenedDetails) {
        if (sharedNoteOpenedDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharedNoteOpenedDetails(Tag.SHARED_NOTE_OPENED_DETAILS, sharedNoteOpenedDetails);
    }

    public SharedNoteOpenedDetails getSharedNoteOpenedDetailsValue() {
        if (this._tag != Tag.SHARED_NOTE_OPENED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARED_NOTE_OPENED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharedNoteOpenedDetailsValue;
    }

    public boolean isShmodelAppCreateDetails() {
        return this._tag == Tag.SHMODEL_APP_CREATE_DETAILS;
    }

    public static EventDetails shmodelAppCreateDetails(ShmodelAppCreateDetails shmodelAppCreateDetails) {
        if (shmodelAppCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelAppCreateDetails(Tag.SHMODEL_APP_CREATE_DETAILS, shmodelAppCreateDetails);
    }

    public ShmodelAppCreateDetails getShmodelAppCreateDetailsValue() {
        if (this._tag != Tag.SHMODEL_APP_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_APP_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelAppCreateDetailsValue;
    }

    public boolean isShmodelCreateDetails() {
        return this._tag == Tag.SHMODEL_CREATE_DETAILS;
    }

    public static EventDetails shmodelCreateDetails(ShmodelCreateDetails shmodelCreateDetails) {
        if (shmodelCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelCreateDetails(Tag.SHMODEL_CREATE_DETAILS, shmodelCreateDetails);
    }

    public ShmodelCreateDetails getShmodelCreateDetailsValue() {
        if (this._tag != Tag.SHMODEL_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelCreateDetailsValue;
    }

    public boolean isShmodelDisableDetails() {
        return this._tag == Tag.SHMODEL_DISABLE_DETAILS;
    }

    public static EventDetails shmodelDisableDetails(ShmodelDisableDetails shmodelDisableDetails) {
        if (shmodelDisableDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelDisableDetails(Tag.SHMODEL_DISABLE_DETAILS, shmodelDisableDetails);
    }

    public ShmodelDisableDetails getShmodelDisableDetailsValue() {
        if (this._tag != Tag.SHMODEL_DISABLE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_DISABLE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelDisableDetailsValue;
    }

    public boolean isShmodelFbShareDetails() {
        return this._tag == Tag.SHMODEL_FB_SHARE_DETAILS;
    }

    public static EventDetails shmodelFbShareDetails(ShmodelFbShareDetails shmodelFbShareDetails) {
        if (shmodelFbShareDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelFbShareDetails(Tag.SHMODEL_FB_SHARE_DETAILS, shmodelFbShareDetails);
    }

    public ShmodelFbShareDetails getShmodelFbShareDetailsValue() {
        if (this._tag != Tag.SHMODEL_FB_SHARE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_FB_SHARE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelFbShareDetailsValue;
    }

    public boolean isShmodelGroupShareDetails() {
        return this._tag == Tag.SHMODEL_GROUP_SHARE_DETAILS;
    }

    public static EventDetails shmodelGroupShareDetails(ShmodelGroupShareDetails shmodelGroupShareDetails) {
        if (shmodelGroupShareDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelGroupShareDetails(Tag.SHMODEL_GROUP_SHARE_DETAILS, shmodelGroupShareDetails);
    }

    public ShmodelGroupShareDetails getShmodelGroupShareDetailsValue() {
        if (this._tag != Tag.SHMODEL_GROUP_SHARE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_GROUP_SHARE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelGroupShareDetailsValue;
    }

    public boolean isShmodelRemoveExpirationDetails() {
        return this._tag == Tag.SHMODEL_REMOVE_EXPIRATION_DETAILS;
    }

    public static EventDetails shmodelRemoveExpirationDetails(ShmodelRemoveExpirationDetails shmodelRemoveExpirationDetails) {
        if (shmodelRemoveExpirationDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelRemoveExpirationDetails(Tag.SHMODEL_REMOVE_EXPIRATION_DETAILS, shmodelRemoveExpirationDetails);
    }

    public ShmodelRemoveExpirationDetails getShmodelRemoveExpirationDetailsValue() {
        if (this._tag != Tag.SHMODEL_REMOVE_EXPIRATION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_REMOVE_EXPIRATION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelRemoveExpirationDetailsValue;
    }

    public boolean isShmodelSetExpirationDetails() {
        return this._tag == Tag.SHMODEL_SET_EXPIRATION_DETAILS;
    }

    public static EventDetails shmodelSetExpirationDetails(ShmodelSetExpirationDetails shmodelSetExpirationDetails) {
        if (shmodelSetExpirationDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelSetExpirationDetails(Tag.SHMODEL_SET_EXPIRATION_DETAILS, shmodelSetExpirationDetails);
    }

    public ShmodelSetExpirationDetails getShmodelSetExpirationDetailsValue() {
        if (this._tag != Tag.SHMODEL_SET_EXPIRATION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_SET_EXPIRATION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelSetExpirationDetailsValue;
    }

    public boolean isShmodelTeamCopyDetails() {
        return this._tag == Tag.SHMODEL_TEAM_COPY_DETAILS;
    }

    public static EventDetails shmodelTeamCopyDetails(ShmodelTeamCopyDetails shmodelTeamCopyDetails) {
        if (shmodelTeamCopyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelTeamCopyDetails(Tag.SHMODEL_TEAM_COPY_DETAILS, shmodelTeamCopyDetails);
    }

    public ShmodelTeamCopyDetails getShmodelTeamCopyDetailsValue() {
        if (this._tag != Tag.SHMODEL_TEAM_COPY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_TEAM_COPY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelTeamCopyDetailsValue;
    }

    public boolean isShmodelTeamDownloadDetails() {
        return this._tag == Tag.SHMODEL_TEAM_DOWNLOAD_DETAILS;
    }

    public static EventDetails shmodelTeamDownloadDetails(ShmodelTeamDownloadDetails shmodelTeamDownloadDetails) {
        if (shmodelTeamDownloadDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelTeamDownloadDetails(Tag.SHMODEL_TEAM_DOWNLOAD_DETAILS, shmodelTeamDownloadDetails);
    }

    public ShmodelTeamDownloadDetails getShmodelTeamDownloadDetailsValue() {
        if (this._tag != Tag.SHMODEL_TEAM_DOWNLOAD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_TEAM_DOWNLOAD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelTeamDownloadDetailsValue;
    }

    public boolean isShmodelTeamShareDetails() {
        return this._tag == Tag.SHMODEL_TEAM_SHARE_DETAILS;
    }

    public static EventDetails shmodelTeamShareDetails(ShmodelTeamShareDetails shmodelTeamShareDetails) {
        if (shmodelTeamShareDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelTeamShareDetails(Tag.SHMODEL_TEAM_SHARE_DETAILS, shmodelTeamShareDetails);
    }

    public ShmodelTeamShareDetails getShmodelTeamShareDetailsValue() {
        if (this._tag != Tag.SHMODEL_TEAM_SHARE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_TEAM_SHARE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelTeamShareDetailsValue;
    }

    public boolean isShmodelTeamViewDetails() {
        return this._tag == Tag.SHMODEL_TEAM_VIEW_DETAILS;
    }

    public static EventDetails shmodelTeamViewDetails(ShmodelTeamViewDetails shmodelTeamViewDetails) {
        if (shmodelTeamViewDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelTeamViewDetails(Tag.SHMODEL_TEAM_VIEW_DETAILS, shmodelTeamViewDetails);
    }

    public ShmodelTeamViewDetails getShmodelTeamViewDetailsValue() {
        if (this._tag != Tag.SHMODEL_TEAM_VIEW_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_TEAM_VIEW_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelTeamViewDetailsValue;
    }

    public boolean isShmodelVisibilityPasswordDetails() {
        return this._tag == Tag.SHMODEL_VISIBILITY_PASSWORD_DETAILS;
    }

    public static EventDetails shmodelVisibilityPasswordDetails(ShmodelVisibilityPasswordDetails shmodelVisibilityPasswordDetails) {
        if (shmodelVisibilityPasswordDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelVisibilityPasswordDetails(Tag.SHMODEL_VISIBILITY_PASSWORD_DETAILS, shmodelVisibilityPasswordDetails);
    }

    public ShmodelVisibilityPasswordDetails getShmodelVisibilityPasswordDetailsValue() {
        if (this._tag != Tag.SHMODEL_VISIBILITY_PASSWORD_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_VISIBILITY_PASSWORD_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelVisibilityPasswordDetailsValue;
    }

    public boolean isShmodelVisibilityPublicDetails() {
        return this._tag == Tag.SHMODEL_VISIBILITY_PUBLIC_DETAILS;
    }

    public static EventDetails shmodelVisibilityPublicDetails(ShmodelVisibilityPublicDetails shmodelVisibilityPublicDetails) {
        if (shmodelVisibilityPublicDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelVisibilityPublicDetails(Tag.SHMODEL_VISIBILITY_PUBLIC_DETAILS, shmodelVisibilityPublicDetails);
    }

    public ShmodelVisibilityPublicDetails getShmodelVisibilityPublicDetailsValue() {
        if (this._tag != Tag.SHMODEL_VISIBILITY_PUBLIC_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_VISIBILITY_PUBLIC_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelVisibilityPublicDetailsValue;
    }

    public boolean isShmodelVisibilityTeamOnlyDetails() {
        return this._tag == Tag.SHMODEL_VISIBILITY_TEAM_ONLY_DETAILS;
    }

    public static EventDetails shmodelVisibilityTeamOnlyDetails(ShmodelVisibilityTeamOnlyDetails shmodelVisibilityTeamOnlyDetails) {
        if (shmodelVisibilityTeamOnlyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndShmodelVisibilityTeamOnlyDetails(Tag.SHMODEL_VISIBILITY_TEAM_ONLY_DETAILS, shmodelVisibilityTeamOnlyDetails);
    }

    public ShmodelVisibilityTeamOnlyDetails getShmodelVisibilityTeamOnlyDetailsValue() {
        if (this._tag != Tag.SHMODEL_VISIBILITY_TEAM_ONLY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHMODEL_VISIBILITY_TEAM_ONLY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.shmodelVisibilityTeamOnlyDetailsValue;
    }

    public boolean isSsoAddCertDetails() {
        return this._tag == Tag.SSO_ADD_CERT_DETAILS;
    }

    public static EventDetails ssoAddCertDetails(SsoAddCertDetails ssoAddCertDetails) {
        if (ssoAddCertDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoAddCertDetails(Tag.SSO_ADD_CERT_DETAILS, ssoAddCertDetails);
    }

    public SsoAddCertDetails getSsoAddCertDetailsValue() {
        if (this._tag != Tag.SSO_ADD_CERT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_ADD_CERT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoAddCertDetailsValue;
    }

    public boolean isSsoAddLoginUrlDetails() {
        return this._tag == Tag.SSO_ADD_LOGIN_URL_DETAILS;
    }

    public static EventDetails ssoAddLoginUrlDetails(SsoAddLoginUrlDetails ssoAddLoginUrlDetails) {
        if (ssoAddLoginUrlDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoAddLoginUrlDetails(Tag.SSO_ADD_LOGIN_URL_DETAILS, ssoAddLoginUrlDetails);
    }

    public SsoAddLoginUrlDetails getSsoAddLoginUrlDetailsValue() {
        if (this._tag != Tag.SSO_ADD_LOGIN_URL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_ADD_LOGIN_URL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoAddLoginUrlDetailsValue;
    }

    public boolean isSsoAddLogoutUrlDetails() {
        return this._tag == Tag.SSO_ADD_LOGOUT_URL_DETAILS;
    }

    public static EventDetails ssoAddLogoutUrlDetails(SsoAddLogoutUrlDetails ssoAddLogoutUrlDetails) {
        if (ssoAddLogoutUrlDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoAddLogoutUrlDetails(Tag.SSO_ADD_LOGOUT_URL_DETAILS, ssoAddLogoutUrlDetails);
    }

    public SsoAddLogoutUrlDetails getSsoAddLogoutUrlDetailsValue() {
        if (this._tag != Tag.SSO_ADD_LOGOUT_URL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_ADD_LOGOUT_URL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoAddLogoutUrlDetailsValue;
    }

    public boolean isSsoChangeCertDetails() {
        return this._tag == Tag.SSO_CHANGE_CERT_DETAILS;
    }

    public static EventDetails ssoChangeCertDetails(SsoChangeCertDetails ssoChangeCertDetails) {
        if (ssoChangeCertDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoChangeCertDetails(Tag.SSO_CHANGE_CERT_DETAILS, ssoChangeCertDetails);
    }

    public SsoChangeCertDetails getSsoChangeCertDetailsValue() {
        if (this._tag != Tag.SSO_CHANGE_CERT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_CERT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoChangeCertDetailsValue;
    }

    public boolean isSsoChangeLoginUrlDetails() {
        return this._tag == Tag.SSO_CHANGE_LOGIN_URL_DETAILS;
    }

    public static EventDetails ssoChangeLoginUrlDetails(SsoChangeLoginUrlDetails ssoChangeLoginUrlDetails) {
        if (ssoChangeLoginUrlDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoChangeLoginUrlDetails(Tag.SSO_CHANGE_LOGIN_URL_DETAILS, ssoChangeLoginUrlDetails);
    }

    public SsoChangeLoginUrlDetails getSsoChangeLoginUrlDetailsValue() {
        if (this._tag != Tag.SSO_CHANGE_LOGIN_URL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_LOGIN_URL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoChangeLoginUrlDetailsValue;
    }

    public boolean isSsoChangeLogoutUrlDetails() {
        return this._tag == Tag.SSO_CHANGE_LOGOUT_URL_DETAILS;
    }

    public static EventDetails ssoChangeLogoutUrlDetails(SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails) {
        if (ssoChangeLogoutUrlDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoChangeLogoutUrlDetails(Tag.SSO_CHANGE_LOGOUT_URL_DETAILS, ssoChangeLogoutUrlDetails);
    }

    public SsoChangeLogoutUrlDetails getSsoChangeLogoutUrlDetailsValue() {
        if (this._tag != Tag.SSO_CHANGE_LOGOUT_URL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_LOGOUT_URL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoChangeLogoutUrlDetailsValue;
    }

    public boolean isSsoChangeSamlIdentityModeDetails() {
        return this._tag == Tag.SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS;
    }

    public static EventDetails ssoChangeSamlIdentityModeDetails(SsoChangeSamlIdentityModeDetails ssoChangeSamlIdentityModeDetails) {
        if (ssoChangeSamlIdentityModeDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoChangeSamlIdentityModeDetails(Tag.SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS, ssoChangeSamlIdentityModeDetails);
    }

    public SsoChangeSamlIdentityModeDetails getSsoChangeSamlIdentityModeDetailsValue() {
        if (this._tag != Tag.SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoChangeSamlIdentityModeDetailsValue;
    }

    public boolean isSsoRemoveCertDetails() {
        return this._tag == Tag.SSO_REMOVE_CERT_DETAILS;
    }

    public static EventDetails ssoRemoveCertDetails(SsoRemoveCertDetails ssoRemoveCertDetails) {
        if (ssoRemoveCertDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoRemoveCertDetails(Tag.SSO_REMOVE_CERT_DETAILS, ssoRemoveCertDetails);
    }

    public SsoRemoveCertDetails getSsoRemoveCertDetailsValue() {
        if (this._tag != Tag.SSO_REMOVE_CERT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_REMOVE_CERT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoRemoveCertDetailsValue;
    }

    public boolean isSsoRemoveLoginUrlDetails() {
        return this._tag == Tag.SSO_REMOVE_LOGIN_URL_DETAILS;
    }

    public static EventDetails ssoRemoveLoginUrlDetails(SsoRemoveLoginUrlDetails ssoRemoveLoginUrlDetails) {
        if (ssoRemoveLoginUrlDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoRemoveLoginUrlDetails(Tag.SSO_REMOVE_LOGIN_URL_DETAILS, ssoRemoveLoginUrlDetails);
    }

    public SsoRemoveLoginUrlDetails getSsoRemoveLoginUrlDetailsValue() {
        if (this._tag != Tag.SSO_REMOVE_LOGIN_URL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_REMOVE_LOGIN_URL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoRemoveLoginUrlDetailsValue;
    }

    public boolean isSsoRemoveLogoutUrlDetails() {
        return this._tag == Tag.SSO_REMOVE_LOGOUT_URL_DETAILS;
    }

    public static EventDetails ssoRemoveLogoutUrlDetails(SsoRemoveLogoutUrlDetails ssoRemoveLogoutUrlDetails) {
        if (ssoRemoveLogoutUrlDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoRemoveLogoutUrlDetails(Tag.SSO_REMOVE_LOGOUT_URL_DETAILS, ssoRemoveLogoutUrlDetails);
    }

    public SsoRemoveLogoutUrlDetails getSsoRemoveLogoutUrlDetailsValue() {
        if (this._tag != Tag.SSO_REMOVE_LOGOUT_URL_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_REMOVE_LOGOUT_URL_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoRemoveLogoutUrlDetailsValue;
    }

    public boolean isTeamFolderChangeStatusDetails() {
        return this._tag == Tag.TEAM_FOLDER_CHANGE_STATUS_DETAILS;
    }

    public static EventDetails teamFolderChangeStatusDetails(TeamFolderChangeStatusDetails teamFolderChangeStatusDetails) {
        if (teamFolderChangeStatusDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamFolderChangeStatusDetails(Tag.TEAM_FOLDER_CHANGE_STATUS_DETAILS, teamFolderChangeStatusDetails);
    }

    public TeamFolderChangeStatusDetails getTeamFolderChangeStatusDetailsValue() {
        if (this._tag != Tag.TEAM_FOLDER_CHANGE_STATUS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_CHANGE_STATUS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamFolderChangeStatusDetailsValue;
    }

    public boolean isTeamFolderCreateDetails() {
        return this._tag == Tag.TEAM_FOLDER_CREATE_DETAILS;
    }

    public static EventDetails teamFolderCreateDetails(TeamFolderCreateDetails teamFolderCreateDetails) {
        if (teamFolderCreateDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamFolderCreateDetails(Tag.TEAM_FOLDER_CREATE_DETAILS, teamFolderCreateDetails);
    }

    public TeamFolderCreateDetails getTeamFolderCreateDetailsValue() {
        if (this._tag != Tag.TEAM_FOLDER_CREATE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_CREATE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamFolderCreateDetailsValue;
    }

    public boolean isTeamFolderDowngradeDetails() {
        return this._tag == Tag.TEAM_FOLDER_DOWNGRADE_DETAILS;
    }

    public static EventDetails teamFolderDowngradeDetails(TeamFolderDowngradeDetails teamFolderDowngradeDetails) {
        if (teamFolderDowngradeDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamFolderDowngradeDetails(Tag.TEAM_FOLDER_DOWNGRADE_DETAILS, teamFolderDowngradeDetails);
    }

    public TeamFolderDowngradeDetails getTeamFolderDowngradeDetailsValue() {
        if (this._tag != Tag.TEAM_FOLDER_DOWNGRADE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_DOWNGRADE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamFolderDowngradeDetailsValue;
    }

    public boolean isTeamFolderPermanentlyDeleteDetails() {
        return this._tag == Tag.TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS;
    }

    public static EventDetails teamFolderPermanentlyDeleteDetails(TeamFolderPermanentlyDeleteDetails teamFolderPermanentlyDeleteDetails) {
        if (teamFolderPermanentlyDeleteDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamFolderPermanentlyDeleteDetails(Tag.TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS, teamFolderPermanentlyDeleteDetails);
    }

    public TeamFolderPermanentlyDeleteDetails getTeamFolderPermanentlyDeleteDetailsValue() {
        if (this._tag != Tag.TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamFolderPermanentlyDeleteDetailsValue;
    }

    public boolean isTeamFolderRenameDetails() {
        return this._tag == Tag.TEAM_FOLDER_RENAME_DETAILS;
    }

    public static EventDetails teamFolderRenameDetails(TeamFolderRenameDetails teamFolderRenameDetails) {
        if (teamFolderRenameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamFolderRenameDetails(Tag.TEAM_FOLDER_RENAME_DETAILS, teamFolderRenameDetails);
    }

    public TeamFolderRenameDetails getTeamFolderRenameDetailsValue() {
        if (this._tag != Tag.TEAM_FOLDER_RENAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_RENAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamFolderRenameDetailsValue;
    }

    public boolean isAccountCaptureChangePolicyDetails() {
        return this._tag == Tag.ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails accountCaptureChangePolicyDetails(AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails) {
        if (accountCaptureChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAccountCaptureChangePolicyDetails(Tag.ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS, accountCaptureChangePolicyDetails);
    }

    public AccountCaptureChangePolicyDetails getAccountCaptureChangePolicyDetailsValue() {
        if (this._tag != Tag.ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.accountCaptureChangePolicyDetailsValue;
    }

    public boolean isAllowDownloadDisabledDetails() {
        return this._tag == Tag.ALLOW_DOWNLOAD_DISABLED_DETAILS;
    }

    public static EventDetails allowDownloadDisabledDetails(AllowDownloadDisabledDetails allowDownloadDisabledDetails) {
        if (allowDownloadDisabledDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAllowDownloadDisabledDetails(Tag.ALLOW_DOWNLOAD_DISABLED_DETAILS, allowDownloadDisabledDetails);
    }

    public AllowDownloadDisabledDetails getAllowDownloadDisabledDetailsValue() {
        if (this._tag != Tag.ALLOW_DOWNLOAD_DISABLED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ALLOW_DOWNLOAD_DISABLED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.allowDownloadDisabledDetailsValue;
    }

    public boolean isAllowDownloadEnabledDetails() {
        return this._tag == Tag.ALLOW_DOWNLOAD_ENABLED_DETAILS;
    }

    public static EventDetails allowDownloadEnabledDetails(AllowDownloadEnabledDetails allowDownloadEnabledDetails) {
        if (allowDownloadEnabledDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndAllowDownloadEnabledDetails(Tag.ALLOW_DOWNLOAD_ENABLED_DETAILS, allowDownloadEnabledDetails);
    }

    public AllowDownloadEnabledDetails getAllowDownloadEnabledDetailsValue() {
        if (this._tag != Tag.ALLOW_DOWNLOAD_ENABLED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.ALLOW_DOWNLOAD_ENABLED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.allowDownloadEnabledDetailsValue;
    }

    public boolean isDataPlacementRestrictionChangePolicyDetails() {
        return this._tag == Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails dataPlacementRestrictionChangePolicyDetails(DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails) {
        if (dataPlacementRestrictionChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDataPlacementRestrictionChangePolicyDetails(Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS, dataPlacementRestrictionChangePolicyDetails);
    }

    public DataPlacementRestrictionChangePolicyDetails getDataPlacementRestrictionChangePolicyDetailsValue() {
        if (this._tag != Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.dataPlacementRestrictionChangePolicyDetailsValue;
    }

    public boolean isDataPlacementRestrictionSatisfyPolicyDetails() {
        return this._tag == Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS;
    }

    public static EventDetails dataPlacementRestrictionSatisfyPolicyDetails(DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails) {
        if (dataPlacementRestrictionSatisfyPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDataPlacementRestrictionSatisfyPolicyDetails(Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS, dataPlacementRestrictionSatisfyPolicyDetails);
    }

    public DataPlacementRestrictionSatisfyPolicyDetails getDataPlacementRestrictionSatisfyPolicyDetailsValue() {
        if (this._tag != Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.dataPlacementRestrictionSatisfyPolicyDetailsValue;
    }

    public boolean isDeviceApprovalsChangeDesktopPolicyDetails() {
        return this._tag == Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS;
    }

    public static EventDetails deviceApprovalsChangeDesktopPolicyDetails(DeviceApprovalsChangeDesktopPolicyDetails deviceApprovalsChangeDesktopPolicyDetails) {
        if (deviceApprovalsChangeDesktopPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceApprovalsChangeDesktopPolicyDetails(Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS, deviceApprovalsChangeDesktopPolicyDetails);
    }

    public DeviceApprovalsChangeDesktopPolicyDetails getDeviceApprovalsChangeDesktopPolicyDetailsValue() {
        if (this._tag != Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceApprovalsChangeDesktopPolicyDetailsValue;
    }

    public boolean isDeviceApprovalsChangeMobilePolicyDetails() {
        return this._tag == Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS;
    }

    public static EventDetails deviceApprovalsChangeMobilePolicyDetails(DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails) {
        if (deviceApprovalsChangeMobilePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceApprovalsChangeMobilePolicyDetails(Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS, deviceApprovalsChangeMobilePolicyDetails);
    }

    public DeviceApprovalsChangeMobilePolicyDetails getDeviceApprovalsChangeMobilePolicyDetailsValue() {
        if (this._tag != Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceApprovalsChangeMobilePolicyDetailsValue;
    }

    public boolean isDeviceApprovalsChangeOverageActionDetails() {
        return this._tag == Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS;
    }

    public static EventDetails deviceApprovalsChangeOverageActionDetails(DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails) {
        if (deviceApprovalsChangeOverageActionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceApprovalsChangeOverageActionDetails(Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS, deviceApprovalsChangeOverageActionDetails);
    }

    public DeviceApprovalsChangeOverageActionDetails getDeviceApprovalsChangeOverageActionDetailsValue() {
        if (this._tag != Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceApprovalsChangeOverageActionDetailsValue;
    }

    public boolean isDeviceApprovalsChangeUnlinkActionDetails() {
        return this._tag == Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS;
    }

    public static EventDetails deviceApprovalsChangeUnlinkActionDetails(DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails) {
        if (deviceApprovalsChangeUnlinkActionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndDeviceApprovalsChangeUnlinkActionDetails(Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS, deviceApprovalsChangeUnlinkActionDetails);
    }

    public DeviceApprovalsChangeUnlinkActionDetails getDeviceApprovalsChangeUnlinkActionDetailsValue() {
        if (this._tag != Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.deviceApprovalsChangeUnlinkActionDetailsValue;
    }

    public boolean isEmmAddExceptionDetails() {
        return this._tag == Tag.EMM_ADD_EXCEPTION_DETAILS;
    }

    public static EventDetails emmAddExceptionDetails(EmmAddExceptionDetails emmAddExceptionDetails) {
        if (emmAddExceptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmAddExceptionDetails(Tag.EMM_ADD_EXCEPTION_DETAILS, emmAddExceptionDetails);
    }

    public EmmAddExceptionDetails getEmmAddExceptionDetailsValue() {
        if (this._tag != Tag.EMM_ADD_EXCEPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_ADD_EXCEPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmAddExceptionDetailsValue;
    }

    public boolean isEmmChangePolicyDetails() {
        return this._tag == Tag.EMM_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails emmChangePolicyDetails(EmmChangePolicyDetails emmChangePolicyDetails) {
        if (emmChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmChangePolicyDetails(Tag.EMM_CHANGE_POLICY_DETAILS, emmChangePolicyDetails);
    }

    public EmmChangePolicyDetails getEmmChangePolicyDetailsValue() {
        if (this._tag != Tag.EMM_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmChangePolicyDetailsValue;
    }

    public boolean isEmmRemoveExceptionDetails() {
        return this._tag == Tag.EMM_REMOVE_EXCEPTION_DETAILS;
    }

    public static EventDetails emmRemoveExceptionDetails(EmmRemoveExceptionDetails emmRemoveExceptionDetails) {
        if (emmRemoveExceptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndEmmRemoveExceptionDetails(Tag.EMM_REMOVE_EXCEPTION_DETAILS, emmRemoveExceptionDetails);
    }

    public EmmRemoveExceptionDetails getEmmRemoveExceptionDetailsValue() {
        if (this._tag != Tag.EMM_REMOVE_EXCEPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EMM_REMOVE_EXCEPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.emmRemoveExceptionDetailsValue;
    }

    public boolean isExtendedVersionHistoryChangePolicyDetails() {
        return this._tag == Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails extendedVersionHistoryChangePolicyDetails(ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails) {
        if (extendedVersionHistoryChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndExtendedVersionHistoryChangePolicyDetails(Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS, extendedVersionHistoryChangePolicyDetails);
    }

    public ExtendedVersionHistoryChangePolicyDetails getExtendedVersionHistoryChangePolicyDetailsValue() {
        if (this._tag != Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.extendedVersionHistoryChangePolicyDetailsValue;
    }

    public boolean isFileCommentsChangePolicyDetails() {
        return this._tag == Tag.FILE_COMMENTS_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails fileCommentsChangePolicyDetails(FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails) {
        if (fileCommentsChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileCommentsChangePolicyDetails(Tag.FILE_COMMENTS_CHANGE_POLICY_DETAILS, fileCommentsChangePolicyDetails);
    }

    public FileCommentsChangePolicyDetails getFileCommentsChangePolicyDetailsValue() {
        if (this._tag != Tag.FILE_COMMENTS_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_COMMENTS_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileCommentsChangePolicyDetailsValue;
    }

    public boolean isFileRequestsChangePolicyDetails() {
        return this._tag == Tag.FILE_REQUESTS_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails fileRequestsChangePolicyDetails(FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails) {
        if (fileRequestsChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestsChangePolicyDetails(Tag.FILE_REQUESTS_CHANGE_POLICY_DETAILS, fileRequestsChangePolicyDetails);
    }

    public FileRequestsChangePolicyDetails getFileRequestsChangePolicyDetailsValue() {
        if (this._tag != Tag.FILE_REQUESTS_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUESTS_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestsChangePolicyDetailsValue;
    }

    public boolean isFileRequestsEmailsEnabledDetails() {
        return this._tag == Tag.FILE_REQUESTS_EMAILS_ENABLED_DETAILS;
    }

    public static EventDetails fileRequestsEmailsEnabledDetails(FileRequestsEmailsEnabledDetails fileRequestsEmailsEnabledDetails) {
        if (fileRequestsEmailsEnabledDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestsEmailsEnabledDetails(Tag.FILE_REQUESTS_EMAILS_ENABLED_DETAILS, fileRequestsEmailsEnabledDetails);
    }

    public FileRequestsEmailsEnabledDetails getFileRequestsEmailsEnabledDetailsValue() {
        if (this._tag != Tag.FILE_REQUESTS_EMAILS_ENABLED_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUESTS_EMAILS_ENABLED_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestsEmailsEnabledDetailsValue;
    }

    public boolean isFileRequestsEmailsRestrictedToTeamOnlyDetails() {
        return this._tag == Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS;
    }

    public static EventDetails fileRequestsEmailsRestrictedToTeamOnlyDetails(FileRequestsEmailsRestrictedToTeamOnlyDetails fileRequestsEmailsRestrictedToTeamOnlyDetails) {
        if (fileRequestsEmailsRestrictedToTeamOnlyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndFileRequestsEmailsRestrictedToTeamOnlyDetails(Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS, fileRequestsEmailsRestrictedToTeamOnlyDetails);
    }

    public FileRequestsEmailsRestrictedToTeamOnlyDetails getFileRequestsEmailsRestrictedToTeamOnlyDetailsValue() {
        if (this._tag != Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue;
    }

    public boolean isGoogleSsoChangePolicyDetails() {
        return this._tag == Tag.GOOGLE_SSO_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails googleSsoChangePolicyDetails(GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails) {
        if (googleSsoChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGoogleSsoChangePolicyDetails(Tag.GOOGLE_SSO_CHANGE_POLICY_DETAILS, googleSsoChangePolicyDetails);
    }

    public GoogleSsoChangePolicyDetails getGoogleSsoChangePolicyDetailsValue() {
        if (this._tag != Tag.GOOGLE_SSO_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GOOGLE_SSO_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.googleSsoChangePolicyDetailsValue;
    }

    public boolean isGroupUserManagementChangePolicyDetails() {
        return this._tag == Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails groupUserManagementChangePolicyDetails(GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails) {
        if (groupUserManagementChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndGroupUserManagementChangePolicyDetails(Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS, groupUserManagementChangePolicyDetails);
    }

    public GroupUserManagementChangePolicyDetails getGroupUserManagementChangePolicyDetailsValue() {
        if (this._tag != Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.groupUserManagementChangePolicyDetailsValue;
    }

    public boolean isMemberRequestsChangePolicyDetails() {
        return this._tag == Tag.MEMBER_REQUESTS_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails memberRequestsChangePolicyDetails(MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails) {
        if (memberRequestsChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberRequestsChangePolicyDetails(Tag.MEMBER_REQUESTS_CHANGE_POLICY_DETAILS, memberRequestsChangePolicyDetails);
    }

    public MemberRequestsChangePolicyDetails getMemberRequestsChangePolicyDetailsValue() {
        if (this._tag != Tag.MEMBER_REQUESTS_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_REQUESTS_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberRequestsChangePolicyDetailsValue;
    }

    public boolean isMemberSpaceLimitsAddExceptionDetails() {
        return this._tag == Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS;
    }

    public static EventDetails memberSpaceLimitsAddExceptionDetails(MemberSpaceLimitsAddExceptionDetails memberSpaceLimitsAddExceptionDetails) {
        if (memberSpaceLimitsAddExceptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberSpaceLimitsAddExceptionDetails(Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS, memberSpaceLimitsAddExceptionDetails);
    }

    public MemberSpaceLimitsAddExceptionDetails getMemberSpaceLimitsAddExceptionDetailsValue() {
        if (this._tag != Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberSpaceLimitsAddExceptionDetailsValue;
    }

    public boolean isMemberSpaceLimitsChangePolicyDetails() {
        return this._tag == Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails memberSpaceLimitsChangePolicyDetails(MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails) {
        if (memberSpaceLimitsChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberSpaceLimitsChangePolicyDetails(Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS, memberSpaceLimitsChangePolicyDetails);
    }

    public MemberSpaceLimitsChangePolicyDetails getMemberSpaceLimitsChangePolicyDetailsValue() {
        if (this._tag != Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberSpaceLimitsChangePolicyDetailsValue;
    }

    public boolean isMemberSpaceLimitsRemoveExceptionDetails() {
        return this._tag == Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS;
    }

    public static EventDetails memberSpaceLimitsRemoveExceptionDetails(MemberSpaceLimitsRemoveExceptionDetails memberSpaceLimitsRemoveExceptionDetails) {
        if (memberSpaceLimitsRemoveExceptionDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberSpaceLimitsRemoveExceptionDetails(Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS, memberSpaceLimitsRemoveExceptionDetails);
    }

    public MemberSpaceLimitsRemoveExceptionDetails getMemberSpaceLimitsRemoveExceptionDetailsValue() {
        if (this._tag != Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberSpaceLimitsRemoveExceptionDetailsValue;
    }

    public boolean isMemberSuggestionsChangePolicyDetails() {
        return this._tag == Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails memberSuggestionsChangePolicyDetails(MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails) {
        if (memberSuggestionsChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMemberSuggestionsChangePolicyDetails(Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS, memberSuggestionsChangePolicyDetails);
    }

    public MemberSuggestionsChangePolicyDetails getMemberSuggestionsChangePolicyDetailsValue() {
        if (this._tag != Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.memberSuggestionsChangePolicyDetailsValue;
    }

    public boolean isMicrosoftOfficeAddinChangePolicyDetails() {
        return this._tag == Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails microsoftOfficeAddinChangePolicyDetails(MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails) {
        if (microsoftOfficeAddinChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMicrosoftOfficeAddinChangePolicyDetails(Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS, microsoftOfficeAddinChangePolicyDetails);
    }

    public MicrosoftOfficeAddinChangePolicyDetails getMicrosoftOfficeAddinChangePolicyDetailsValue() {
        if (this._tag != Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.microsoftOfficeAddinChangePolicyDetailsValue;
    }

    public boolean isNetworkControlChangePolicyDetails() {
        return this._tag == Tag.NETWORK_CONTROL_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails networkControlChangePolicyDetails(NetworkControlChangePolicyDetails networkControlChangePolicyDetails) {
        if (networkControlChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndNetworkControlChangePolicyDetails(Tag.NETWORK_CONTROL_CHANGE_POLICY_DETAILS, networkControlChangePolicyDetails);
    }

    public NetworkControlChangePolicyDetails getNetworkControlChangePolicyDetailsValue() {
        if (this._tag != Tag.NETWORK_CONTROL_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.NETWORK_CONTROL_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.networkControlChangePolicyDetailsValue;
    }

    public boolean isPaperChangeDeploymentPolicyDetails() {
        return this._tag == Tag.PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS;
    }

    public static EventDetails paperChangeDeploymentPolicyDetails(PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails) {
        if (paperChangeDeploymentPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperChangeDeploymentPolicyDetails(Tag.PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS, paperChangeDeploymentPolicyDetails);
    }

    public PaperChangeDeploymentPolicyDetails getPaperChangeDeploymentPolicyDetailsValue() {
        if (this._tag != Tag.PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperChangeDeploymentPolicyDetailsValue;
    }

    public boolean isPaperChangeMemberLinkPolicyDetails() {
        return this._tag == Tag.PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS;
    }

    public static EventDetails paperChangeMemberLinkPolicyDetails(PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails) {
        if (paperChangeMemberLinkPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperChangeMemberLinkPolicyDetails(Tag.PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS, paperChangeMemberLinkPolicyDetails);
    }

    public PaperChangeMemberLinkPolicyDetails getPaperChangeMemberLinkPolicyDetailsValue() {
        if (this._tag != Tag.PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperChangeMemberLinkPolicyDetailsValue;
    }

    public boolean isPaperChangeMemberPolicyDetails() {
        return this._tag == Tag.PAPER_CHANGE_MEMBER_POLICY_DETAILS;
    }

    public static EventDetails paperChangeMemberPolicyDetails(PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails) {
        if (paperChangeMemberPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperChangeMemberPolicyDetails(Tag.PAPER_CHANGE_MEMBER_POLICY_DETAILS, paperChangeMemberPolicyDetails);
    }

    public PaperChangeMemberPolicyDetails getPaperChangeMemberPolicyDetailsValue() {
        if (this._tag != Tag.PAPER_CHANGE_MEMBER_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_MEMBER_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperChangeMemberPolicyDetailsValue;
    }

    public boolean isPaperChangePolicyDetails() {
        return this._tag == Tag.PAPER_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails paperChangePolicyDetails(PaperChangePolicyDetails paperChangePolicyDetails) {
        if (paperChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPaperChangePolicyDetails(Tag.PAPER_CHANGE_POLICY_DETAILS, paperChangePolicyDetails);
    }

    public PaperChangePolicyDetails getPaperChangePolicyDetailsValue() {
        if (this._tag != Tag.PAPER_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.paperChangePolicyDetailsValue;
    }

    public boolean isPermanentDeleteChangePolicyDetails() {
        return this._tag == Tag.PERMANENT_DELETE_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails permanentDeleteChangePolicyDetails(PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails) {
        if (permanentDeleteChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndPermanentDeleteChangePolicyDetails(Tag.PERMANENT_DELETE_CHANGE_POLICY_DETAILS, permanentDeleteChangePolicyDetails);
    }

    public PermanentDeleteChangePolicyDetails getPermanentDeleteChangePolicyDetailsValue() {
        if (this._tag != Tag.PERMANENT_DELETE_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.PERMANENT_DELETE_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.permanentDeleteChangePolicyDetailsValue;
    }

    public boolean isSharingChangeFolderJoinPolicyDetails() {
        return this._tag == Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS;
    }

    public static EventDetails sharingChangeFolderJoinPolicyDetails(SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails) {
        if (sharingChangeFolderJoinPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharingChangeFolderJoinPolicyDetails(Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS, sharingChangeFolderJoinPolicyDetails);
    }

    public SharingChangeFolderJoinPolicyDetails getSharingChangeFolderJoinPolicyDetailsValue() {
        if (this._tag != Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharingChangeFolderJoinPolicyDetailsValue;
    }

    public boolean isSharingChangeLinkPolicyDetails() {
        return this._tag == Tag.SHARING_CHANGE_LINK_POLICY_DETAILS;
    }

    public static EventDetails sharingChangeLinkPolicyDetails(SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails) {
        if (sharingChangeLinkPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharingChangeLinkPolicyDetails(Tag.SHARING_CHANGE_LINK_POLICY_DETAILS, sharingChangeLinkPolicyDetails);
    }

    public SharingChangeLinkPolicyDetails getSharingChangeLinkPolicyDetailsValue() {
        if (this._tag != Tag.SHARING_CHANGE_LINK_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARING_CHANGE_LINK_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharingChangeLinkPolicyDetailsValue;
    }

    public boolean isSharingChangeMemberPolicyDetails() {
        return this._tag == Tag.SHARING_CHANGE_MEMBER_POLICY_DETAILS;
    }

    public static EventDetails sharingChangeMemberPolicyDetails(SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails) {
        if (sharingChangeMemberPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSharingChangeMemberPolicyDetails(Tag.SHARING_CHANGE_MEMBER_POLICY_DETAILS, sharingChangeMemberPolicyDetails);
    }

    public SharingChangeMemberPolicyDetails getSharingChangeMemberPolicyDetailsValue() {
        if (this._tag != Tag.SHARING_CHANGE_MEMBER_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SHARING_CHANGE_MEMBER_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.sharingChangeMemberPolicyDetailsValue;
    }

    public boolean isSmartSyncChangePolicyDetails() {
        return this._tag == Tag.SMART_SYNC_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails smartSyncChangePolicyDetails(SmartSyncChangePolicyDetails smartSyncChangePolicyDetails) {
        if (smartSyncChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSmartSyncChangePolicyDetails(Tag.SMART_SYNC_CHANGE_POLICY_DETAILS, smartSyncChangePolicyDetails);
    }

    public SmartSyncChangePolicyDetails getSmartSyncChangePolicyDetailsValue() {
        if (this._tag != Tag.SMART_SYNC_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.smartSyncChangePolicyDetailsValue;
    }

    public boolean isSmartSyncNotOptOutDetails() {
        return this._tag == Tag.SMART_SYNC_NOT_OPT_OUT_DETAILS;
    }

    public static EventDetails smartSyncNotOptOutDetails(SmartSyncNotOptOutDetails smartSyncNotOptOutDetails) {
        if (smartSyncNotOptOutDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSmartSyncNotOptOutDetails(Tag.SMART_SYNC_NOT_OPT_OUT_DETAILS, smartSyncNotOptOutDetails);
    }

    public SmartSyncNotOptOutDetails getSmartSyncNotOptOutDetailsValue() {
        if (this._tag != Tag.SMART_SYNC_NOT_OPT_OUT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_NOT_OPT_OUT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.smartSyncNotOptOutDetailsValue;
    }

    public boolean isSmartSyncOptOutDetails() {
        return this._tag == Tag.SMART_SYNC_OPT_OUT_DETAILS;
    }

    public static EventDetails smartSyncOptOutDetails(SmartSyncOptOutDetails smartSyncOptOutDetails) {
        if (smartSyncOptOutDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSmartSyncOptOutDetails(Tag.SMART_SYNC_OPT_OUT_DETAILS, smartSyncOptOutDetails);
    }

    public SmartSyncOptOutDetails getSmartSyncOptOutDetailsValue() {
        if (this._tag != Tag.SMART_SYNC_OPT_OUT_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SMART_SYNC_OPT_OUT_DETAILS, but was Tag." + this._tag.name());
        }
        return this.smartSyncOptOutDetailsValue;
    }

    public boolean isSsoChangePolicyDetails() {
        return this._tag == Tag.SSO_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails ssoChangePolicyDetails(SsoChangePolicyDetails ssoChangePolicyDetails) {
        if (ssoChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndSsoChangePolicyDetails(Tag.SSO_CHANGE_POLICY_DETAILS, ssoChangePolicyDetails);
    }

    public SsoChangePolicyDetails getSsoChangePolicyDetailsValue() {
        if (this._tag != Tag.SSO_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.SSO_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.ssoChangePolicyDetailsValue;
    }

    public boolean isTfaChangePolicyDetails() {
        return this._tag == Tag.TFA_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails tfaChangePolicyDetails(TfaChangePolicyDetails tfaChangePolicyDetails) {
        if (tfaChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaChangePolicyDetails(Tag.TFA_CHANGE_POLICY_DETAILS, tfaChangePolicyDetails);
    }

    public TfaChangePolicyDetails getTfaChangePolicyDetailsValue() {
        if (this._tag != Tag.TFA_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaChangePolicyDetailsValue;
    }

    public boolean isTwoAccountChangePolicyDetails() {
        return this._tag == Tag.TWO_ACCOUNT_CHANGE_POLICY_DETAILS;
    }

    public static EventDetails twoAccountChangePolicyDetails(TwoAccountChangePolicyDetails twoAccountChangePolicyDetails) {
        if (twoAccountChangePolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTwoAccountChangePolicyDetails(Tag.TWO_ACCOUNT_CHANGE_POLICY_DETAILS, twoAccountChangePolicyDetails);
    }

    public TwoAccountChangePolicyDetails getTwoAccountChangePolicyDetailsValue() {
        if (this._tag != Tag.TWO_ACCOUNT_CHANGE_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TWO_ACCOUNT_CHANGE_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.twoAccountChangePolicyDetailsValue;
    }

    public boolean isWebSessionsChangeFixedLengthPolicyDetails() {
        return this._tag == Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS;
    }

    public static EventDetails webSessionsChangeFixedLengthPolicyDetails(WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails) {
        if (webSessionsChangeFixedLengthPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndWebSessionsChangeFixedLengthPolicyDetails(Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS, webSessionsChangeFixedLengthPolicyDetails);
    }

    public WebSessionsChangeFixedLengthPolicyDetails getWebSessionsChangeFixedLengthPolicyDetailsValue() {
        if (this._tag != Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.webSessionsChangeFixedLengthPolicyDetailsValue;
    }

    public boolean isWebSessionsChangeIdleLengthPolicyDetails() {
        return this._tag == Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS;
    }

    public static EventDetails webSessionsChangeIdleLengthPolicyDetails(WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails) {
        if (webSessionsChangeIdleLengthPolicyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndWebSessionsChangeIdleLengthPolicyDetails(Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS, webSessionsChangeIdleLengthPolicyDetails);
    }

    public WebSessionsChangeIdleLengthPolicyDetails getWebSessionsChangeIdleLengthPolicyDetailsValue() {
        if (this._tag != Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.webSessionsChangeIdleLengthPolicyDetailsValue;
    }

    public boolean isTeamProfileAddLogoDetails() {
        return this._tag == Tag.TEAM_PROFILE_ADD_LOGO_DETAILS;
    }

    public static EventDetails teamProfileAddLogoDetails(TeamProfileAddLogoDetails teamProfileAddLogoDetails) {
        if (teamProfileAddLogoDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamProfileAddLogoDetails(Tag.TEAM_PROFILE_ADD_LOGO_DETAILS, teamProfileAddLogoDetails);
    }

    public TeamProfileAddLogoDetails getTeamProfileAddLogoDetailsValue() {
        if (this._tag != Tag.TEAM_PROFILE_ADD_LOGO_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_ADD_LOGO_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamProfileAddLogoDetailsValue;
    }

    public boolean isTeamProfileChangeDefaultLanguageDetails() {
        return this._tag == Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS;
    }

    public static EventDetails teamProfileChangeDefaultLanguageDetails(TeamProfileChangeDefaultLanguageDetails teamProfileChangeDefaultLanguageDetails) {
        if (teamProfileChangeDefaultLanguageDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamProfileChangeDefaultLanguageDetails(Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS, teamProfileChangeDefaultLanguageDetails);
    }

    public TeamProfileChangeDefaultLanguageDetails getTeamProfileChangeDefaultLanguageDetailsValue() {
        if (this._tag != Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamProfileChangeDefaultLanguageDetailsValue;
    }

    public boolean isTeamProfileChangeLogoDetails() {
        return this._tag == Tag.TEAM_PROFILE_CHANGE_LOGO_DETAILS;
    }

    public static EventDetails teamProfileChangeLogoDetails(TeamProfileChangeLogoDetails teamProfileChangeLogoDetails) {
        if (teamProfileChangeLogoDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamProfileChangeLogoDetails(Tag.TEAM_PROFILE_CHANGE_LOGO_DETAILS, teamProfileChangeLogoDetails);
    }

    public TeamProfileChangeLogoDetails getTeamProfileChangeLogoDetailsValue() {
        if (this._tag != Tag.TEAM_PROFILE_CHANGE_LOGO_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_CHANGE_LOGO_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamProfileChangeLogoDetailsValue;
    }

    public boolean isTeamProfileChangeNameDetails() {
        return this._tag == Tag.TEAM_PROFILE_CHANGE_NAME_DETAILS;
    }

    public static EventDetails teamProfileChangeNameDetails(TeamProfileChangeNameDetails teamProfileChangeNameDetails) {
        if (teamProfileChangeNameDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamProfileChangeNameDetails(Tag.TEAM_PROFILE_CHANGE_NAME_DETAILS, teamProfileChangeNameDetails);
    }

    public TeamProfileChangeNameDetails getTeamProfileChangeNameDetailsValue() {
        if (this._tag != Tag.TEAM_PROFILE_CHANGE_NAME_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_CHANGE_NAME_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamProfileChangeNameDetailsValue;
    }

    public boolean isTeamProfileRemoveLogoDetails() {
        return this._tag == Tag.TEAM_PROFILE_REMOVE_LOGO_DETAILS;
    }

    public static EventDetails teamProfileRemoveLogoDetails(TeamProfileRemoveLogoDetails teamProfileRemoveLogoDetails) {
        if (teamProfileRemoveLogoDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTeamProfileRemoveLogoDetails(Tag.TEAM_PROFILE_REMOVE_LOGO_DETAILS, teamProfileRemoveLogoDetails);
    }

    public TeamProfileRemoveLogoDetails getTeamProfileRemoveLogoDetailsValue() {
        if (this._tag != Tag.TEAM_PROFILE_REMOVE_LOGO_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_PROFILE_REMOVE_LOGO_DETAILS, but was Tag." + this._tag.name());
        }
        return this.teamProfileRemoveLogoDetailsValue;
    }

    public boolean isTfaAddBackupPhoneDetails() {
        return this._tag == Tag.TFA_ADD_BACKUP_PHONE_DETAILS;
    }

    public static EventDetails tfaAddBackupPhoneDetails(TfaAddBackupPhoneDetails tfaAddBackupPhoneDetails) {
        if (tfaAddBackupPhoneDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaAddBackupPhoneDetails(Tag.TFA_ADD_BACKUP_PHONE_DETAILS, tfaAddBackupPhoneDetails);
    }

    public TfaAddBackupPhoneDetails getTfaAddBackupPhoneDetailsValue() {
        if (this._tag != Tag.TFA_ADD_BACKUP_PHONE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_ADD_BACKUP_PHONE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaAddBackupPhoneDetailsValue;
    }

    public boolean isTfaAddSecurityKeyDetails() {
        return this._tag == Tag.TFA_ADD_SECURITY_KEY_DETAILS;
    }

    public static EventDetails tfaAddSecurityKeyDetails(TfaAddSecurityKeyDetails tfaAddSecurityKeyDetails) {
        if (tfaAddSecurityKeyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaAddSecurityKeyDetails(Tag.TFA_ADD_SECURITY_KEY_DETAILS, tfaAddSecurityKeyDetails);
    }

    public TfaAddSecurityKeyDetails getTfaAddSecurityKeyDetailsValue() {
        if (this._tag != Tag.TFA_ADD_SECURITY_KEY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_ADD_SECURITY_KEY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaAddSecurityKeyDetailsValue;
    }

    public boolean isTfaChangeBackupPhoneDetails() {
        return this._tag == Tag.TFA_CHANGE_BACKUP_PHONE_DETAILS;
    }

    public static EventDetails tfaChangeBackupPhoneDetails(TfaChangeBackupPhoneDetails tfaChangeBackupPhoneDetails) {
        if (tfaChangeBackupPhoneDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaChangeBackupPhoneDetails(Tag.TFA_CHANGE_BACKUP_PHONE_DETAILS, tfaChangeBackupPhoneDetails);
    }

    public TfaChangeBackupPhoneDetails getTfaChangeBackupPhoneDetailsValue() {
        if (this._tag != Tag.TFA_CHANGE_BACKUP_PHONE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_CHANGE_BACKUP_PHONE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaChangeBackupPhoneDetailsValue;
    }

    public boolean isTfaChangeStatusDetails() {
        return this._tag == Tag.TFA_CHANGE_STATUS_DETAILS;
    }

    public static EventDetails tfaChangeStatusDetails(TfaChangeStatusDetails tfaChangeStatusDetails) {
        if (tfaChangeStatusDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaChangeStatusDetails(Tag.TFA_CHANGE_STATUS_DETAILS, tfaChangeStatusDetails);
    }

    public TfaChangeStatusDetails getTfaChangeStatusDetailsValue() {
        if (this._tag != Tag.TFA_CHANGE_STATUS_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_CHANGE_STATUS_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaChangeStatusDetailsValue;
    }

    public boolean isTfaRemoveBackupPhoneDetails() {
        return this._tag == Tag.TFA_REMOVE_BACKUP_PHONE_DETAILS;
    }

    public static EventDetails tfaRemoveBackupPhoneDetails(TfaRemoveBackupPhoneDetails tfaRemoveBackupPhoneDetails) {
        if (tfaRemoveBackupPhoneDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaRemoveBackupPhoneDetails(Tag.TFA_REMOVE_BACKUP_PHONE_DETAILS, tfaRemoveBackupPhoneDetails);
    }

    public TfaRemoveBackupPhoneDetails getTfaRemoveBackupPhoneDetailsValue() {
        if (this._tag != Tag.TFA_REMOVE_BACKUP_PHONE_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_REMOVE_BACKUP_PHONE_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaRemoveBackupPhoneDetailsValue;
    }

    public boolean isTfaRemoveSecurityKeyDetails() {
        return this._tag == Tag.TFA_REMOVE_SECURITY_KEY_DETAILS;
    }

    public static EventDetails tfaRemoveSecurityKeyDetails(TfaRemoveSecurityKeyDetails tfaRemoveSecurityKeyDetails) {
        if (tfaRemoveSecurityKeyDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaRemoveSecurityKeyDetails(Tag.TFA_REMOVE_SECURITY_KEY_DETAILS, tfaRemoveSecurityKeyDetails);
    }

    public TfaRemoveSecurityKeyDetails getTfaRemoveSecurityKeyDetailsValue() {
        if (this._tag != Tag.TFA_REMOVE_SECURITY_KEY_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_REMOVE_SECURITY_KEY_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaRemoveSecurityKeyDetailsValue;
    }

    public boolean isTfaResetDetails() {
        return this._tag == Tag.TFA_RESET_DETAILS;
    }

    public static EventDetails tfaResetDetails(TfaResetDetails tfaResetDetails) {
        if (tfaResetDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndTfaResetDetails(Tag.TFA_RESET_DETAILS, tfaResetDetails);
    }

    public TfaResetDetails getTfaResetDetailsValue() {
        if (this._tag != Tag.TFA_RESET_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.TFA_RESET_DETAILS, but was Tag." + this._tag.name());
        }
        return this.tfaResetDetailsValue;
    }

    public boolean isMissingDetails() {
        return this._tag == Tag.MISSING_DETAILS;
    }

    public static EventDetails missingDetails(MissingDetails missingDetails) {
        if (missingDetails == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new EventDetails().withTagAndMissingDetails(Tag.MISSING_DETAILS, missingDetails);
    }

    public MissingDetails getMissingDetailsValue() {
        if (this._tag != Tag.MISSING_DETAILS) {
            throw new IllegalStateException("Invalid tag: required Tag.MISSING_DETAILS, but was Tag." + this._tag.name());
        }
        return this.missingDetailsValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.memberChangeMembershipTypeDetailsValue, this.memberPermanentlyDeleteAccountContentsDetailsValue, this.memberSpaceLimitsChangeStatusDetailsValue, this.memberTransferAccountContentsDetailsValue, this.paperAdminExportStartDetailsValue, this.paperEnabledUsersGroupAdditionDetailsValue, this.paperEnabledUsersGroupRemovalDetailsValue, this.paperExternalViewAllowDetailsValue, this.paperExternalViewDefaultTeamDetailsValue, this.paperExternalViewForbidDetailsValue, this.sfExternalInviteWarnDetailsValue, this.teamMergeFromDetailsValue, this.teamMergeToDetailsValue, this.appLinkTeamDetailsValue, this.appLinkUserDetailsValue, this.appUnlinkTeamDetailsValue, this.appUnlinkUserDetailsValue, this.fileAddCommentDetailsValue, this.fileChangeCommentSubscriptionDetailsValue, this.fileDeleteCommentDetailsValue, this.fileLikeCommentDetailsValue, this.fileResolveCommentDetailsValue, this.fileUnlikeCommentDetailsValue, this.fileUnresolveCommentDetailsValue, this.deviceChangeIpDesktopDetailsValue, this.deviceChangeIpMobileDetailsValue, this.deviceChangeIpWebDetailsValue, this.deviceDeleteOnUnlinkFailDetailsValue, this.deviceDeleteOnUnlinkSuccessDetailsValue, this.deviceLinkFailDetailsValue, this.deviceLinkSuccessDetailsValue, this.deviceManagementDisabledDetailsValue, this.deviceManagementEnabledDetailsValue, this.deviceUnlinkDetailsValue, this.emmRefreshAuthTokenDetailsValue, this.accountCaptureChangeAvailabilityDetailsValue, this.accountCaptureMigrateAccountDetailsValue, this.accountCaptureRelinquishAccountDetailsValue, this.disabledDomainInvitesDetailsValue, this.domainInvitesApproveRequestToJoinTeamDetailsValue, this.domainInvitesDeclineRequestToJoinTeamDetailsValue, this.domainInvitesEmailExistingUsersDetailsValue, this.domainInvitesRequestToJoinTeamDetailsValue, this.domainInvitesSetInviteNewUserPrefToNoDetailsValue, this.domainInvitesSetInviteNewUserPrefToYesDetailsValue, this.domainVerificationAddDomainFailDetailsValue, this.domainVerificationAddDomainSuccessDetailsValue, this.domainVerificationRemoveDomainDetailsValue, this.enabledDomainInvitesDetailsValue, this.createFolderDetailsValue, this.fileAddDetailsValue, this.fileCopyDetailsValue, this.fileDeleteDetailsValue, this.fileDownloadDetailsValue, this.fileEditDetailsValue, this.fileGetCopyReferenceDetailsValue, this.fileMoveDetailsValue, this.filePermanentlyDeleteDetailsValue, this.filePreviewDetailsValue, this.fileRenameDetailsValue, this.fileRestoreDetailsValue, this.fileRevertDetailsValue, this.fileRollbackChangesDetailsValue, this.fileSaveCopyReferenceDetailsValue, this.fileRequestAddDeadlineDetailsValue, this.fileRequestChangeFolderDetailsValue, this.fileRequestChangeTitleDetailsValue, this.fileRequestCloseDetailsValue, this.fileRequestCreateDetailsValue, this.fileRequestReceiveFileDetailsValue, this.fileRequestRemoveDeadlineDetailsValue, this.fileRequestSendDetailsValue, this.groupAddExternalIdDetailsValue, this.groupAddMemberDetailsValue, this.groupChangeExternalIdDetailsValue, this.groupChangeManagementTypeDetailsValue, this.groupChangeMemberRoleDetailsValue, this.groupCreateDetailsValue, this.groupDeleteDetailsValue, this.groupMovedDetailsValue, this.groupRemoveExternalIdDetailsValue, this.groupRemoveMemberDetailsValue, this.groupRenameDetailsValue, this.emmLoginSuccessDetailsValue, this.logoutDetailsValue, this.passwordLoginFailDetailsValue, this.passwordLoginSuccessDetailsValue, this.resellerSupportSessionEndDetailsValue, this.resellerSupportSessionStartDetailsValue, this.signInAsSessionEndDetailsValue, this.signInAsSessionStartDetailsValue, this.ssoLoginFailDetailsValue, this.memberAddNameDetailsValue, this.memberChangeAdminRoleDetailsValue, this.memberChangeEmailDetailsValue, this.memberChangeNameDetailsValue, this.memberChangeStatusDetailsValue, this.memberSuggestDetailsValue, this.paperContentAddMemberDetailsValue, this.paperContentAddToFolderDetailsValue, this.paperContentArchiveDetailsValue, this.paperContentCreateDetailsValue, this.paperContentPermanentlyDeleteDetailsValue, this.paperContentRemoveFromFolderDetailsValue, this.paperContentRemoveMemberDetailsValue, this.paperContentRenameDetailsValue, this.paperContentRestoreDetailsValue, this.paperDocAddCommentDetailsValue, this.paperDocChangeMemberRoleDetailsValue, this.paperDocChangeSharingPolicyDetailsValue, this.paperDocChangeSubscriptionDetailsValue, this.paperDocDeletedDetailsValue, this.paperDocDeleteCommentDetailsValue, this.paperDocDownloadDetailsValue, this.paperDocEditDetailsValue, this.paperDocEditCommentDetailsValue, this.paperDocFollowedDetailsValue, this.paperDocMentionDetailsValue, this.paperDocRequestAccessDetailsValue, this.paperDocResolveCommentDetailsValue, this.paperDocRevertDetailsValue, this.paperDocSlackShareDetailsValue, this.paperDocTeamInviteDetailsValue, this.paperDocTrashedDetailsValue, this.paperDocUnresolveCommentDetailsValue, this.paperDocUntrashedDetailsValue, this.paperDocViewDetailsValue, this.paperFolderChangeSubscriptionDetailsValue, this.paperFolderDeletedDetailsValue, this.paperFolderFollowedDetailsValue, this.paperFolderTeamInviteDetailsValue, this.passwordChangeDetailsValue, this.passwordResetDetailsValue, this.passwordResetAllDetailsValue, this.emmCreateExceptionsReportDetailsValue, this.emmCreateUsageReportDetailsValue, this.smartSyncCreateAdminPrivilegeReportDetailsValue, this.teamActivityCreateReportDetailsValue, this.collectionShareDetailsValue, this.noteAclInviteOnlyDetailsValue, this.noteAclLinkDetailsValue, this.noteAclTeamLinkDetailsValue, this.noteSharedDetailsValue, this.noteShareReceiveDetailsValue, this.openNoteSharedDetailsValue, this.sfAddGroupDetailsValue, this.sfAllowNonMembersToViewSharedLinksDetailsValue, this.sfInviteGroupDetailsValue, this.sfNestDetailsValue, this.sfTeamDeclineDetailsValue, this.sfTeamGrantAccessDetailsValue, this.sfTeamInviteDetailsValue, this.sfTeamInviteChangeRoleDetailsValue, this.sfTeamJoinDetailsValue, this.sfTeamJoinFromOobLinkDetailsValue, this.sfTeamUninviteDetailsValue, this.sharedContentAddInviteesDetailsValue, this.sharedContentAddLinkExpiryDetailsValue, this.sharedContentAddLinkPasswordDetailsValue, this.sharedContentAddMemberDetailsValue, this.sharedContentChangeDownloadsPolicyDetailsValue, this.sharedContentChangeInviteeRoleDetailsValue, this.sharedContentChangeLinkAudienceDetailsValue, this.sharedContentChangeLinkExpiryDetailsValue, this.sharedContentChangeLinkPasswordDetailsValue, this.sharedContentChangeMemberRoleDetailsValue, this.sharedContentChangeViewerInfoPolicyDetailsValue, this.sharedContentClaimInvitationDetailsValue, this.sharedContentCopyDetailsValue, this.sharedContentDownloadDetailsValue, this.sharedContentRelinquishMembershipDetailsValue, this.sharedContentRemoveInviteeDetailsValue, this.sharedContentRemoveLinkExpiryDetailsValue, this.sharedContentRemoveLinkPasswordDetailsValue, this.sharedContentRemoveMemberDetailsValue, this.sharedContentRequestAccessDetailsValue, this.sharedContentUnshareDetailsValue, this.sharedContentViewDetailsValue, this.sharedFolderChangeConfidentialityDetailsValue, this.sharedFolderChangeLinkPolicyDetailsValue, this.sharedFolderChangeMemberManagementPolicyDetailsValue, this.sharedFolderChangeMemberPolicyDetailsValue, this.sharedFolderCreateDetailsValue, this.sharedFolderMountDetailsValue, this.sharedFolderTransferOwnershipDetailsValue, this.sharedFolderUnmountDetailsValue, this.sharedNoteOpenedDetailsValue, this.shmodelAppCreateDetailsValue, this.shmodelCreateDetailsValue, this.shmodelDisableDetailsValue, this.shmodelFbShareDetailsValue, this.shmodelGroupShareDetailsValue, this.shmodelRemoveExpirationDetailsValue, this.shmodelSetExpirationDetailsValue, this.shmodelTeamCopyDetailsValue, this.shmodelTeamDownloadDetailsValue, this.shmodelTeamShareDetailsValue, this.shmodelTeamViewDetailsValue, this.shmodelVisibilityPasswordDetailsValue, this.shmodelVisibilityPublicDetailsValue, this.shmodelVisibilityTeamOnlyDetailsValue, this.ssoAddCertDetailsValue, this.ssoAddLoginUrlDetailsValue, this.ssoAddLogoutUrlDetailsValue, this.ssoChangeCertDetailsValue, this.ssoChangeLoginUrlDetailsValue, this.ssoChangeLogoutUrlDetailsValue, this.ssoChangeSamlIdentityModeDetailsValue, this.ssoRemoveCertDetailsValue, this.ssoRemoveLoginUrlDetailsValue, this.ssoRemoveLogoutUrlDetailsValue, this.teamFolderChangeStatusDetailsValue, this.teamFolderCreateDetailsValue, this.teamFolderDowngradeDetailsValue, this.teamFolderPermanentlyDeleteDetailsValue, this.teamFolderRenameDetailsValue, this.accountCaptureChangePolicyDetailsValue, this.allowDownloadDisabledDetailsValue, this.allowDownloadEnabledDetailsValue, this.dataPlacementRestrictionChangePolicyDetailsValue, this.dataPlacementRestrictionSatisfyPolicyDetailsValue, this.deviceApprovalsChangeDesktopPolicyDetailsValue, this.deviceApprovalsChangeMobilePolicyDetailsValue, this.deviceApprovalsChangeOverageActionDetailsValue, this.deviceApprovalsChangeUnlinkActionDetailsValue, this.emmAddExceptionDetailsValue, this.emmChangePolicyDetailsValue, this.emmRemoveExceptionDetailsValue, this.extendedVersionHistoryChangePolicyDetailsValue, this.fileCommentsChangePolicyDetailsValue, this.fileRequestsChangePolicyDetailsValue, this.fileRequestsEmailsEnabledDetailsValue, this.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue, this.googleSsoChangePolicyDetailsValue, this.groupUserManagementChangePolicyDetailsValue, this.memberRequestsChangePolicyDetailsValue, this.memberSpaceLimitsAddExceptionDetailsValue, this.memberSpaceLimitsChangePolicyDetailsValue, this.memberSpaceLimitsRemoveExceptionDetailsValue, this.memberSuggestionsChangePolicyDetailsValue, this.microsoftOfficeAddinChangePolicyDetailsValue, this.networkControlChangePolicyDetailsValue, this.paperChangeDeploymentPolicyDetailsValue, this.paperChangeMemberLinkPolicyDetailsValue, this.paperChangeMemberPolicyDetailsValue, this.paperChangePolicyDetailsValue, this.permanentDeleteChangePolicyDetailsValue, this.sharingChangeFolderJoinPolicyDetailsValue, this.sharingChangeLinkPolicyDetailsValue, this.sharingChangeMemberPolicyDetailsValue, this.smartSyncChangePolicyDetailsValue, this.smartSyncNotOptOutDetailsValue, this.smartSyncOptOutDetailsValue, this.ssoChangePolicyDetailsValue, this.tfaChangePolicyDetailsValue, this.twoAccountChangePolicyDetailsValue, this.webSessionsChangeFixedLengthPolicyDetailsValue, this.webSessionsChangeIdleLengthPolicyDetailsValue, this.teamProfileAddLogoDetailsValue, this.teamProfileChangeDefaultLanguageDetailsValue, this.teamProfileChangeLogoDetailsValue, this.teamProfileChangeNameDetailsValue, this.teamProfileRemoveLogoDetailsValue, this.tfaAddBackupPhoneDetailsValue, this.tfaAddSecurityKeyDetailsValue, this.tfaChangeBackupPhoneDetailsValue, this.tfaChangeStatusDetailsValue, this.tfaRemoveBackupPhoneDetailsValue, this.tfaRemoveSecurityKeyDetailsValue, this.tfaResetDetailsValue, this.missingDetailsValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof EventDetails)) {
            return false;
        }
        EventDetails eventDetails = (EventDetails) obj;
        if (this._tag != eventDetails._tag) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[this._tag.ordinal()]) {
            case 1:
                return this.memberChangeMembershipTypeDetailsValue == eventDetails.memberChangeMembershipTypeDetailsValue || this.memberChangeMembershipTypeDetailsValue.equals(eventDetails.memberChangeMembershipTypeDetailsValue);
            case 2:
                return this.memberPermanentlyDeleteAccountContentsDetailsValue == eventDetails.memberPermanentlyDeleteAccountContentsDetailsValue || this.memberPermanentlyDeleteAccountContentsDetailsValue.equals(eventDetails.memberPermanentlyDeleteAccountContentsDetailsValue);
            case 3:
                return this.memberSpaceLimitsChangeStatusDetailsValue == eventDetails.memberSpaceLimitsChangeStatusDetailsValue || this.memberSpaceLimitsChangeStatusDetailsValue.equals(eventDetails.memberSpaceLimitsChangeStatusDetailsValue);
            case 4:
                return this.memberTransferAccountContentsDetailsValue == eventDetails.memberTransferAccountContentsDetailsValue || this.memberTransferAccountContentsDetailsValue.equals(eventDetails.memberTransferAccountContentsDetailsValue);
            case 5:
                return this.paperAdminExportStartDetailsValue == eventDetails.paperAdminExportStartDetailsValue || this.paperAdminExportStartDetailsValue.equals(eventDetails.paperAdminExportStartDetailsValue);
            case 6:
                return this.paperEnabledUsersGroupAdditionDetailsValue == eventDetails.paperEnabledUsersGroupAdditionDetailsValue || this.paperEnabledUsersGroupAdditionDetailsValue.equals(eventDetails.paperEnabledUsersGroupAdditionDetailsValue);
            case 7:
                return this.paperEnabledUsersGroupRemovalDetailsValue == eventDetails.paperEnabledUsersGroupRemovalDetailsValue || this.paperEnabledUsersGroupRemovalDetailsValue.equals(eventDetails.paperEnabledUsersGroupRemovalDetailsValue);
            case 8:
                return this.paperExternalViewAllowDetailsValue == eventDetails.paperExternalViewAllowDetailsValue || this.paperExternalViewAllowDetailsValue.equals(eventDetails.paperExternalViewAllowDetailsValue);
            case 9:
                return this.paperExternalViewDefaultTeamDetailsValue == eventDetails.paperExternalViewDefaultTeamDetailsValue || this.paperExternalViewDefaultTeamDetailsValue.equals(eventDetails.paperExternalViewDefaultTeamDetailsValue);
            case 10:
                return this.paperExternalViewForbidDetailsValue == eventDetails.paperExternalViewForbidDetailsValue || this.paperExternalViewForbidDetailsValue.equals(eventDetails.paperExternalViewForbidDetailsValue);
            case 11:
                return this.sfExternalInviteWarnDetailsValue == eventDetails.sfExternalInviteWarnDetailsValue || this.sfExternalInviteWarnDetailsValue.equals(eventDetails.sfExternalInviteWarnDetailsValue);
            case 12:
                return this.teamMergeFromDetailsValue == eventDetails.teamMergeFromDetailsValue || this.teamMergeFromDetailsValue.equals(eventDetails.teamMergeFromDetailsValue);
            case 13:
                return this.teamMergeToDetailsValue == eventDetails.teamMergeToDetailsValue || this.teamMergeToDetailsValue.equals(eventDetails.teamMergeToDetailsValue);
            case 14:
                return this.appLinkTeamDetailsValue == eventDetails.appLinkTeamDetailsValue || this.appLinkTeamDetailsValue.equals(eventDetails.appLinkTeamDetailsValue);
            case 15:
                return this.appLinkUserDetailsValue == eventDetails.appLinkUserDetailsValue || this.appLinkUserDetailsValue.equals(eventDetails.appLinkUserDetailsValue);
            case 16:
                return this.appUnlinkTeamDetailsValue == eventDetails.appUnlinkTeamDetailsValue || this.appUnlinkTeamDetailsValue.equals(eventDetails.appUnlinkTeamDetailsValue);
            case 17:
                return this.appUnlinkUserDetailsValue == eventDetails.appUnlinkUserDetailsValue || this.appUnlinkUserDetailsValue.equals(eventDetails.appUnlinkUserDetailsValue);
            case 18:
                return this.fileAddCommentDetailsValue == eventDetails.fileAddCommentDetailsValue || this.fileAddCommentDetailsValue.equals(eventDetails.fileAddCommentDetailsValue);
            case 19:
                return this.fileChangeCommentSubscriptionDetailsValue == eventDetails.fileChangeCommentSubscriptionDetailsValue || this.fileChangeCommentSubscriptionDetailsValue.equals(eventDetails.fileChangeCommentSubscriptionDetailsValue);
            case 20:
                return this.fileDeleteCommentDetailsValue == eventDetails.fileDeleteCommentDetailsValue || this.fileDeleteCommentDetailsValue.equals(eventDetails.fileDeleteCommentDetailsValue);
            case 21:
                return this.fileLikeCommentDetailsValue == eventDetails.fileLikeCommentDetailsValue || this.fileLikeCommentDetailsValue.equals(eventDetails.fileLikeCommentDetailsValue);
            case 22:
                return this.fileResolveCommentDetailsValue == eventDetails.fileResolveCommentDetailsValue || this.fileResolveCommentDetailsValue.equals(eventDetails.fileResolveCommentDetailsValue);
            case 23:
                return this.fileUnlikeCommentDetailsValue == eventDetails.fileUnlikeCommentDetailsValue || this.fileUnlikeCommentDetailsValue.equals(eventDetails.fileUnlikeCommentDetailsValue);
            case 24:
                return this.fileUnresolveCommentDetailsValue == eventDetails.fileUnresolveCommentDetailsValue || this.fileUnresolveCommentDetailsValue.equals(eventDetails.fileUnresolveCommentDetailsValue);
            case 25:
                return this.deviceChangeIpDesktopDetailsValue == eventDetails.deviceChangeIpDesktopDetailsValue || this.deviceChangeIpDesktopDetailsValue.equals(eventDetails.deviceChangeIpDesktopDetailsValue);
            case 26:
                return this.deviceChangeIpMobileDetailsValue == eventDetails.deviceChangeIpMobileDetailsValue || this.deviceChangeIpMobileDetailsValue.equals(eventDetails.deviceChangeIpMobileDetailsValue);
            case 27:
                return this.deviceChangeIpWebDetailsValue == eventDetails.deviceChangeIpWebDetailsValue || this.deviceChangeIpWebDetailsValue.equals(eventDetails.deviceChangeIpWebDetailsValue);
            case 28:
                return this.deviceDeleteOnUnlinkFailDetailsValue == eventDetails.deviceDeleteOnUnlinkFailDetailsValue || this.deviceDeleteOnUnlinkFailDetailsValue.equals(eventDetails.deviceDeleteOnUnlinkFailDetailsValue);
            case 29:
                return this.deviceDeleteOnUnlinkSuccessDetailsValue == eventDetails.deviceDeleteOnUnlinkSuccessDetailsValue || this.deviceDeleteOnUnlinkSuccessDetailsValue.equals(eventDetails.deviceDeleteOnUnlinkSuccessDetailsValue);
            case 30:
                return this.deviceLinkFailDetailsValue == eventDetails.deviceLinkFailDetailsValue || this.deviceLinkFailDetailsValue.equals(eventDetails.deviceLinkFailDetailsValue);
            case 31:
                return this.deviceLinkSuccessDetailsValue == eventDetails.deviceLinkSuccessDetailsValue || this.deviceLinkSuccessDetailsValue.equals(eventDetails.deviceLinkSuccessDetailsValue);
            case 32:
                return this.deviceManagementDisabledDetailsValue == eventDetails.deviceManagementDisabledDetailsValue || this.deviceManagementDisabledDetailsValue.equals(eventDetails.deviceManagementDisabledDetailsValue);
            case 33:
                return this.deviceManagementEnabledDetailsValue == eventDetails.deviceManagementEnabledDetailsValue || this.deviceManagementEnabledDetailsValue.equals(eventDetails.deviceManagementEnabledDetailsValue);
            case 34:
                return this.deviceUnlinkDetailsValue == eventDetails.deviceUnlinkDetailsValue || this.deviceUnlinkDetailsValue.equals(eventDetails.deviceUnlinkDetailsValue);
            case 35:
                return this.emmRefreshAuthTokenDetailsValue == eventDetails.emmRefreshAuthTokenDetailsValue || this.emmRefreshAuthTokenDetailsValue.equals(eventDetails.emmRefreshAuthTokenDetailsValue);
            case 36:
                return this.accountCaptureChangeAvailabilityDetailsValue == eventDetails.accountCaptureChangeAvailabilityDetailsValue || this.accountCaptureChangeAvailabilityDetailsValue.equals(eventDetails.accountCaptureChangeAvailabilityDetailsValue);
            case 37:
                return this.accountCaptureMigrateAccountDetailsValue == eventDetails.accountCaptureMigrateAccountDetailsValue || this.accountCaptureMigrateAccountDetailsValue.equals(eventDetails.accountCaptureMigrateAccountDetailsValue);
            case 38:
                return this.accountCaptureRelinquishAccountDetailsValue == eventDetails.accountCaptureRelinquishAccountDetailsValue || this.accountCaptureRelinquishAccountDetailsValue.equals(eventDetails.accountCaptureRelinquishAccountDetailsValue);
            case 39:
                return this.disabledDomainInvitesDetailsValue == eventDetails.disabledDomainInvitesDetailsValue || this.disabledDomainInvitesDetailsValue.equals(eventDetails.disabledDomainInvitesDetailsValue);
            case 40:
                return this.domainInvitesApproveRequestToJoinTeamDetailsValue == eventDetails.domainInvitesApproveRequestToJoinTeamDetailsValue || this.domainInvitesApproveRequestToJoinTeamDetailsValue.equals(eventDetails.domainInvitesApproveRequestToJoinTeamDetailsValue);
            case 41:
                return this.domainInvitesDeclineRequestToJoinTeamDetailsValue == eventDetails.domainInvitesDeclineRequestToJoinTeamDetailsValue || this.domainInvitesDeclineRequestToJoinTeamDetailsValue.equals(eventDetails.domainInvitesDeclineRequestToJoinTeamDetailsValue);
            case 42:
                return this.domainInvitesEmailExistingUsersDetailsValue == eventDetails.domainInvitesEmailExistingUsersDetailsValue || this.domainInvitesEmailExistingUsersDetailsValue.equals(eventDetails.domainInvitesEmailExistingUsersDetailsValue);
            case 43:
                return this.domainInvitesRequestToJoinTeamDetailsValue == eventDetails.domainInvitesRequestToJoinTeamDetailsValue || this.domainInvitesRequestToJoinTeamDetailsValue.equals(eventDetails.domainInvitesRequestToJoinTeamDetailsValue);
            case 44:
                return this.domainInvitesSetInviteNewUserPrefToNoDetailsValue == eventDetails.domainInvitesSetInviteNewUserPrefToNoDetailsValue || this.domainInvitesSetInviteNewUserPrefToNoDetailsValue.equals(eventDetails.domainInvitesSetInviteNewUserPrefToNoDetailsValue);
            case 45:
                return this.domainInvitesSetInviteNewUserPrefToYesDetailsValue == eventDetails.domainInvitesSetInviteNewUserPrefToYesDetailsValue || this.domainInvitesSetInviteNewUserPrefToYesDetailsValue.equals(eventDetails.domainInvitesSetInviteNewUserPrefToYesDetailsValue);
            case 46:
                return this.domainVerificationAddDomainFailDetailsValue == eventDetails.domainVerificationAddDomainFailDetailsValue || this.domainVerificationAddDomainFailDetailsValue.equals(eventDetails.domainVerificationAddDomainFailDetailsValue);
            case 47:
                return this.domainVerificationAddDomainSuccessDetailsValue == eventDetails.domainVerificationAddDomainSuccessDetailsValue || this.domainVerificationAddDomainSuccessDetailsValue.equals(eventDetails.domainVerificationAddDomainSuccessDetailsValue);
            case 48:
                return this.domainVerificationRemoveDomainDetailsValue == eventDetails.domainVerificationRemoveDomainDetailsValue || this.domainVerificationRemoveDomainDetailsValue.equals(eventDetails.domainVerificationRemoveDomainDetailsValue);
            case 49:
                return this.enabledDomainInvitesDetailsValue == eventDetails.enabledDomainInvitesDetailsValue || this.enabledDomainInvitesDetailsValue.equals(eventDetails.enabledDomainInvitesDetailsValue);
            case 50:
                return this.createFolderDetailsValue == eventDetails.createFolderDetailsValue || this.createFolderDetailsValue.equals(eventDetails.createFolderDetailsValue);
            case 51:
                return this.fileAddDetailsValue == eventDetails.fileAddDetailsValue || this.fileAddDetailsValue.equals(eventDetails.fileAddDetailsValue);
            case 52:
                return this.fileCopyDetailsValue == eventDetails.fileCopyDetailsValue || this.fileCopyDetailsValue.equals(eventDetails.fileCopyDetailsValue);
            case 53:
                return this.fileDeleteDetailsValue == eventDetails.fileDeleteDetailsValue || this.fileDeleteDetailsValue.equals(eventDetails.fileDeleteDetailsValue);
            case 54:
                return this.fileDownloadDetailsValue == eventDetails.fileDownloadDetailsValue || this.fileDownloadDetailsValue.equals(eventDetails.fileDownloadDetailsValue);
            case 55:
                return this.fileEditDetailsValue == eventDetails.fileEditDetailsValue || this.fileEditDetailsValue.equals(eventDetails.fileEditDetailsValue);
            case 56:
                return this.fileGetCopyReferenceDetailsValue == eventDetails.fileGetCopyReferenceDetailsValue || this.fileGetCopyReferenceDetailsValue.equals(eventDetails.fileGetCopyReferenceDetailsValue);
            case 57:
                return this.fileMoveDetailsValue == eventDetails.fileMoveDetailsValue || this.fileMoveDetailsValue.equals(eventDetails.fileMoveDetailsValue);
            case 58:
                return this.filePermanentlyDeleteDetailsValue == eventDetails.filePermanentlyDeleteDetailsValue || this.filePermanentlyDeleteDetailsValue.equals(eventDetails.filePermanentlyDeleteDetailsValue);
            case 59:
                return this.filePreviewDetailsValue == eventDetails.filePreviewDetailsValue || this.filePreviewDetailsValue.equals(eventDetails.filePreviewDetailsValue);
            case 60:
                return this.fileRenameDetailsValue == eventDetails.fileRenameDetailsValue || this.fileRenameDetailsValue.equals(eventDetails.fileRenameDetailsValue);
            case 61:
                return this.fileRestoreDetailsValue == eventDetails.fileRestoreDetailsValue || this.fileRestoreDetailsValue.equals(eventDetails.fileRestoreDetailsValue);
            case 62:
                return this.fileRevertDetailsValue == eventDetails.fileRevertDetailsValue || this.fileRevertDetailsValue.equals(eventDetails.fileRevertDetailsValue);
            case 63:
                return this.fileRollbackChangesDetailsValue == eventDetails.fileRollbackChangesDetailsValue || this.fileRollbackChangesDetailsValue.equals(eventDetails.fileRollbackChangesDetailsValue);
            case 64:
                return this.fileSaveCopyReferenceDetailsValue == eventDetails.fileSaveCopyReferenceDetailsValue || this.fileSaveCopyReferenceDetailsValue.equals(eventDetails.fileSaveCopyReferenceDetailsValue);
            case 65:
                return this.fileRequestAddDeadlineDetailsValue == eventDetails.fileRequestAddDeadlineDetailsValue || this.fileRequestAddDeadlineDetailsValue.equals(eventDetails.fileRequestAddDeadlineDetailsValue);
            case 66:
                return this.fileRequestChangeFolderDetailsValue == eventDetails.fileRequestChangeFolderDetailsValue || this.fileRequestChangeFolderDetailsValue.equals(eventDetails.fileRequestChangeFolderDetailsValue);
            case 67:
                return this.fileRequestChangeTitleDetailsValue == eventDetails.fileRequestChangeTitleDetailsValue || this.fileRequestChangeTitleDetailsValue.equals(eventDetails.fileRequestChangeTitleDetailsValue);
            case 68:
                return this.fileRequestCloseDetailsValue == eventDetails.fileRequestCloseDetailsValue || this.fileRequestCloseDetailsValue.equals(eventDetails.fileRequestCloseDetailsValue);
            case 69:
                return this.fileRequestCreateDetailsValue == eventDetails.fileRequestCreateDetailsValue || this.fileRequestCreateDetailsValue.equals(eventDetails.fileRequestCreateDetailsValue);
            case 70:
                return this.fileRequestReceiveFileDetailsValue == eventDetails.fileRequestReceiveFileDetailsValue || this.fileRequestReceiveFileDetailsValue.equals(eventDetails.fileRequestReceiveFileDetailsValue);
            case 71:
                return this.fileRequestRemoveDeadlineDetailsValue == eventDetails.fileRequestRemoveDeadlineDetailsValue || this.fileRequestRemoveDeadlineDetailsValue.equals(eventDetails.fileRequestRemoveDeadlineDetailsValue);
            case 72:
                return this.fileRequestSendDetailsValue == eventDetails.fileRequestSendDetailsValue || this.fileRequestSendDetailsValue.equals(eventDetails.fileRequestSendDetailsValue);
            case 73:
                return this.groupAddExternalIdDetailsValue == eventDetails.groupAddExternalIdDetailsValue || this.groupAddExternalIdDetailsValue.equals(eventDetails.groupAddExternalIdDetailsValue);
            case 74:
                return this.groupAddMemberDetailsValue == eventDetails.groupAddMemberDetailsValue || this.groupAddMemberDetailsValue.equals(eventDetails.groupAddMemberDetailsValue);
            case 75:
                return this.groupChangeExternalIdDetailsValue == eventDetails.groupChangeExternalIdDetailsValue || this.groupChangeExternalIdDetailsValue.equals(eventDetails.groupChangeExternalIdDetailsValue);
            case 76:
                return this.groupChangeManagementTypeDetailsValue == eventDetails.groupChangeManagementTypeDetailsValue || this.groupChangeManagementTypeDetailsValue.equals(eventDetails.groupChangeManagementTypeDetailsValue);
            case 77:
                return this.groupChangeMemberRoleDetailsValue == eventDetails.groupChangeMemberRoleDetailsValue || this.groupChangeMemberRoleDetailsValue.equals(eventDetails.groupChangeMemberRoleDetailsValue);
            case 78:
                return this.groupCreateDetailsValue == eventDetails.groupCreateDetailsValue || this.groupCreateDetailsValue.equals(eventDetails.groupCreateDetailsValue);
            case 79:
                return this.groupDeleteDetailsValue == eventDetails.groupDeleteDetailsValue || this.groupDeleteDetailsValue.equals(eventDetails.groupDeleteDetailsValue);
            case 80:
                return this.groupMovedDetailsValue == eventDetails.groupMovedDetailsValue || this.groupMovedDetailsValue.equals(eventDetails.groupMovedDetailsValue);
            case 81:
                return this.groupRemoveExternalIdDetailsValue == eventDetails.groupRemoveExternalIdDetailsValue || this.groupRemoveExternalIdDetailsValue.equals(eventDetails.groupRemoveExternalIdDetailsValue);
            case 82:
                return this.groupRemoveMemberDetailsValue == eventDetails.groupRemoveMemberDetailsValue || this.groupRemoveMemberDetailsValue.equals(eventDetails.groupRemoveMemberDetailsValue);
            case 83:
                return this.groupRenameDetailsValue == eventDetails.groupRenameDetailsValue || this.groupRenameDetailsValue.equals(eventDetails.groupRenameDetailsValue);
            case 84:
                return this.emmLoginSuccessDetailsValue == eventDetails.emmLoginSuccessDetailsValue || this.emmLoginSuccessDetailsValue.equals(eventDetails.emmLoginSuccessDetailsValue);
            case 85:
                return this.logoutDetailsValue == eventDetails.logoutDetailsValue || this.logoutDetailsValue.equals(eventDetails.logoutDetailsValue);
            case 86:
                return this.passwordLoginFailDetailsValue == eventDetails.passwordLoginFailDetailsValue || this.passwordLoginFailDetailsValue.equals(eventDetails.passwordLoginFailDetailsValue);
            case 87:
                return this.passwordLoginSuccessDetailsValue == eventDetails.passwordLoginSuccessDetailsValue || this.passwordLoginSuccessDetailsValue.equals(eventDetails.passwordLoginSuccessDetailsValue);
            case 88:
                return this.resellerSupportSessionEndDetailsValue == eventDetails.resellerSupportSessionEndDetailsValue || this.resellerSupportSessionEndDetailsValue.equals(eventDetails.resellerSupportSessionEndDetailsValue);
            case 89:
                return this.resellerSupportSessionStartDetailsValue == eventDetails.resellerSupportSessionStartDetailsValue || this.resellerSupportSessionStartDetailsValue.equals(eventDetails.resellerSupportSessionStartDetailsValue);
            case 90:
                return this.signInAsSessionEndDetailsValue == eventDetails.signInAsSessionEndDetailsValue || this.signInAsSessionEndDetailsValue.equals(eventDetails.signInAsSessionEndDetailsValue);
            case 91:
                return this.signInAsSessionStartDetailsValue == eventDetails.signInAsSessionStartDetailsValue || this.signInAsSessionStartDetailsValue.equals(eventDetails.signInAsSessionStartDetailsValue);
            case 92:
                return this.ssoLoginFailDetailsValue == eventDetails.ssoLoginFailDetailsValue || this.ssoLoginFailDetailsValue.equals(eventDetails.ssoLoginFailDetailsValue);
            case 93:
                return this.memberAddNameDetailsValue == eventDetails.memberAddNameDetailsValue || this.memberAddNameDetailsValue.equals(eventDetails.memberAddNameDetailsValue);
            case 94:
                return this.memberChangeAdminRoleDetailsValue == eventDetails.memberChangeAdminRoleDetailsValue || this.memberChangeAdminRoleDetailsValue.equals(eventDetails.memberChangeAdminRoleDetailsValue);
            case 95:
                return this.memberChangeEmailDetailsValue == eventDetails.memberChangeEmailDetailsValue || this.memberChangeEmailDetailsValue.equals(eventDetails.memberChangeEmailDetailsValue);
            case 96:
                return this.memberChangeNameDetailsValue == eventDetails.memberChangeNameDetailsValue || this.memberChangeNameDetailsValue.equals(eventDetails.memberChangeNameDetailsValue);
            case 97:
                return this.memberChangeStatusDetailsValue == eventDetails.memberChangeStatusDetailsValue || this.memberChangeStatusDetailsValue.equals(eventDetails.memberChangeStatusDetailsValue);
            case 98:
                return this.memberSuggestDetailsValue == eventDetails.memberSuggestDetailsValue || this.memberSuggestDetailsValue.equals(eventDetails.memberSuggestDetailsValue);
            case 99:
                return this.paperContentAddMemberDetailsValue == eventDetails.paperContentAddMemberDetailsValue || this.paperContentAddMemberDetailsValue.equals(eventDetails.paperContentAddMemberDetailsValue);
            case 100:
                return this.paperContentAddToFolderDetailsValue == eventDetails.paperContentAddToFolderDetailsValue || this.paperContentAddToFolderDetailsValue.equals(eventDetails.paperContentAddToFolderDetailsValue);
            case 101:
                return this.paperContentArchiveDetailsValue == eventDetails.paperContentArchiveDetailsValue || this.paperContentArchiveDetailsValue.equals(eventDetails.paperContentArchiveDetailsValue);
            case 102:
                return this.paperContentCreateDetailsValue == eventDetails.paperContentCreateDetailsValue || this.paperContentCreateDetailsValue.equals(eventDetails.paperContentCreateDetailsValue);
            case 103:
                return this.paperContentPermanentlyDeleteDetailsValue == eventDetails.paperContentPermanentlyDeleteDetailsValue || this.paperContentPermanentlyDeleteDetailsValue.equals(eventDetails.paperContentPermanentlyDeleteDetailsValue);
            case 104:
                return this.paperContentRemoveFromFolderDetailsValue == eventDetails.paperContentRemoveFromFolderDetailsValue || this.paperContentRemoveFromFolderDetailsValue.equals(eventDetails.paperContentRemoveFromFolderDetailsValue);
            case 105:
                return this.paperContentRemoveMemberDetailsValue == eventDetails.paperContentRemoveMemberDetailsValue || this.paperContentRemoveMemberDetailsValue.equals(eventDetails.paperContentRemoveMemberDetailsValue);
            case 106:
                return this.paperContentRenameDetailsValue == eventDetails.paperContentRenameDetailsValue || this.paperContentRenameDetailsValue.equals(eventDetails.paperContentRenameDetailsValue);
            case 107:
                return this.paperContentRestoreDetailsValue == eventDetails.paperContentRestoreDetailsValue || this.paperContentRestoreDetailsValue.equals(eventDetails.paperContentRestoreDetailsValue);
            case 108:
                return this.paperDocAddCommentDetailsValue == eventDetails.paperDocAddCommentDetailsValue || this.paperDocAddCommentDetailsValue.equals(eventDetails.paperDocAddCommentDetailsValue);
            case 109:
                return this.paperDocChangeMemberRoleDetailsValue == eventDetails.paperDocChangeMemberRoleDetailsValue || this.paperDocChangeMemberRoleDetailsValue.equals(eventDetails.paperDocChangeMemberRoleDetailsValue);
            case 110:
                return this.paperDocChangeSharingPolicyDetailsValue == eventDetails.paperDocChangeSharingPolicyDetailsValue || this.paperDocChangeSharingPolicyDetailsValue.equals(eventDetails.paperDocChangeSharingPolicyDetailsValue);
            case 111:
                return this.paperDocChangeSubscriptionDetailsValue == eventDetails.paperDocChangeSubscriptionDetailsValue || this.paperDocChangeSubscriptionDetailsValue.equals(eventDetails.paperDocChangeSubscriptionDetailsValue);
            case 112:
                return this.paperDocDeletedDetailsValue == eventDetails.paperDocDeletedDetailsValue || this.paperDocDeletedDetailsValue.equals(eventDetails.paperDocDeletedDetailsValue);
            case 113:
                return this.paperDocDeleteCommentDetailsValue == eventDetails.paperDocDeleteCommentDetailsValue || this.paperDocDeleteCommentDetailsValue.equals(eventDetails.paperDocDeleteCommentDetailsValue);
            case 114:
                return this.paperDocDownloadDetailsValue == eventDetails.paperDocDownloadDetailsValue || this.paperDocDownloadDetailsValue.equals(eventDetails.paperDocDownloadDetailsValue);
            case 115:
                return this.paperDocEditDetailsValue == eventDetails.paperDocEditDetailsValue || this.paperDocEditDetailsValue.equals(eventDetails.paperDocEditDetailsValue);
            case 116:
                return this.paperDocEditCommentDetailsValue == eventDetails.paperDocEditCommentDetailsValue || this.paperDocEditCommentDetailsValue.equals(eventDetails.paperDocEditCommentDetailsValue);
            case 117:
                return this.paperDocFollowedDetailsValue == eventDetails.paperDocFollowedDetailsValue || this.paperDocFollowedDetailsValue.equals(eventDetails.paperDocFollowedDetailsValue);
            case 118:
                return this.paperDocMentionDetailsValue == eventDetails.paperDocMentionDetailsValue || this.paperDocMentionDetailsValue.equals(eventDetails.paperDocMentionDetailsValue);
            case 119:
                return this.paperDocRequestAccessDetailsValue == eventDetails.paperDocRequestAccessDetailsValue || this.paperDocRequestAccessDetailsValue.equals(eventDetails.paperDocRequestAccessDetailsValue);
            case 120:
                return this.paperDocResolveCommentDetailsValue == eventDetails.paperDocResolveCommentDetailsValue || this.paperDocResolveCommentDetailsValue.equals(eventDetails.paperDocResolveCommentDetailsValue);
            case 121:
                return this.paperDocRevertDetailsValue == eventDetails.paperDocRevertDetailsValue || this.paperDocRevertDetailsValue.equals(eventDetails.paperDocRevertDetailsValue);
            case 122:
                return this.paperDocSlackShareDetailsValue == eventDetails.paperDocSlackShareDetailsValue || this.paperDocSlackShareDetailsValue.equals(eventDetails.paperDocSlackShareDetailsValue);
            case 123:
                return this.paperDocTeamInviteDetailsValue == eventDetails.paperDocTeamInviteDetailsValue || this.paperDocTeamInviteDetailsValue.equals(eventDetails.paperDocTeamInviteDetailsValue);
            case 124:
                return this.paperDocTrashedDetailsValue == eventDetails.paperDocTrashedDetailsValue || this.paperDocTrashedDetailsValue.equals(eventDetails.paperDocTrashedDetailsValue);
            case 125:
                return this.paperDocUnresolveCommentDetailsValue == eventDetails.paperDocUnresolveCommentDetailsValue || this.paperDocUnresolveCommentDetailsValue.equals(eventDetails.paperDocUnresolveCommentDetailsValue);
            case 126:
                return this.paperDocUntrashedDetailsValue == eventDetails.paperDocUntrashedDetailsValue || this.paperDocUntrashedDetailsValue.equals(eventDetails.paperDocUntrashedDetailsValue);
            case 127:
                return this.paperDocViewDetailsValue == eventDetails.paperDocViewDetailsValue || this.paperDocViewDetailsValue.equals(eventDetails.paperDocViewDetailsValue);
            case 128:
                return this.paperFolderChangeSubscriptionDetailsValue == eventDetails.paperFolderChangeSubscriptionDetailsValue || this.paperFolderChangeSubscriptionDetailsValue.equals(eventDetails.paperFolderChangeSubscriptionDetailsValue);
            case 129:
                return this.paperFolderDeletedDetailsValue == eventDetails.paperFolderDeletedDetailsValue || this.paperFolderDeletedDetailsValue.equals(eventDetails.paperFolderDeletedDetailsValue);
            case 130:
                return this.paperFolderFollowedDetailsValue == eventDetails.paperFolderFollowedDetailsValue || this.paperFolderFollowedDetailsValue.equals(eventDetails.paperFolderFollowedDetailsValue);
            case 131:
                return this.paperFolderTeamInviteDetailsValue == eventDetails.paperFolderTeamInviteDetailsValue || this.paperFolderTeamInviteDetailsValue.equals(eventDetails.paperFolderTeamInviteDetailsValue);
            case 132:
                return this.passwordChangeDetailsValue == eventDetails.passwordChangeDetailsValue || this.passwordChangeDetailsValue.equals(eventDetails.passwordChangeDetailsValue);
            case 133:
                return this.passwordResetDetailsValue == eventDetails.passwordResetDetailsValue || this.passwordResetDetailsValue.equals(eventDetails.passwordResetDetailsValue);
            case 134:
                return this.passwordResetAllDetailsValue == eventDetails.passwordResetAllDetailsValue || this.passwordResetAllDetailsValue.equals(eventDetails.passwordResetAllDetailsValue);
            case 135:
                return this.emmCreateExceptionsReportDetailsValue == eventDetails.emmCreateExceptionsReportDetailsValue || this.emmCreateExceptionsReportDetailsValue.equals(eventDetails.emmCreateExceptionsReportDetailsValue);
            case 136:
                return this.emmCreateUsageReportDetailsValue == eventDetails.emmCreateUsageReportDetailsValue || this.emmCreateUsageReportDetailsValue.equals(eventDetails.emmCreateUsageReportDetailsValue);
            case 137:
                return this.smartSyncCreateAdminPrivilegeReportDetailsValue == eventDetails.smartSyncCreateAdminPrivilegeReportDetailsValue || this.smartSyncCreateAdminPrivilegeReportDetailsValue.equals(eventDetails.smartSyncCreateAdminPrivilegeReportDetailsValue);
            case 138:
                return this.teamActivityCreateReportDetailsValue == eventDetails.teamActivityCreateReportDetailsValue || this.teamActivityCreateReportDetailsValue.equals(eventDetails.teamActivityCreateReportDetailsValue);
            case 139:
                return this.collectionShareDetailsValue == eventDetails.collectionShareDetailsValue || this.collectionShareDetailsValue.equals(eventDetails.collectionShareDetailsValue);
            case 140:
                return this.noteAclInviteOnlyDetailsValue == eventDetails.noteAclInviteOnlyDetailsValue || this.noteAclInviteOnlyDetailsValue.equals(eventDetails.noteAclInviteOnlyDetailsValue);
            case 141:
                return this.noteAclLinkDetailsValue == eventDetails.noteAclLinkDetailsValue || this.noteAclLinkDetailsValue.equals(eventDetails.noteAclLinkDetailsValue);
            case 142:
                return this.noteAclTeamLinkDetailsValue == eventDetails.noteAclTeamLinkDetailsValue || this.noteAclTeamLinkDetailsValue.equals(eventDetails.noteAclTeamLinkDetailsValue);
            case 143:
                return this.noteSharedDetailsValue == eventDetails.noteSharedDetailsValue || this.noteSharedDetailsValue.equals(eventDetails.noteSharedDetailsValue);
            case 144:
                return this.noteShareReceiveDetailsValue == eventDetails.noteShareReceiveDetailsValue || this.noteShareReceiveDetailsValue.equals(eventDetails.noteShareReceiveDetailsValue);
            case 145:
                return this.openNoteSharedDetailsValue == eventDetails.openNoteSharedDetailsValue || this.openNoteSharedDetailsValue.equals(eventDetails.openNoteSharedDetailsValue);
            case 146:
                return this.sfAddGroupDetailsValue == eventDetails.sfAddGroupDetailsValue || this.sfAddGroupDetailsValue.equals(eventDetails.sfAddGroupDetailsValue);
            case 147:
                return this.sfAllowNonMembersToViewSharedLinksDetailsValue == eventDetails.sfAllowNonMembersToViewSharedLinksDetailsValue || this.sfAllowNonMembersToViewSharedLinksDetailsValue.equals(eventDetails.sfAllowNonMembersToViewSharedLinksDetailsValue);
            case 148:
                return this.sfInviteGroupDetailsValue == eventDetails.sfInviteGroupDetailsValue || this.sfInviteGroupDetailsValue.equals(eventDetails.sfInviteGroupDetailsValue);
            case 149:
                return this.sfNestDetailsValue == eventDetails.sfNestDetailsValue || this.sfNestDetailsValue.equals(eventDetails.sfNestDetailsValue);
            case 150:
                return this.sfTeamDeclineDetailsValue == eventDetails.sfTeamDeclineDetailsValue || this.sfTeamDeclineDetailsValue.equals(eventDetails.sfTeamDeclineDetailsValue);
            case 151:
                return this.sfTeamGrantAccessDetailsValue == eventDetails.sfTeamGrantAccessDetailsValue || this.sfTeamGrantAccessDetailsValue.equals(eventDetails.sfTeamGrantAccessDetailsValue);
            case 152:
                return this.sfTeamInviteDetailsValue == eventDetails.sfTeamInviteDetailsValue || this.sfTeamInviteDetailsValue.equals(eventDetails.sfTeamInviteDetailsValue);
            case 153:
                return this.sfTeamInviteChangeRoleDetailsValue == eventDetails.sfTeamInviteChangeRoleDetailsValue || this.sfTeamInviteChangeRoleDetailsValue.equals(eventDetails.sfTeamInviteChangeRoleDetailsValue);
            case 154:
                return this.sfTeamJoinDetailsValue == eventDetails.sfTeamJoinDetailsValue || this.sfTeamJoinDetailsValue.equals(eventDetails.sfTeamJoinDetailsValue);
            case 155:
                return this.sfTeamJoinFromOobLinkDetailsValue == eventDetails.sfTeamJoinFromOobLinkDetailsValue || this.sfTeamJoinFromOobLinkDetailsValue.equals(eventDetails.sfTeamJoinFromOobLinkDetailsValue);
            case 156:
                return this.sfTeamUninviteDetailsValue == eventDetails.sfTeamUninviteDetailsValue || this.sfTeamUninviteDetailsValue.equals(eventDetails.sfTeamUninviteDetailsValue);
            case 157:
                return this.sharedContentAddInviteesDetailsValue == eventDetails.sharedContentAddInviteesDetailsValue || this.sharedContentAddInviteesDetailsValue.equals(eventDetails.sharedContentAddInviteesDetailsValue);
            case 158:
                return this.sharedContentAddLinkExpiryDetailsValue == eventDetails.sharedContentAddLinkExpiryDetailsValue || this.sharedContentAddLinkExpiryDetailsValue.equals(eventDetails.sharedContentAddLinkExpiryDetailsValue);
            case 159:
                return this.sharedContentAddLinkPasswordDetailsValue == eventDetails.sharedContentAddLinkPasswordDetailsValue || this.sharedContentAddLinkPasswordDetailsValue.equals(eventDetails.sharedContentAddLinkPasswordDetailsValue);
            case 160:
                return this.sharedContentAddMemberDetailsValue == eventDetails.sharedContentAddMemberDetailsValue || this.sharedContentAddMemberDetailsValue.equals(eventDetails.sharedContentAddMemberDetailsValue);
            case 161:
                return this.sharedContentChangeDownloadsPolicyDetailsValue == eventDetails.sharedContentChangeDownloadsPolicyDetailsValue || this.sharedContentChangeDownloadsPolicyDetailsValue.equals(eventDetails.sharedContentChangeDownloadsPolicyDetailsValue);
            case 162:
                return this.sharedContentChangeInviteeRoleDetailsValue == eventDetails.sharedContentChangeInviteeRoleDetailsValue || this.sharedContentChangeInviteeRoleDetailsValue.equals(eventDetails.sharedContentChangeInviteeRoleDetailsValue);
            case 163:
                return this.sharedContentChangeLinkAudienceDetailsValue == eventDetails.sharedContentChangeLinkAudienceDetailsValue || this.sharedContentChangeLinkAudienceDetailsValue.equals(eventDetails.sharedContentChangeLinkAudienceDetailsValue);
            case 164:
                return this.sharedContentChangeLinkExpiryDetailsValue == eventDetails.sharedContentChangeLinkExpiryDetailsValue || this.sharedContentChangeLinkExpiryDetailsValue.equals(eventDetails.sharedContentChangeLinkExpiryDetailsValue);
            case 165:
                return this.sharedContentChangeLinkPasswordDetailsValue == eventDetails.sharedContentChangeLinkPasswordDetailsValue || this.sharedContentChangeLinkPasswordDetailsValue.equals(eventDetails.sharedContentChangeLinkPasswordDetailsValue);
            case 166:
                return this.sharedContentChangeMemberRoleDetailsValue == eventDetails.sharedContentChangeMemberRoleDetailsValue || this.sharedContentChangeMemberRoleDetailsValue.equals(eventDetails.sharedContentChangeMemberRoleDetailsValue);
            case 167:
                return this.sharedContentChangeViewerInfoPolicyDetailsValue == eventDetails.sharedContentChangeViewerInfoPolicyDetailsValue || this.sharedContentChangeViewerInfoPolicyDetailsValue.equals(eventDetails.sharedContentChangeViewerInfoPolicyDetailsValue);
            case DateTimeConstants.HOURS_PER_WEEK /* 168 */:
                return this.sharedContentClaimInvitationDetailsValue == eventDetails.sharedContentClaimInvitationDetailsValue || this.sharedContentClaimInvitationDetailsValue.equals(eventDetails.sharedContentClaimInvitationDetailsValue);
            case 169:
                return this.sharedContentCopyDetailsValue == eventDetails.sharedContentCopyDetailsValue || this.sharedContentCopyDetailsValue.equals(eventDetails.sharedContentCopyDetailsValue);
            case 170:
                return this.sharedContentDownloadDetailsValue == eventDetails.sharedContentDownloadDetailsValue || this.sharedContentDownloadDetailsValue.equals(eventDetails.sharedContentDownloadDetailsValue);
            case 171:
                return this.sharedContentRelinquishMembershipDetailsValue == eventDetails.sharedContentRelinquishMembershipDetailsValue || this.sharedContentRelinquishMembershipDetailsValue.equals(eventDetails.sharedContentRelinquishMembershipDetailsValue);
            case 172:
                return this.sharedContentRemoveInviteeDetailsValue == eventDetails.sharedContentRemoveInviteeDetailsValue || this.sharedContentRemoveInviteeDetailsValue.equals(eventDetails.sharedContentRemoveInviteeDetailsValue);
            case 173:
                return this.sharedContentRemoveLinkExpiryDetailsValue == eventDetails.sharedContentRemoveLinkExpiryDetailsValue || this.sharedContentRemoveLinkExpiryDetailsValue.equals(eventDetails.sharedContentRemoveLinkExpiryDetailsValue);
            case 174:
                return this.sharedContentRemoveLinkPasswordDetailsValue == eventDetails.sharedContentRemoveLinkPasswordDetailsValue || this.sharedContentRemoveLinkPasswordDetailsValue.equals(eventDetails.sharedContentRemoveLinkPasswordDetailsValue);
            case 175:
                return this.sharedContentRemoveMemberDetailsValue == eventDetails.sharedContentRemoveMemberDetailsValue || this.sharedContentRemoveMemberDetailsValue.equals(eventDetails.sharedContentRemoveMemberDetailsValue);
            case 176:
                return this.sharedContentRequestAccessDetailsValue == eventDetails.sharedContentRequestAccessDetailsValue || this.sharedContentRequestAccessDetailsValue.equals(eventDetails.sharedContentRequestAccessDetailsValue);
            case 177:
                return this.sharedContentUnshareDetailsValue == eventDetails.sharedContentUnshareDetailsValue || this.sharedContentUnshareDetailsValue.equals(eventDetails.sharedContentUnshareDetailsValue);
            case 178:
                return this.sharedContentViewDetailsValue == eventDetails.sharedContentViewDetailsValue || this.sharedContentViewDetailsValue.equals(eventDetails.sharedContentViewDetailsValue);
            case 179:
                return this.sharedFolderChangeConfidentialityDetailsValue == eventDetails.sharedFolderChangeConfidentialityDetailsValue || this.sharedFolderChangeConfidentialityDetailsValue.equals(eventDetails.sharedFolderChangeConfidentialityDetailsValue);
            case 180:
                return this.sharedFolderChangeLinkPolicyDetailsValue == eventDetails.sharedFolderChangeLinkPolicyDetailsValue || this.sharedFolderChangeLinkPolicyDetailsValue.equals(eventDetails.sharedFolderChangeLinkPolicyDetailsValue);
            case 181:
                return this.sharedFolderChangeMemberManagementPolicyDetailsValue == eventDetails.sharedFolderChangeMemberManagementPolicyDetailsValue || this.sharedFolderChangeMemberManagementPolicyDetailsValue.equals(eventDetails.sharedFolderChangeMemberManagementPolicyDetailsValue);
            case 182:
                return this.sharedFolderChangeMemberPolicyDetailsValue == eventDetails.sharedFolderChangeMemberPolicyDetailsValue || this.sharedFolderChangeMemberPolicyDetailsValue.equals(eventDetails.sharedFolderChangeMemberPolicyDetailsValue);
            case 183:
                return this.sharedFolderCreateDetailsValue == eventDetails.sharedFolderCreateDetailsValue || this.sharedFolderCreateDetailsValue.equals(eventDetails.sharedFolderCreateDetailsValue);
            case 184:
                return this.sharedFolderMountDetailsValue == eventDetails.sharedFolderMountDetailsValue || this.sharedFolderMountDetailsValue.equals(eventDetails.sharedFolderMountDetailsValue);
            case 185:
                return this.sharedFolderTransferOwnershipDetailsValue == eventDetails.sharedFolderTransferOwnershipDetailsValue || this.sharedFolderTransferOwnershipDetailsValue.equals(eventDetails.sharedFolderTransferOwnershipDetailsValue);
            case 186:
                return this.sharedFolderUnmountDetailsValue == eventDetails.sharedFolderUnmountDetailsValue || this.sharedFolderUnmountDetailsValue.equals(eventDetails.sharedFolderUnmountDetailsValue);
            case 187:
                return this.sharedNoteOpenedDetailsValue == eventDetails.sharedNoteOpenedDetailsValue || this.sharedNoteOpenedDetailsValue.equals(eventDetails.sharedNoteOpenedDetailsValue);
            case 188:
                return this.shmodelAppCreateDetailsValue == eventDetails.shmodelAppCreateDetailsValue || this.shmodelAppCreateDetailsValue.equals(eventDetails.shmodelAppCreateDetailsValue);
            case 189:
                return this.shmodelCreateDetailsValue == eventDetails.shmodelCreateDetailsValue || this.shmodelCreateDetailsValue.equals(eventDetails.shmodelCreateDetailsValue);
            case 190:
                return this.shmodelDisableDetailsValue == eventDetails.shmodelDisableDetailsValue || this.shmodelDisableDetailsValue.equals(eventDetails.shmodelDisableDetailsValue);
            case 191:
                return this.shmodelFbShareDetailsValue == eventDetails.shmodelFbShareDetailsValue || this.shmodelFbShareDetailsValue.equals(eventDetails.shmodelFbShareDetailsValue);
            case 192:
                return this.shmodelGroupShareDetailsValue == eventDetails.shmodelGroupShareDetailsValue || this.shmodelGroupShareDetailsValue.equals(eventDetails.shmodelGroupShareDetailsValue);
            case 193:
                return this.shmodelRemoveExpirationDetailsValue == eventDetails.shmodelRemoveExpirationDetailsValue || this.shmodelRemoveExpirationDetailsValue.equals(eventDetails.shmodelRemoveExpirationDetailsValue);
            case 194:
                return this.shmodelSetExpirationDetailsValue == eventDetails.shmodelSetExpirationDetailsValue || this.shmodelSetExpirationDetailsValue.equals(eventDetails.shmodelSetExpirationDetailsValue);
            case 195:
                return this.shmodelTeamCopyDetailsValue == eventDetails.shmodelTeamCopyDetailsValue || this.shmodelTeamCopyDetailsValue.equals(eventDetails.shmodelTeamCopyDetailsValue);
            case 196:
                return this.shmodelTeamDownloadDetailsValue == eventDetails.shmodelTeamDownloadDetailsValue || this.shmodelTeamDownloadDetailsValue.equals(eventDetails.shmodelTeamDownloadDetailsValue);
            case 197:
                return this.shmodelTeamShareDetailsValue == eventDetails.shmodelTeamShareDetailsValue || this.shmodelTeamShareDetailsValue.equals(eventDetails.shmodelTeamShareDetailsValue);
            case 198:
                return this.shmodelTeamViewDetailsValue == eventDetails.shmodelTeamViewDetailsValue || this.shmodelTeamViewDetailsValue.equals(eventDetails.shmodelTeamViewDetailsValue);
            case 199:
                return this.shmodelVisibilityPasswordDetailsValue == eventDetails.shmodelVisibilityPasswordDetailsValue || this.shmodelVisibilityPasswordDetailsValue.equals(eventDetails.shmodelVisibilityPasswordDetailsValue);
            case 200:
                return this.shmodelVisibilityPublicDetailsValue == eventDetails.shmodelVisibilityPublicDetailsValue || this.shmodelVisibilityPublicDetailsValue.equals(eventDetails.shmodelVisibilityPublicDetailsValue);
            case 201:
                return this.shmodelVisibilityTeamOnlyDetailsValue == eventDetails.shmodelVisibilityTeamOnlyDetailsValue || this.shmodelVisibilityTeamOnlyDetailsValue.equals(eventDetails.shmodelVisibilityTeamOnlyDetailsValue);
            case 202:
                return this.ssoAddCertDetailsValue == eventDetails.ssoAddCertDetailsValue || this.ssoAddCertDetailsValue.equals(eventDetails.ssoAddCertDetailsValue);
            case 203:
                return this.ssoAddLoginUrlDetailsValue == eventDetails.ssoAddLoginUrlDetailsValue || this.ssoAddLoginUrlDetailsValue.equals(eventDetails.ssoAddLoginUrlDetailsValue);
            case 204:
                return this.ssoAddLogoutUrlDetailsValue == eventDetails.ssoAddLogoutUrlDetailsValue || this.ssoAddLogoutUrlDetailsValue.equals(eventDetails.ssoAddLogoutUrlDetailsValue);
            case 205:
                return this.ssoChangeCertDetailsValue == eventDetails.ssoChangeCertDetailsValue || this.ssoChangeCertDetailsValue.equals(eventDetails.ssoChangeCertDetailsValue);
            case 206:
                return this.ssoChangeLoginUrlDetailsValue == eventDetails.ssoChangeLoginUrlDetailsValue || this.ssoChangeLoginUrlDetailsValue.equals(eventDetails.ssoChangeLoginUrlDetailsValue);
            case HttpStatus.ORDINAL_207_Multi_Status /* 207 */:
                return this.ssoChangeLogoutUrlDetailsValue == eventDetails.ssoChangeLogoutUrlDetailsValue || this.ssoChangeLogoutUrlDetailsValue.equals(eventDetails.ssoChangeLogoutUrlDetailsValue);
            case 208:
                return this.ssoChangeSamlIdentityModeDetailsValue == eventDetails.ssoChangeSamlIdentityModeDetailsValue || this.ssoChangeSamlIdentityModeDetailsValue.equals(eventDetails.ssoChangeSamlIdentityModeDetailsValue);
            case 209:
                return this.ssoRemoveCertDetailsValue == eventDetails.ssoRemoveCertDetailsValue || this.ssoRemoveCertDetailsValue.equals(eventDetails.ssoRemoveCertDetailsValue);
            case 210:
                return this.ssoRemoveLoginUrlDetailsValue == eventDetails.ssoRemoveLoginUrlDetailsValue || this.ssoRemoveLoginUrlDetailsValue.equals(eventDetails.ssoRemoveLoginUrlDetailsValue);
            case 211:
                return this.ssoRemoveLogoutUrlDetailsValue == eventDetails.ssoRemoveLogoutUrlDetailsValue || this.ssoRemoveLogoutUrlDetailsValue.equals(eventDetails.ssoRemoveLogoutUrlDetailsValue);
            case 212:
                return this.teamFolderChangeStatusDetailsValue == eventDetails.teamFolderChangeStatusDetailsValue || this.teamFolderChangeStatusDetailsValue.equals(eventDetails.teamFolderChangeStatusDetailsValue);
            case 213:
                return this.teamFolderCreateDetailsValue == eventDetails.teamFolderCreateDetailsValue || this.teamFolderCreateDetailsValue.equals(eventDetails.teamFolderCreateDetailsValue);
            case 214:
                return this.teamFolderDowngradeDetailsValue == eventDetails.teamFolderDowngradeDetailsValue || this.teamFolderDowngradeDetailsValue.equals(eventDetails.teamFolderDowngradeDetailsValue);
            case 215:
                return this.teamFolderPermanentlyDeleteDetailsValue == eventDetails.teamFolderPermanentlyDeleteDetailsValue || this.teamFolderPermanentlyDeleteDetailsValue.equals(eventDetails.teamFolderPermanentlyDeleteDetailsValue);
            case 216:
                return this.teamFolderRenameDetailsValue == eventDetails.teamFolderRenameDetailsValue || this.teamFolderRenameDetailsValue.equals(eventDetails.teamFolderRenameDetailsValue);
            case 217:
                return this.accountCaptureChangePolicyDetailsValue == eventDetails.accountCaptureChangePolicyDetailsValue || this.accountCaptureChangePolicyDetailsValue.equals(eventDetails.accountCaptureChangePolicyDetailsValue);
            case 218:
                return this.allowDownloadDisabledDetailsValue == eventDetails.allowDownloadDisabledDetailsValue || this.allowDownloadDisabledDetailsValue.equals(eventDetails.allowDownloadDisabledDetailsValue);
            case 219:
                return this.allowDownloadEnabledDetailsValue == eventDetails.allowDownloadEnabledDetailsValue || this.allowDownloadEnabledDetailsValue.equals(eventDetails.allowDownloadEnabledDetailsValue);
            case 220:
                return this.dataPlacementRestrictionChangePolicyDetailsValue == eventDetails.dataPlacementRestrictionChangePolicyDetailsValue || this.dataPlacementRestrictionChangePolicyDetailsValue.equals(eventDetails.dataPlacementRestrictionChangePolicyDetailsValue);
            case 221:
                return this.dataPlacementRestrictionSatisfyPolicyDetailsValue == eventDetails.dataPlacementRestrictionSatisfyPolicyDetailsValue || this.dataPlacementRestrictionSatisfyPolicyDetailsValue.equals(eventDetails.dataPlacementRestrictionSatisfyPolicyDetailsValue);
            case 222:
                return this.deviceApprovalsChangeDesktopPolicyDetailsValue == eventDetails.deviceApprovalsChangeDesktopPolicyDetailsValue || this.deviceApprovalsChangeDesktopPolicyDetailsValue.equals(eventDetails.deviceApprovalsChangeDesktopPolicyDetailsValue);
            case 223:
                return this.deviceApprovalsChangeMobilePolicyDetailsValue == eventDetails.deviceApprovalsChangeMobilePolicyDetailsValue || this.deviceApprovalsChangeMobilePolicyDetailsValue.equals(eventDetails.deviceApprovalsChangeMobilePolicyDetailsValue);
            case 224:
                return this.deviceApprovalsChangeOverageActionDetailsValue == eventDetails.deviceApprovalsChangeOverageActionDetailsValue || this.deviceApprovalsChangeOverageActionDetailsValue.equals(eventDetails.deviceApprovalsChangeOverageActionDetailsValue);
            case 225:
                return this.deviceApprovalsChangeUnlinkActionDetailsValue == eventDetails.deviceApprovalsChangeUnlinkActionDetailsValue || this.deviceApprovalsChangeUnlinkActionDetailsValue.equals(eventDetails.deviceApprovalsChangeUnlinkActionDetailsValue);
            case 226:
                return this.emmAddExceptionDetailsValue == eventDetails.emmAddExceptionDetailsValue || this.emmAddExceptionDetailsValue.equals(eventDetails.emmAddExceptionDetailsValue);
            case 227:
                return this.emmChangePolicyDetailsValue == eventDetails.emmChangePolicyDetailsValue || this.emmChangePolicyDetailsValue.equals(eventDetails.emmChangePolicyDetailsValue);
            case 228:
                return this.emmRemoveExceptionDetailsValue == eventDetails.emmRemoveExceptionDetailsValue || this.emmRemoveExceptionDetailsValue.equals(eventDetails.emmRemoveExceptionDetailsValue);
            case 229:
                return this.extendedVersionHistoryChangePolicyDetailsValue == eventDetails.extendedVersionHistoryChangePolicyDetailsValue || this.extendedVersionHistoryChangePolicyDetailsValue.equals(eventDetails.extendedVersionHistoryChangePolicyDetailsValue);
            case 230:
                return this.fileCommentsChangePolicyDetailsValue == eventDetails.fileCommentsChangePolicyDetailsValue || this.fileCommentsChangePolicyDetailsValue.equals(eventDetails.fileCommentsChangePolicyDetailsValue);
            case 231:
                return this.fileRequestsChangePolicyDetailsValue == eventDetails.fileRequestsChangePolicyDetailsValue || this.fileRequestsChangePolicyDetailsValue.equals(eventDetails.fileRequestsChangePolicyDetailsValue);
            case 232:
                return this.fileRequestsEmailsEnabledDetailsValue == eventDetails.fileRequestsEmailsEnabledDetailsValue || this.fileRequestsEmailsEnabledDetailsValue.equals(eventDetails.fileRequestsEmailsEnabledDetailsValue);
            case 233:
                return this.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue == eventDetails.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue || this.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue.equals(eventDetails.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue);
            case 234:
                return this.googleSsoChangePolicyDetailsValue == eventDetails.googleSsoChangePolicyDetailsValue || this.googleSsoChangePolicyDetailsValue.equals(eventDetails.googleSsoChangePolicyDetailsValue);
            case 235:
                return this.groupUserManagementChangePolicyDetailsValue == eventDetails.groupUserManagementChangePolicyDetailsValue || this.groupUserManagementChangePolicyDetailsValue.equals(eventDetails.groupUserManagementChangePolicyDetailsValue);
            case 236:
                return this.memberRequestsChangePolicyDetailsValue == eventDetails.memberRequestsChangePolicyDetailsValue || this.memberRequestsChangePolicyDetailsValue.equals(eventDetails.memberRequestsChangePolicyDetailsValue);
            case 237:
                return this.memberSpaceLimitsAddExceptionDetailsValue == eventDetails.memberSpaceLimitsAddExceptionDetailsValue || this.memberSpaceLimitsAddExceptionDetailsValue.equals(eventDetails.memberSpaceLimitsAddExceptionDetailsValue);
            case 238:
                return this.memberSpaceLimitsChangePolicyDetailsValue == eventDetails.memberSpaceLimitsChangePolicyDetailsValue || this.memberSpaceLimitsChangePolicyDetailsValue.equals(eventDetails.memberSpaceLimitsChangePolicyDetailsValue);
            case 239:
                return this.memberSpaceLimitsRemoveExceptionDetailsValue == eventDetails.memberSpaceLimitsRemoveExceptionDetailsValue || this.memberSpaceLimitsRemoveExceptionDetailsValue.equals(eventDetails.memberSpaceLimitsRemoveExceptionDetailsValue);
            case 240:
                return this.memberSuggestionsChangePolicyDetailsValue == eventDetails.memberSuggestionsChangePolicyDetailsValue || this.memberSuggestionsChangePolicyDetailsValue.equals(eventDetails.memberSuggestionsChangePolicyDetailsValue);
            case 241:
                return this.microsoftOfficeAddinChangePolicyDetailsValue == eventDetails.microsoftOfficeAddinChangePolicyDetailsValue || this.microsoftOfficeAddinChangePolicyDetailsValue.equals(eventDetails.microsoftOfficeAddinChangePolicyDetailsValue);
            case 242:
                return this.networkControlChangePolicyDetailsValue == eventDetails.networkControlChangePolicyDetailsValue || this.networkControlChangePolicyDetailsValue.equals(eventDetails.networkControlChangePolicyDetailsValue);
            case 243:
                return this.paperChangeDeploymentPolicyDetailsValue == eventDetails.paperChangeDeploymentPolicyDetailsValue || this.paperChangeDeploymentPolicyDetailsValue.equals(eventDetails.paperChangeDeploymentPolicyDetailsValue);
            case 244:
                return this.paperChangeMemberLinkPolicyDetailsValue == eventDetails.paperChangeMemberLinkPolicyDetailsValue || this.paperChangeMemberLinkPolicyDetailsValue.equals(eventDetails.paperChangeMemberLinkPolicyDetailsValue);
            case 245:
                return this.paperChangeMemberPolicyDetailsValue == eventDetails.paperChangeMemberPolicyDetailsValue || this.paperChangeMemberPolicyDetailsValue.equals(eventDetails.paperChangeMemberPolicyDetailsValue);
            case 246:
                return this.paperChangePolicyDetailsValue == eventDetails.paperChangePolicyDetailsValue || this.paperChangePolicyDetailsValue.equals(eventDetails.paperChangePolicyDetailsValue);
            case 247:
                return this.permanentDeleteChangePolicyDetailsValue == eventDetails.permanentDeleteChangePolicyDetailsValue || this.permanentDeleteChangePolicyDetailsValue.equals(eventDetails.permanentDeleteChangePolicyDetailsValue);
            case 248:
                return this.sharingChangeFolderJoinPolicyDetailsValue == eventDetails.sharingChangeFolderJoinPolicyDetailsValue || this.sharingChangeFolderJoinPolicyDetailsValue.equals(eventDetails.sharingChangeFolderJoinPolicyDetailsValue);
            case 249:
                return this.sharingChangeLinkPolicyDetailsValue == eventDetails.sharingChangeLinkPolicyDetailsValue || this.sharingChangeLinkPolicyDetailsValue.equals(eventDetails.sharingChangeLinkPolicyDetailsValue);
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                return this.sharingChangeMemberPolicyDetailsValue == eventDetails.sharingChangeMemberPolicyDetailsValue || this.sharingChangeMemberPolicyDetailsValue.equals(eventDetails.sharingChangeMemberPolicyDetailsValue);
            case 251:
                return this.smartSyncChangePolicyDetailsValue == eventDetails.smartSyncChangePolicyDetailsValue || this.smartSyncChangePolicyDetailsValue.equals(eventDetails.smartSyncChangePolicyDetailsValue);
            case 252:
                return this.smartSyncNotOptOutDetailsValue == eventDetails.smartSyncNotOptOutDetailsValue || this.smartSyncNotOptOutDetailsValue.equals(eventDetails.smartSyncNotOptOutDetailsValue);
            case 253:
                return this.smartSyncOptOutDetailsValue == eventDetails.smartSyncOptOutDetailsValue || this.smartSyncOptOutDetailsValue.equals(eventDetails.smartSyncOptOutDetailsValue);
            case 254:
                return this.ssoChangePolicyDetailsValue == eventDetails.ssoChangePolicyDetailsValue || this.ssoChangePolicyDetailsValue.equals(eventDetails.ssoChangePolicyDetailsValue);
            case 255:
                return this.tfaChangePolicyDetailsValue == eventDetails.tfaChangePolicyDetailsValue || this.tfaChangePolicyDetailsValue.equals(eventDetails.tfaChangePolicyDetailsValue);
            case 256:
                return this.twoAccountChangePolicyDetailsValue == eventDetails.twoAccountChangePolicyDetailsValue || this.twoAccountChangePolicyDetailsValue.equals(eventDetails.twoAccountChangePolicyDetailsValue);
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                return this.webSessionsChangeFixedLengthPolicyDetailsValue == eventDetails.webSessionsChangeFixedLengthPolicyDetailsValue || this.webSessionsChangeFixedLengthPolicyDetailsValue.equals(eventDetails.webSessionsChangeFixedLengthPolicyDetailsValue);
            case 258:
                return this.webSessionsChangeIdleLengthPolicyDetailsValue == eventDetails.webSessionsChangeIdleLengthPolicyDetailsValue || this.webSessionsChangeIdleLengthPolicyDetailsValue.equals(eventDetails.webSessionsChangeIdleLengthPolicyDetailsValue);
            case 259:
                return this.teamProfileAddLogoDetailsValue == eventDetails.teamProfileAddLogoDetailsValue || this.teamProfileAddLogoDetailsValue.equals(eventDetails.teamProfileAddLogoDetailsValue);
            case 260:
                return this.teamProfileChangeDefaultLanguageDetailsValue == eventDetails.teamProfileChangeDefaultLanguageDetailsValue || this.teamProfileChangeDefaultLanguageDetailsValue.equals(eventDetails.teamProfileChangeDefaultLanguageDetailsValue);
            case 261:
                return this.teamProfileChangeLogoDetailsValue == eventDetails.teamProfileChangeLogoDetailsValue || this.teamProfileChangeLogoDetailsValue.equals(eventDetails.teamProfileChangeLogoDetailsValue);
            case 262:
                return this.teamProfileChangeNameDetailsValue == eventDetails.teamProfileChangeNameDetailsValue || this.teamProfileChangeNameDetailsValue.equals(eventDetails.teamProfileChangeNameDetailsValue);
            case 263:
                return this.teamProfileRemoveLogoDetailsValue == eventDetails.teamProfileRemoveLogoDetailsValue || this.teamProfileRemoveLogoDetailsValue.equals(eventDetails.teamProfileRemoveLogoDetailsValue);
            case 264:
                return this.tfaAddBackupPhoneDetailsValue == eventDetails.tfaAddBackupPhoneDetailsValue || this.tfaAddBackupPhoneDetailsValue.equals(eventDetails.tfaAddBackupPhoneDetailsValue);
            case 265:
                return this.tfaAddSecurityKeyDetailsValue == eventDetails.tfaAddSecurityKeyDetailsValue || this.tfaAddSecurityKeyDetailsValue.equals(eventDetails.tfaAddSecurityKeyDetailsValue);
            case 266:
                return this.tfaChangeBackupPhoneDetailsValue == eventDetails.tfaChangeBackupPhoneDetailsValue || this.tfaChangeBackupPhoneDetailsValue.equals(eventDetails.tfaChangeBackupPhoneDetailsValue);
            case 267:
                return this.tfaChangeStatusDetailsValue == eventDetails.tfaChangeStatusDetailsValue || this.tfaChangeStatusDetailsValue.equals(eventDetails.tfaChangeStatusDetailsValue);
            case 268:
                return this.tfaRemoveBackupPhoneDetailsValue == eventDetails.tfaRemoveBackupPhoneDetailsValue || this.tfaRemoveBackupPhoneDetailsValue.equals(eventDetails.tfaRemoveBackupPhoneDetailsValue);
            case 269:
                return this.tfaRemoveSecurityKeyDetailsValue == eventDetails.tfaRemoveSecurityKeyDetailsValue || this.tfaRemoveSecurityKeyDetailsValue.equals(eventDetails.tfaRemoveSecurityKeyDetailsValue);
            case 270:
                return this.tfaResetDetailsValue == eventDetails.tfaResetDetailsValue || this.tfaResetDetailsValue.equals(eventDetails.tfaResetDetailsValue);
            case 271:
                return this.missingDetailsValue == eventDetails.missingDetailsValue || this.missingDetailsValue.equals(eventDetails.missingDetailsValue);
            case 272:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: renamed from: com.dropbox.core.v2.teamlog.EventDetails$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag = new int[Tag.values().length];

        static {
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_ADMIN_EXPORT_START_DETAILS.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_EXTERNAL_VIEW_ALLOW_DETAILS.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS.ordinal()] = 9;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_EXTERNAL_VIEW_FORBID_DETAILS.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_EXTERNAL_INVITE_WARN_DETAILS.ordinal()] = 11;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_MERGE_FROM_DETAILS.ordinal()] = 12;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_MERGE_TO_DETAILS.ordinal()] = 13;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.APP_LINK_TEAM_DETAILS.ordinal()] = 14;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.APP_LINK_USER_DETAILS.ordinal()] = 15;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.APP_UNLINK_TEAM_DETAILS.ordinal()] = 16;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.APP_UNLINK_USER_DETAILS.ordinal()] = 17;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_ADD_COMMENT_DETAILS.ordinal()] = 18;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS.ordinal()] = 19;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_DELETE_COMMENT_DETAILS.ordinal()] = 20;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_LIKE_COMMENT_DETAILS.ordinal()] = 21;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_RESOLVE_COMMENT_DETAILS.ordinal()] = 22;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_UNLIKE_COMMENT_DETAILS.ordinal()] = 23;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_UNRESOLVE_COMMENT_DETAILS.ordinal()] = 24;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_CHANGE_IP_DESKTOP_DETAILS.ordinal()] = 25;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_CHANGE_IP_MOBILE_DETAILS.ordinal()] = 26;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_CHANGE_IP_WEB_DETAILS.ordinal()] = 27;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS.ordinal()] = 28;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS.ordinal()] = 29;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_LINK_FAIL_DETAILS.ordinal()] = 30;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_LINK_SUCCESS_DETAILS.ordinal()] = 31;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_MANAGEMENT_DISABLED_DETAILS.ordinal()] = 32;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_MANAGEMENT_ENABLED_DETAILS.ordinal()] = 33;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_UNLINK_DETAILS.ordinal()] = 34;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_REFRESH_AUTH_TOKEN_DETAILS.ordinal()] = 35;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS.ordinal()] = 36;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS.ordinal()] = 37;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS.ordinal()] = 38;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DISABLED_DOMAIN_INVITES_DETAILS.ordinal()] = 39;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS.ordinal()] = 40;
            } catch (NoSuchFieldError e41) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS.ordinal()] = 41;
            } catch (NoSuchFieldError e42) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS.ordinal()] = 42;
            } catch (NoSuchFieldError e43) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS.ordinal()] = 43;
            } catch (NoSuchFieldError e44) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS.ordinal()] = 44;
            } catch (NoSuchFieldError e45) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS.ordinal()] = 45;
            } catch (NoSuchFieldError e46) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS.ordinal()] = 46;
            } catch (NoSuchFieldError e47) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS.ordinal()] = 47;
            } catch (NoSuchFieldError e48) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS.ordinal()] = 48;
            } catch (NoSuchFieldError e49) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ENABLED_DOMAIN_INVITES_DETAILS.ordinal()] = 49;
            } catch (NoSuchFieldError e50) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.CREATE_FOLDER_DETAILS.ordinal()] = 50;
            } catch (NoSuchFieldError e51) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_ADD_DETAILS.ordinal()] = 51;
            } catch (NoSuchFieldError e52) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_COPY_DETAILS.ordinal()] = 52;
            } catch (NoSuchFieldError e53) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_DELETE_DETAILS.ordinal()] = 53;
            } catch (NoSuchFieldError e54) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_DOWNLOAD_DETAILS.ordinal()] = 54;
            } catch (NoSuchFieldError e55) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_EDIT_DETAILS.ordinal()] = 55;
            } catch (NoSuchFieldError e56) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_GET_COPY_REFERENCE_DETAILS.ordinal()] = 56;
            } catch (NoSuchFieldError e57) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_MOVE_DETAILS.ordinal()] = 57;
            } catch (NoSuchFieldError e58) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_PERMANENTLY_DELETE_DETAILS.ordinal()] = 58;
            } catch (NoSuchFieldError e59) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_PREVIEW_DETAILS.ordinal()] = 59;
            } catch (NoSuchFieldError e60) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_RENAME_DETAILS.ordinal()] = 60;
            } catch (NoSuchFieldError e61) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_RESTORE_DETAILS.ordinal()] = 61;
            } catch (NoSuchFieldError e62) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REVERT_DETAILS.ordinal()] = 62;
            } catch (NoSuchFieldError e63) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_ROLLBACK_CHANGES_DETAILS.ordinal()] = 63;
            } catch (NoSuchFieldError e64) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_SAVE_COPY_REFERENCE_DETAILS.ordinal()] = 64;
            } catch (NoSuchFieldError e65) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_ADD_DEADLINE_DETAILS.ordinal()] = 65;
            } catch (NoSuchFieldError e66) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_CHANGE_FOLDER_DETAILS.ordinal()] = 66;
            } catch (NoSuchFieldError e67) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_CHANGE_TITLE_DETAILS.ordinal()] = 67;
            } catch (NoSuchFieldError e68) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_CLOSE_DETAILS.ordinal()] = 68;
            } catch (NoSuchFieldError e69) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_CREATE_DETAILS.ordinal()] = 69;
            } catch (NoSuchFieldError e70) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_RECEIVE_FILE_DETAILS.ordinal()] = 70;
            } catch (NoSuchFieldError e71) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_REMOVE_DEADLINE_DETAILS.ordinal()] = 71;
            } catch (NoSuchFieldError e72) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUEST_SEND_DETAILS.ordinal()] = 72;
            } catch (NoSuchFieldError e73) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_ADD_EXTERNAL_ID_DETAILS.ordinal()] = 73;
            } catch (NoSuchFieldError e74) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_ADD_MEMBER_DETAILS.ordinal()] = 74;
            } catch (NoSuchFieldError e75) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_CHANGE_EXTERNAL_ID_DETAILS.ordinal()] = 75;
            } catch (NoSuchFieldError e76) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS.ordinal()] = 76;
            } catch (NoSuchFieldError e77) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_CHANGE_MEMBER_ROLE_DETAILS.ordinal()] = 77;
            } catch (NoSuchFieldError e78) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_CREATE_DETAILS.ordinal()] = 78;
            } catch (NoSuchFieldError e79) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_DELETE_DETAILS.ordinal()] = 79;
            } catch (NoSuchFieldError e80) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_MOVED_DETAILS.ordinal()] = 80;
            } catch (NoSuchFieldError e81) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_REMOVE_EXTERNAL_ID_DETAILS.ordinal()] = 81;
            } catch (NoSuchFieldError e82) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_REMOVE_MEMBER_DETAILS.ordinal()] = 82;
            } catch (NoSuchFieldError e83) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_RENAME_DETAILS.ordinal()] = 83;
            } catch (NoSuchFieldError e84) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_LOGIN_SUCCESS_DETAILS.ordinal()] = 84;
            } catch (NoSuchFieldError e85) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.LOGOUT_DETAILS.ordinal()] = 85;
            } catch (NoSuchFieldError e86) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PASSWORD_LOGIN_FAIL_DETAILS.ordinal()] = 86;
            } catch (NoSuchFieldError e87) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PASSWORD_LOGIN_SUCCESS_DETAILS.ordinal()] = 87;
            } catch (NoSuchFieldError e88) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.RESELLER_SUPPORT_SESSION_END_DETAILS.ordinal()] = 88;
            } catch (NoSuchFieldError e89) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.RESELLER_SUPPORT_SESSION_START_DETAILS.ordinal()] = 89;
            } catch (NoSuchFieldError e90) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SIGN_IN_AS_SESSION_END_DETAILS.ordinal()] = 90;
            } catch (NoSuchFieldError e91) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SIGN_IN_AS_SESSION_START_DETAILS.ordinal()] = 91;
            } catch (NoSuchFieldError e92) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_LOGIN_FAIL_DETAILS.ordinal()] = 92;
            } catch (NoSuchFieldError e93) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_ADD_NAME_DETAILS.ordinal()] = 93;
            } catch (NoSuchFieldError e94) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_CHANGE_ADMIN_ROLE_DETAILS.ordinal()] = 94;
            } catch (NoSuchFieldError e95) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_CHANGE_EMAIL_DETAILS.ordinal()] = 95;
            } catch (NoSuchFieldError e96) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_CHANGE_NAME_DETAILS.ordinal()] = 96;
            } catch (NoSuchFieldError e97) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_CHANGE_STATUS_DETAILS.ordinal()] = 97;
            } catch (NoSuchFieldError e98) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_SUGGEST_DETAILS.ordinal()] = 98;
            } catch (NoSuchFieldError e99) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_ADD_MEMBER_DETAILS.ordinal()] = 99;
            } catch (NoSuchFieldError e100) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_ADD_TO_FOLDER_DETAILS.ordinal()] = 100;
            } catch (NoSuchFieldError e101) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_ARCHIVE_DETAILS.ordinal()] = 101;
            } catch (NoSuchFieldError e102) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_CREATE_DETAILS.ordinal()] = 102;
            } catch (NoSuchFieldError e103) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS.ordinal()] = 103;
            } catch (NoSuchFieldError e104) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS.ordinal()] = 104;
            } catch (NoSuchFieldError e105) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_REMOVE_MEMBER_DETAILS.ordinal()] = 105;
            } catch (NoSuchFieldError e106) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_RENAME_DETAILS.ordinal()] = 106;
            } catch (NoSuchFieldError e107) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CONTENT_RESTORE_DETAILS.ordinal()] = 107;
            } catch (NoSuchFieldError e108) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_ADD_COMMENT_DETAILS.ordinal()] = 108;
            } catch (NoSuchFieldError e109) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS.ordinal()] = 109;
            } catch (NoSuchFieldError e110) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS.ordinal()] = 110;
            } catch (NoSuchFieldError e111) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS.ordinal()] = 111;
            } catch (NoSuchFieldError e112) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_DELETED_DETAILS.ordinal()] = 112;
            } catch (NoSuchFieldError e113) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_DELETE_COMMENT_DETAILS.ordinal()] = 113;
            } catch (NoSuchFieldError e114) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_DOWNLOAD_DETAILS.ordinal()] = 114;
            } catch (NoSuchFieldError e115) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_EDIT_DETAILS.ordinal()] = 115;
            } catch (NoSuchFieldError e116) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_EDIT_COMMENT_DETAILS.ordinal()] = 116;
            } catch (NoSuchFieldError e117) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_FOLLOWED_DETAILS.ordinal()] = 117;
            } catch (NoSuchFieldError e118) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_MENTION_DETAILS.ordinal()] = 118;
            } catch (NoSuchFieldError e119) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_REQUEST_ACCESS_DETAILS.ordinal()] = 119;
            } catch (NoSuchFieldError e120) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_RESOLVE_COMMENT_DETAILS.ordinal()] = 120;
            } catch (NoSuchFieldError e121) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_REVERT_DETAILS.ordinal()] = 121;
            } catch (NoSuchFieldError e122) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_SLACK_SHARE_DETAILS.ordinal()] = 122;
            } catch (NoSuchFieldError e123) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_TEAM_INVITE_DETAILS.ordinal()] = 123;
            } catch (NoSuchFieldError e124) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_TRASHED_DETAILS.ordinal()] = 124;
            } catch (NoSuchFieldError e125) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_UNRESOLVE_COMMENT_DETAILS.ordinal()] = 125;
            } catch (NoSuchFieldError e126) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_UNTRASHED_DETAILS.ordinal()] = 126;
            } catch (NoSuchFieldError e127) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_DOC_VIEW_DETAILS.ordinal()] = 127;
            } catch (NoSuchFieldError e128) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS.ordinal()] = 128;
            } catch (NoSuchFieldError e129) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_FOLDER_DELETED_DETAILS.ordinal()] = 129;
            } catch (NoSuchFieldError e130) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_FOLDER_FOLLOWED_DETAILS.ordinal()] = 130;
            } catch (NoSuchFieldError e131) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_FOLDER_TEAM_INVITE_DETAILS.ordinal()] = 131;
            } catch (NoSuchFieldError e132) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PASSWORD_CHANGE_DETAILS.ordinal()] = 132;
            } catch (NoSuchFieldError e133) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PASSWORD_RESET_DETAILS.ordinal()] = 133;
            } catch (NoSuchFieldError e134) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PASSWORD_RESET_ALL_DETAILS.ordinal()] = 134;
            } catch (NoSuchFieldError e135) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_CREATE_EXCEPTIONS_REPORT_DETAILS.ordinal()] = 135;
            } catch (NoSuchFieldError e136) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_CREATE_USAGE_REPORT_DETAILS.ordinal()] = 136;
            } catch (NoSuchFieldError e137) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS.ordinal()] = 137;
            } catch (NoSuchFieldError e138) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_ACTIVITY_CREATE_REPORT_DETAILS.ordinal()] = 138;
            } catch (NoSuchFieldError e139) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.COLLECTION_SHARE_DETAILS.ordinal()] = 139;
            } catch (NoSuchFieldError e140) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.NOTE_ACL_INVITE_ONLY_DETAILS.ordinal()] = 140;
            } catch (NoSuchFieldError e141) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.NOTE_ACL_LINK_DETAILS.ordinal()] = 141;
            } catch (NoSuchFieldError e142) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.NOTE_ACL_TEAM_LINK_DETAILS.ordinal()] = 142;
            } catch (NoSuchFieldError e143) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.NOTE_SHARED_DETAILS.ordinal()] = 143;
            } catch (NoSuchFieldError e144) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.NOTE_SHARE_RECEIVE_DETAILS.ordinal()] = 144;
            } catch (NoSuchFieldError e145) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.OPEN_NOTE_SHARED_DETAILS.ordinal()] = 145;
            } catch (NoSuchFieldError e146) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_ADD_GROUP_DETAILS.ordinal()] = 146;
            } catch (NoSuchFieldError e147) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS.ordinal()] = 147;
            } catch (NoSuchFieldError e148) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_INVITE_GROUP_DETAILS.ordinal()] = 148;
            } catch (NoSuchFieldError e149) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_NEST_DETAILS.ordinal()] = 149;
            } catch (NoSuchFieldError e150) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_DECLINE_DETAILS.ordinal()] = 150;
            } catch (NoSuchFieldError e151) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_GRANT_ACCESS_DETAILS.ordinal()] = 151;
            } catch (NoSuchFieldError e152) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_INVITE_DETAILS.ordinal()] = 152;
            } catch (NoSuchFieldError e153) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_INVITE_CHANGE_ROLE_DETAILS.ordinal()] = 153;
            } catch (NoSuchFieldError e154) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_JOIN_DETAILS.ordinal()] = 154;
            } catch (NoSuchFieldError e155) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS.ordinal()] = 155;
            } catch (NoSuchFieldError e156) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SF_TEAM_UNINVITE_DETAILS.ordinal()] = 156;
            } catch (NoSuchFieldError e157) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_ADD_INVITEES_DETAILS.ordinal()] = 157;
            } catch (NoSuchFieldError e158) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS.ordinal()] = 158;
            } catch (NoSuchFieldError e159) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS.ordinal()] = 159;
            } catch (NoSuchFieldError e160) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_ADD_MEMBER_DETAILS.ordinal()] = 160;
            } catch (NoSuchFieldError e161) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS.ordinal()] = 161;
            } catch (NoSuchFieldError e162) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS.ordinal()] = 162;
            } catch (NoSuchFieldError e163) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS.ordinal()] = 163;
            } catch (NoSuchFieldError e164) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS.ordinal()] = 164;
            } catch (NoSuchFieldError e165) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS.ordinal()] = 165;
            } catch (NoSuchFieldError e166) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS.ordinal()] = 166;
            } catch (NoSuchFieldError e167) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS.ordinal()] = 167;
            } catch (NoSuchFieldError e168) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_CLAIM_INVITATION_DETAILS.ordinal()] = 168;
            } catch (NoSuchFieldError e169) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_COPY_DETAILS.ordinal()] = 169;
            } catch (NoSuchFieldError e170) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_DOWNLOAD_DETAILS.ordinal()] = 170;
            } catch (NoSuchFieldError e171) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS.ordinal()] = 171;
            } catch (NoSuchFieldError e172) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_REMOVE_INVITEE_DETAILS.ordinal()] = 172;
            } catch (NoSuchFieldError e173) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS.ordinal()] = 173;
            } catch (NoSuchFieldError e174) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS.ordinal()] = 174;
            } catch (NoSuchFieldError e175) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_REMOVE_MEMBER_DETAILS.ordinal()] = 175;
            } catch (NoSuchFieldError e176) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_REQUEST_ACCESS_DETAILS.ordinal()] = 176;
            } catch (NoSuchFieldError e177) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_UNSHARE_DETAILS.ordinal()] = 177;
            } catch (NoSuchFieldError e178) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_CONTENT_VIEW_DETAILS.ordinal()] = 178;
            } catch (NoSuchFieldError e179) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_CHANGE_CONFIDENTIALITY_DETAILS.ordinal()] = 179;
            } catch (NoSuchFieldError e180) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS.ordinal()] = 180;
            } catch (NoSuchFieldError e181) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY_DETAILS.ordinal()] = 181;
            } catch (NoSuchFieldError e182) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_CHANGE_MEMBER_POLICY_DETAILS.ordinal()] = 182;
            } catch (NoSuchFieldError e183) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_CREATE_DETAILS.ordinal()] = 183;
            } catch (NoSuchFieldError e184) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_MOUNT_DETAILS.ordinal()] = 184;
            } catch (NoSuchFieldError e185) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS.ordinal()] = 185;
            } catch (NoSuchFieldError e186) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_FOLDER_UNMOUNT_DETAILS.ordinal()] = 186;
            } catch (NoSuchFieldError e187) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARED_NOTE_OPENED_DETAILS.ordinal()] = 187;
            } catch (NoSuchFieldError e188) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_APP_CREATE_DETAILS.ordinal()] = 188;
            } catch (NoSuchFieldError e189) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_CREATE_DETAILS.ordinal()] = 189;
            } catch (NoSuchFieldError e190) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_DISABLE_DETAILS.ordinal()] = 190;
            } catch (NoSuchFieldError e191) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_FB_SHARE_DETAILS.ordinal()] = 191;
            } catch (NoSuchFieldError e192) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_GROUP_SHARE_DETAILS.ordinal()] = 192;
            } catch (NoSuchFieldError e193) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_REMOVE_EXPIRATION_DETAILS.ordinal()] = 193;
            } catch (NoSuchFieldError e194) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_SET_EXPIRATION_DETAILS.ordinal()] = 194;
            } catch (NoSuchFieldError e195) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_TEAM_COPY_DETAILS.ordinal()] = 195;
            } catch (NoSuchFieldError e196) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_TEAM_DOWNLOAD_DETAILS.ordinal()] = 196;
            } catch (NoSuchFieldError e197) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_TEAM_SHARE_DETAILS.ordinal()] = 197;
            } catch (NoSuchFieldError e198) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_TEAM_VIEW_DETAILS.ordinal()] = 198;
            } catch (NoSuchFieldError e199) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_VISIBILITY_PASSWORD_DETAILS.ordinal()] = 199;
            } catch (NoSuchFieldError e200) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_VISIBILITY_PUBLIC_DETAILS.ordinal()] = 200;
            } catch (NoSuchFieldError e201) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHMODEL_VISIBILITY_TEAM_ONLY_DETAILS.ordinal()] = 201;
            } catch (NoSuchFieldError e202) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_ADD_CERT_DETAILS.ordinal()] = 202;
            } catch (NoSuchFieldError e203) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_ADD_LOGIN_URL_DETAILS.ordinal()] = 203;
            } catch (NoSuchFieldError e204) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_ADD_LOGOUT_URL_DETAILS.ordinal()] = 204;
            } catch (NoSuchFieldError e205) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_CHANGE_CERT_DETAILS.ordinal()] = 205;
            } catch (NoSuchFieldError e206) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_CHANGE_LOGIN_URL_DETAILS.ordinal()] = 206;
            } catch (NoSuchFieldError e207) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_CHANGE_LOGOUT_URL_DETAILS.ordinal()] = 207;
            } catch (NoSuchFieldError e208) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS.ordinal()] = 208;
            } catch (NoSuchFieldError e209) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_REMOVE_CERT_DETAILS.ordinal()] = 209;
            } catch (NoSuchFieldError e210) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_REMOVE_LOGIN_URL_DETAILS.ordinal()] = 210;
            } catch (NoSuchFieldError e211) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_REMOVE_LOGOUT_URL_DETAILS.ordinal()] = 211;
            } catch (NoSuchFieldError e212) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_FOLDER_CHANGE_STATUS_DETAILS.ordinal()] = 212;
            } catch (NoSuchFieldError e213) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_FOLDER_CREATE_DETAILS.ordinal()] = 213;
            } catch (NoSuchFieldError e214) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_FOLDER_DOWNGRADE_DETAILS.ordinal()] = 214;
            } catch (NoSuchFieldError e215) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS.ordinal()] = 215;
            } catch (NoSuchFieldError e216) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_FOLDER_RENAME_DETAILS.ordinal()] = 216;
            } catch (NoSuchFieldError e217) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS.ordinal()] = 217;
            } catch (NoSuchFieldError e218) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ALLOW_DOWNLOAD_DISABLED_DETAILS.ordinal()] = 218;
            } catch (NoSuchFieldError e219) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.ALLOW_DOWNLOAD_ENABLED_DETAILS.ordinal()] = 219;
            } catch (NoSuchFieldError e220) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS.ordinal()] = 220;
            } catch (NoSuchFieldError e221) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS.ordinal()] = 221;
            } catch (NoSuchFieldError e222) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS.ordinal()] = 222;
            } catch (NoSuchFieldError e223) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS.ordinal()] = 223;
            } catch (NoSuchFieldError e224) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS.ordinal()] = 224;
            } catch (NoSuchFieldError e225) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS.ordinal()] = 225;
            } catch (NoSuchFieldError e226) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_ADD_EXCEPTION_DETAILS.ordinal()] = 226;
            } catch (NoSuchFieldError e227) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_CHANGE_POLICY_DETAILS.ordinal()] = 227;
            } catch (NoSuchFieldError e228) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EMM_REMOVE_EXCEPTION_DETAILS.ordinal()] = 228;
            } catch (NoSuchFieldError e229) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS.ordinal()] = 229;
            } catch (NoSuchFieldError e230) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_COMMENTS_CHANGE_POLICY_DETAILS.ordinal()] = 230;
            } catch (NoSuchFieldError e231) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUESTS_CHANGE_POLICY_DETAILS.ordinal()] = 231;
            } catch (NoSuchFieldError e232) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUESTS_EMAILS_ENABLED_DETAILS.ordinal()] = 232;
            } catch (NoSuchFieldError e233) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS.ordinal()] = 233;
            } catch (NoSuchFieldError e234) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GOOGLE_SSO_CHANGE_POLICY_DETAILS.ordinal()] = 234;
            } catch (NoSuchFieldError e235) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS.ordinal()] = 235;
            } catch (NoSuchFieldError e236) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_REQUESTS_CHANGE_POLICY_DETAILS.ordinal()] = 236;
            } catch (NoSuchFieldError e237) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS.ordinal()] = 237;
            } catch (NoSuchFieldError e238) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS.ordinal()] = 238;
            } catch (NoSuchFieldError e239) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS.ordinal()] = 239;
            } catch (NoSuchFieldError e240) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS.ordinal()] = 240;
            } catch (NoSuchFieldError e241) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS.ordinal()] = 241;
            } catch (NoSuchFieldError e242) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.NETWORK_CONTROL_CHANGE_POLICY_DETAILS.ordinal()] = 242;
            } catch (NoSuchFieldError e243) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS.ordinal()] = 243;
            } catch (NoSuchFieldError e244) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS.ordinal()] = 244;
            } catch (NoSuchFieldError e245) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CHANGE_MEMBER_POLICY_DETAILS.ordinal()] = 245;
            } catch (NoSuchFieldError e246) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PAPER_CHANGE_POLICY_DETAILS.ordinal()] = 246;
            } catch (NoSuchFieldError e247) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.PERMANENT_DELETE_CHANGE_POLICY_DETAILS.ordinal()] = 247;
            } catch (NoSuchFieldError e248) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS.ordinal()] = 248;
            } catch (NoSuchFieldError e249) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARING_CHANGE_LINK_POLICY_DETAILS.ordinal()] = 249;
            } catch (NoSuchFieldError e250) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SHARING_CHANGE_MEMBER_POLICY_DETAILS.ordinal()] = 250;
            } catch (NoSuchFieldError e251) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SMART_SYNC_CHANGE_POLICY_DETAILS.ordinal()] = 251;
            } catch (NoSuchFieldError e252) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SMART_SYNC_NOT_OPT_OUT_DETAILS.ordinal()] = 252;
            } catch (NoSuchFieldError e253) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SMART_SYNC_OPT_OUT_DETAILS.ordinal()] = 253;
            } catch (NoSuchFieldError e254) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.SSO_CHANGE_POLICY_DETAILS.ordinal()] = 254;
            } catch (NoSuchFieldError e255) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_CHANGE_POLICY_DETAILS.ordinal()] = 255;
            } catch (NoSuchFieldError e256) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TWO_ACCOUNT_CHANGE_POLICY_DETAILS.ordinal()] = 256;
            } catch (NoSuchFieldError e257) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS.ordinal()] = 257;
            } catch (NoSuchFieldError e258) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS.ordinal()] = 258;
            } catch (NoSuchFieldError e259) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_PROFILE_ADD_LOGO_DETAILS.ordinal()] = 259;
            } catch (NoSuchFieldError e260) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS.ordinal()] = 260;
            } catch (NoSuchFieldError e261) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_PROFILE_CHANGE_LOGO_DETAILS.ordinal()] = 261;
            } catch (NoSuchFieldError e262) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_PROFILE_CHANGE_NAME_DETAILS.ordinal()] = 262;
            } catch (NoSuchFieldError e263) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TEAM_PROFILE_REMOVE_LOGO_DETAILS.ordinal()] = 263;
            } catch (NoSuchFieldError e264) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_ADD_BACKUP_PHONE_DETAILS.ordinal()] = 264;
            } catch (NoSuchFieldError e265) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_ADD_SECURITY_KEY_DETAILS.ordinal()] = 265;
            } catch (NoSuchFieldError e266) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_CHANGE_BACKUP_PHONE_DETAILS.ordinal()] = 266;
            } catch (NoSuchFieldError e267) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_CHANGE_STATUS_DETAILS.ordinal()] = 267;
            } catch (NoSuchFieldError e268) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_REMOVE_BACKUP_PHONE_DETAILS.ordinal()] = 268;
            } catch (NoSuchFieldError e269) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_REMOVE_SECURITY_KEY_DETAILS.ordinal()] = 269;
            } catch (NoSuchFieldError e270) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.TFA_RESET_DETAILS.ordinal()] = 270;
            } catch (NoSuchFieldError e271) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.MISSING_DETAILS.ordinal()] = 271;
            } catch (NoSuchFieldError e272) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[Tag.OTHER.ordinal()] = 272;
            } catch (NoSuchFieldError e273) {
            }
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<EventDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(EventDetails eventDetails, g gVar) throws IOException {
            switch (AnonymousClass1.$SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag[eventDetails.tag().ordinal()]) {
                case 1:
                    gVar.e();
                    writeTag("member_change_membership_type_details", gVar);
                    MemberChangeMembershipTypeDetails.Serializer.INSTANCE.serialize(eventDetails.memberChangeMembershipTypeDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 2:
                    gVar.e();
                    writeTag("member_permanently_delete_account_contents_details", gVar);
                    MemberPermanentlyDeleteAccountContentsDetails.Serializer.INSTANCE.serialize(eventDetails.memberPermanentlyDeleteAccountContentsDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 3:
                    gVar.e();
                    writeTag("member_space_limits_change_status_details", gVar);
                    MemberSpaceLimitsChangeStatusDetails.Serializer.INSTANCE.serialize(eventDetails.memberSpaceLimitsChangeStatusDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 4:
                    gVar.e();
                    writeTag("member_transfer_account_contents_details", gVar);
                    MemberTransferAccountContentsDetails.Serializer.INSTANCE.serialize(eventDetails.memberTransferAccountContentsDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 5:
                    gVar.e();
                    writeTag("paper_admin_export_start_details", gVar);
                    PaperAdminExportStartDetails.Serializer.INSTANCE.serialize(eventDetails.paperAdminExportStartDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 6:
                    gVar.e();
                    writeTag("paper_enabled_users_group_addition_details", gVar);
                    PaperEnabledUsersGroupAdditionDetails.Serializer.INSTANCE.serialize(eventDetails.paperEnabledUsersGroupAdditionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 7:
                    gVar.e();
                    writeTag("paper_enabled_users_group_removal_details", gVar);
                    PaperEnabledUsersGroupRemovalDetails.Serializer.INSTANCE.serialize(eventDetails.paperEnabledUsersGroupRemovalDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 8:
                    gVar.e();
                    writeTag("paper_external_view_allow_details", gVar);
                    PaperExternalViewAllowDetails.Serializer.INSTANCE.serialize(eventDetails.paperExternalViewAllowDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 9:
                    gVar.e();
                    writeTag("paper_external_view_default_team_details", gVar);
                    PaperExternalViewDefaultTeamDetails.Serializer.INSTANCE.serialize(eventDetails.paperExternalViewDefaultTeamDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 10:
                    gVar.e();
                    writeTag("paper_external_view_forbid_details", gVar);
                    PaperExternalViewForbidDetails.Serializer.INSTANCE.serialize(eventDetails.paperExternalViewForbidDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 11:
                    gVar.e();
                    writeTag("sf_external_invite_warn_details", gVar);
                    SfExternalInviteWarnDetails.Serializer.INSTANCE.serialize(eventDetails.sfExternalInviteWarnDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 12:
                    gVar.e();
                    writeTag("team_merge_from_details", gVar);
                    TeamMergeFromDetails.Serializer.INSTANCE.serialize(eventDetails.teamMergeFromDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 13:
                    gVar.e();
                    writeTag("team_merge_to_details", gVar);
                    TeamMergeToDetails.Serializer.INSTANCE.serialize(eventDetails.teamMergeToDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 14:
                    gVar.e();
                    writeTag("app_link_team_details", gVar);
                    AppLinkTeamDetails.Serializer.INSTANCE.serialize(eventDetails.appLinkTeamDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 15:
                    gVar.e();
                    writeTag("app_link_user_details", gVar);
                    AppLinkUserDetails.Serializer.INSTANCE.serialize(eventDetails.appLinkUserDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 16:
                    gVar.e();
                    writeTag("app_unlink_team_details", gVar);
                    AppUnlinkTeamDetails.Serializer.INSTANCE.serialize(eventDetails.appUnlinkTeamDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 17:
                    gVar.e();
                    writeTag("app_unlink_user_details", gVar);
                    AppUnlinkUserDetails.Serializer.INSTANCE.serialize(eventDetails.appUnlinkUserDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 18:
                    gVar.e();
                    writeTag("file_add_comment_details", gVar);
                    FileAddCommentDetails.Serializer.INSTANCE.serialize(eventDetails.fileAddCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 19:
                    gVar.e();
                    writeTag("file_change_comment_subscription_details", gVar);
                    FileChangeCommentSubscriptionDetails.Serializer.INSTANCE.serialize(eventDetails.fileChangeCommentSubscriptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 20:
                    gVar.e();
                    writeTag("file_delete_comment_details", gVar);
                    FileDeleteCommentDetails.Serializer.INSTANCE.serialize(eventDetails.fileDeleteCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 21:
                    gVar.e();
                    writeTag("file_like_comment_details", gVar);
                    FileLikeCommentDetails.Serializer.INSTANCE.serialize(eventDetails.fileLikeCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 22:
                    gVar.e();
                    writeTag("file_resolve_comment_details", gVar);
                    FileResolveCommentDetails.Serializer.INSTANCE.serialize(eventDetails.fileResolveCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 23:
                    gVar.e();
                    writeTag("file_unlike_comment_details", gVar);
                    FileUnlikeCommentDetails.Serializer.INSTANCE.serialize(eventDetails.fileUnlikeCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 24:
                    gVar.e();
                    writeTag("file_unresolve_comment_details", gVar);
                    FileUnresolveCommentDetails.Serializer.INSTANCE.serialize(eventDetails.fileUnresolveCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 25:
                    gVar.e();
                    writeTag("device_change_ip_desktop_details", gVar);
                    DeviceChangeIpDesktopDetails.Serializer.INSTANCE.serialize(eventDetails.deviceChangeIpDesktopDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 26:
                    gVar.e();
                    writeTag("device_change_ip_mobile_details", gVar);
                    DeviceChangeIpMobileDetails.Serializer.INSTANCE.serialize(eventDetails.deviceChangeIpMobileDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 27:
                    gVar.e();
                    writeTag("device_change_ip_web_details", gVar);
                    DeviceChangeIpWebDetails.Serializer.INSTANCE.serialize(eventDetails.deviceChangeIpWebDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 28:
                    gVar.e();
                    writeTag("device_delete_on_unlink_fail_details", gVar);
                    DeviceDeleteOnUnlinkFailDetails.Serializer.INSTANCE.serialize(eventDetails.deviceDeleteOnUnlinkFailDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 29:
                    gVar.e();
                    writeTag("device_delete_on_unlink_success_details", gVar);
                    DeviceDeleteOnUnlinkSuccessDetails.Serializer.INSTANCE.serialize(eventDetails.deviceDeleteOnUnlinkSuccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 30:
                    gVar.e();
                    writeTag("device_link_fail_details", gVar);
                    DeviceLinkFailDetails.Serializer.INSTANCE.serialize(eventDetails.deviceLinkFailDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 31:
                    gVar.e();
                    writeTag("device_link_success_details", gVar);
                    DeviceLinkSuccessDetails.Serializer.INSTANCE.serialize(eventDetails.deviceLinkSuccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 32:
                    gVar.e();
                    writeTag("device_management_disabled_details", gVar);
                    DeviceManagementDisabledDetails.Serializer.INSTANCE.serialize(eventDetails.deviceManagementDisabledDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 33:
                    gVar.e();
                    writeTag("device_management_enabled_details", gVar);
                    DeviceManagementEnabledDetails.Serializer.INSTANCE.serialize(eventDetails.deviceManagementEnabledDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 34:
                    gVar.e();
                    writeTag("device_unlink_details", gVar);
                    DeviceUnlinkDetails.Serializer.INSTANCE.serialize(eventDetails.deviceUnlinkDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 35:
                    gVar.e();
                    writeTag("emm_refresh_auth_token_details", gVar);
                    EmmRefreshAuthTokenDetails.Serializer.INSTANCE.serialize(eventDetails.emmRefreshAuthTokenDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 36:
                    gVar.e();
                    writeTag("account_capture_change_availability_details", gVar);
                    AccountCaptureChangeAvailabilityDetails.Serializer.INSTANCE.serialize(eventDetails.accountCaptureChangeAvailabilityDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 37:
                    gVar.e();
                    writeTag("account_capture_migrate_account_details", gVar);
                    AccountCaptureMigrateAccountDetails.Serializer.INSTANCE.serialize(eventDetails.accountCaptureMigrateAccountDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 38:
                    gVar.e();
                    writeTag("account_capture_relinquish_account_details", gVar);
                    AccountCaptureRelinquishAccountDetails.Serializer.INSTANCE.serialize(eventDetails.accountCaptureRelinquishAccountDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 39:
                    gVar.e();
                    writeTag("disabled_domain_invites_details", gVar);
                    DisabledDomainInvitesDetails.Serializer.INSTANCE.serialize(eventDetails.disabledDomainInvitesDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 40:
                    gVar.e();
                    writeTag("domain_invites_approve_request_to_join_team_details", gVar);
                    DomainInvitesApproveRequestToJoinTeamDetails.Serializer.INSTANCE.serialize(eventDetails.domainInvitesApproveRequestToJoinTeamDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 41:
                    gVar.e();
                    writeTag("domain_invites_decline_request_to_join_team_details", gVar);
                    DomainInvitesDeclineRequestToJoinTeamDetails.Serializer.INSTANCE.serialize(eventDetails.domainInvitesDeclineRequestToJoinTeamDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 42:
                    gVar.e();
                    writeTag("domain_invites_email_existing_users_details", gVar);
                    DomainInvitesEmailExistingUsersDetails.Serializer.INSTANCE.serialize(eventDetails.domainInvitesEmailExistingUsersDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 43:
                    gVar.e();
                    writeTag("domain_invites_request_to_join_team_details", gVar);
                    DomainInvitesRequestToJoinTeamDetails.Serializer.INSTANCE.serialize(eventDetails.domainInvitesRequestToJoinTeamDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 44:
                    gVar.e();
                    writeTag("domain_invites_set_invite_new_user_pref_to_no_details", gVar);
                    DomainInvitesSetInviteNewUserPrefToNoDetails.Serializer.INSTANCE.serialize(eventDetails.domainInvitesSetInviteNewUserPrefToNoDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 45:
                    gVar.e();
                    writeTag("domain_invites_set_invite_new_user_pref_to_yes_details", gVar);
                    DomainInvitesSetInviteNewUserPrefToYesDetails.Serializer.INSTANCE.serialize(eventDetails.domainInvitesSetInviteNewUserPrefToYesDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 46:
                    gVar.e();
                    writeTag("domain_verification_add_domain_fail_details", gVar);
                    DomainVerificationAddDomainFailDetails.Serializer.INSTANCE.serialize(eventDetails.domainVerificationAddDomainFailDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 47:
                    gVar.e();
                    writeTag("domain_verification_add_domain_success_details", gVar);
                    DomainVerificationAddDomainSuccessDetails.Serializer.INSTANCE.serialize(eventDetails.domainVerificationAddDomainSuccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 48:
                    gVar.e();
                    writeTag("domain_verification_remove_domain_details", gVar);
                    DomainVerificationRemoveDomainDetails.Serializer.INSTANCE.serialize(eventDetails.domainVerificationRemoveDomainDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 49:
                    gVar.e();
                    writeTag("enabled_domain_invites_details", gVar);
                    EnabledDomainInvitesDetails.Serializer.INSTANCE.serialize(eventDetails.enabledDomainInvitesDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 50:
                    gVar.e();
                    writeTag("create_folder_details", gVar);
                    CreateFolderDetails.Serializer.INSTANCE.serialize(eventDetails.createFolderDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 51:
                    gVar.e();
                    writeTag("file_add_details", gVar);
                    FileAddDetails.Serializer.INSTANCE.serialize(eventDetails.fileAddDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 52:
                    gVar.e();
                    writeTag("file_copy_details", gVar);
                    FileCopyDetails.Serializer.INSTANCE.serialize(eventDetails.fileCopyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 53:
                    gVar.e();
                    writeTag("file_delete_details", gVar);
                    FileDeleteDetails.Serializer.INSTANCE.serialize(eventDetails.fileDeleteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 54:
                    gVar.e();
                    writeTag("file_download_details", gVar);
                    FileDownloadDetails.Serializer.INSTANCE.serialize(eventDetails.fileDownloadDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 55:
                    gVar.e();
                    writeTag("file_edit_details", gVar);
                    FileEditDetails.Serializer.INSTANCE.serialize(eventDetails.fileEditDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 56:
                    gVar.e();
                    writeTag("file_get_copy_reference_details", gVar);
                    FileGetCopyReferenceDetails.Serializer.INSTANCE.serialize(eventDetails.fileGetCopyReferenceDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 57:
                    gVar.e();
                    writeTag("file_move_details", gVar);
                    FileMoveDetails.Serializer.INSTANCE.serialize(eventDetails.fileMoveDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 58:
                    gVar.e();
                    writeTag("file_permanently_delete_details", gVar);
                    FilePermanentlyDeleteDetails.Serializer.INSTANCE.serialize(eventDetails.filePermanentlyDeleteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 59:
                    gVar.e();
                    writeTag("file_preview_details", gVar);
                    FilePreviewDetails.Serializer.INSTANCE.serialize(eventDetails.filePreviewDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 60:
                    gVar.e();
                    writeTag("file_rename_details", gVar);
                    FileRenameDetails.Serializer.INSTANCE.serialize(eventDetails.fileRenameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 61:
                    gVar.e();
                    writeTag("file_restore_details", gVar);
                    FileRestoreDetails.Serializer.INSTANCE.serialize(eventDetails.fileRestoreDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 62:
                    gVar.e();
                    writeTag("file_revert_details", gVar);
                    FileRevertDetails.Serializer.INSTANCE.serialize(eventDetails.fileRevertDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 63:
                    gVar.e();
                    writeTag("file_rollback_changes_details", gVar);
                    FileRollbackChangesDetails.Serializer.INSTANCE.serialize(eventDetails.fileRollbackChangesDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 64:
                    gVar.e();
                    writeTag("file_save_copy_reference_details", gVar);
                    FileSaveCopyReferenceDetails.Serializer.INSTANCE.serialize(eventDetails.fileSaveCopyReferenceDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 65:
                    gVar.e();
                    writeTag("file_request_add_deadline_details", gVar);
                    FileRequestAddDeadlineDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestAddDeadlineDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 66:
                    gVar.e();
                    writeTag("file_request_change_folder_details", gVar);
                    FileRequestChangeFolderDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestChangeFolderDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 67:
                    gVar.e();
                    writeTag("file_request_change_title_details", gVar);
                    FileRequestChangeTitleDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestChangeTitleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 68:
                    gVar.e();
                    writeTag("file_request_close_details", gVar);
                    FileRequestCloseDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestCloseDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 69:
                    gVar.e();
                    writeTag("file_request_create_details", gVar);
                    FileRequestCreateDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 70:
                    gVar.e();
                    writeTag("file_request_receive_file_details", gVar);
                    FileRequestReceiveFileDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestReceiveFileDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 71:
                    gVar.e();
                    writeTag("file_request_remove_deadline_details", gVar);
                    FileRequestRemoveDeadlineDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestRemoveDeadlineDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 72:
                    gVar.e();
                    writeTag("file_request_send_details", gVar);
                    FileRequestSendDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestSendDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 73:
                    gVar.e();
                    writeTag("group_add_external_id_details", gVar);
                    GroupAddExternalIdDetails.Serializer.INSTANCE.serialize(eventDetails.groupAddExternalIdDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 74:
                    gVar.e();
                    writeTag("group_add_member_details", gVar);
                    GroupAddMemberDetails.Serializer.INSTANCE.serialize(eventDetails.groupAddMemberDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 75:
                    gVar.e();
                    writeTag("group_change_external_id_details", gVar);
                    GroupChangeExternalIdDetails.Serializer.INSTANCE.serialize(eventDetails.groupChangeExternalIdDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 76:
                    gVar.e();
                    writeTag("group_change_management_type_details", gVar);
                    GroupChangeManagementTypeDetails.Serializer.INSTANCE.serialize(eventDetails.groupChangeManagementTypeDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 77:
                    gVar.e();
                    writeTag("group_change_member_role_details", gVar);
                    GroupChangeMemberRoleDetails.Serializer.INSTANCE.serialize(eventDetails.groupChangeMemberRoleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 78:
                    gVar.e();
                    writeTag("group_create_details", gVar);
                    GroupCreateDetails.Serializer.INSTANCE.serialize(eventDetails.groupCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 79:
                    gVar.e();
                    writeTag("group_delete_details", gVar);
                    GroupDeleteDetails.Serializer.INSTANCE.serialize(eventDetails.groupDeleteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 80:
                    gVar.e();
                    writeTag("group_moved_details", gVar);
                    GroupMovedDetails.Serializer.INSTANCE.serialize(eventDetails.groupMovedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 81:
                    gVar.e();
                    writeTag("group_remove_external_id_details", gVar);
                    GroupRemoveExternalIdDetails.Serializer.INSTANCE.serialize(eventDetails.groupRemoveExternalIdDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 82:
                    gVar.e();
                    writeTag("group_remove_member_details", gVar);
                    GroupRemoveMemberDetails.Serializer.INSTANCE.serialize(eventDetails.groupRemoveMemberDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 83:
                    gVar.e();
                    writeTag("group_rename_details", gVar);
                    GroupRenameDetails.Serializer.INSTANCE.serialize(eventDetails.groupRenameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 84:
                    gVar.e();
                    writeTag("emm_login_success_details", gVar);
                    EmmLoginSuccessDetails.Serializer.INSTANCE.serialize(eventDetails.emmLoginSuccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 85:
                    gVar.e();
                    writeTag("logout_details", gVar);
                    LogoutDetails.Serializer.INSTANCE.serialize(eventDetails.logoutDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 86:
                    gVar.e();
                    writeTag("password_login_fail_details", gVar);
                    PasswordLoginFailDetails.Serializer.INSTANCE.serialize(eventDetails.passwordLoginFailDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 87:
                    gVar.e();
                    writeTag("password_login_success_details", gVar);
                    PasswordLoginSuccessDetails.Serializer.INSTANCE.serialize(eventDetails.passwordLoginSuccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 88:
                    gVar.e();
                    writeTag("reseller_support_session_end_details", gVar);
                    ResellerSupportSessionEndDetails.Serializer.INSTANCE.serialize(eventDetails.resellerSupportSessionEndDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 89:
                    gVar.e();
                    writeTag("reseller_support_session_start_details", gVar);
                    ResellerSupportSessionStartDetails.Serializer.INSTANCE.serialize(eventDetails.resellerSupportSessionStartDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 90:
                    gVar.e();
                    writeTag("sign_in_as_session_end_details", gVar);
                    SignInAsSessionEndDetails.Serializer.INSTANCE.serialize(eventDetails.signInAsSessionEndDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 91:
                    gVar.e();
                    writeTag("sign_in_as_session_start_details", gVar);
                    SignInAsSessionStartDetails.Serializer.INSTANCE.serialize(eventDetails.signInAsSessionStartDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 92:
                    gVar.e();
                    writeTag("sso_login_fail_details", gVar);
                    SsoLoginFailDetails.Serializer.INSTANCE.serialize(eventDetails.ssoLoginFailDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 93:
                    gVar.e();
                    writeTag("member_add_name_details", gVar);
                    MemberAddNameDetails.Serializer.INSTANCE.serialize(eventDetails.memberAddNameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 94:
                    gVar.e();
                    writeTag("member_change_admin_role_details", gVar);
                    MemberChangeAdminRoleDetails.Serializer.INSTANCE.serialize(eventDetails.memberChangeAdminRoleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 95:
                    gVar.e();
                    writeTag("member_change_email_details", gVar);
                    MemberChangeEmailDetails.Serializer.INSTANCE.serialize(eventDetails.memberChangeEmailDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 96:
                    gVar.e();
                    writeTag("member_change_name_details", gVar);
                    MemberChangeNameDetails.Serializer.INSTANCE.serialize(eventDetails.memberChangeNameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 97:
                    gVar.e();
                    writeTag("member_change_status_details", gVar);
                    MemberChangeStatusDetails.Serializer.INSTANCE.serialize(eventDetails.memberChangeStatusDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 98:
                    gVar.e();
                    writeTag("member_suggest_details", gVar);
                    MemberSuggestDetails.Serializer.INSTANCE.serialize(eventDetails.memberSuggestDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 99:
                    gVar.e();
                    writeTag("paper_content_add_member_details", gVar);
                    PaperContentAddMemberDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentAddMemberDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 100:
                    gVar.e();
                    writeTag("paper_content_add_to_folder_details", gVar);
                    PaperContentAddToFolderDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentAddToFolderDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 101:
                    gVar.e();
                    writeTag("paper_content_archive_details", gVar);
                    PaperContentArchiveDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentArchiveDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 102:
                    gVar.e();
                    writeTag("paper_content_create_details", gVar);
                    PaperContentCreateDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 103:
                    gVar.e();
                    writeTag("paper_content_permanently_delete_details", gVar);
                    PaperContentPermanentlyDeleteDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentPermanentlyDeleteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 104:
                    gVar.e();
                    writeTag("paper_content_remove_from_folder_details", gVar);
                    PaperContentRemoveFromFolderDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentRemoveFromFolderDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 105:
                    gVar.e();
                    writeTag("paper_content_remove_member_details", gVar);
                    PaperContentRemoveMemberDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentRemoveMemberDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 106:
                    gVar.e();
                    writeTag("paper_content_rename_details", gVar);
                    PaperContentRenameDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentRenameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 107:
                    gVar.e();
                    writeTag("paper_content_restore_details", gVar);
                    PaperContentRestoreDetails.Serializer.INSTANCE.serialize(eventDetails.paperContentRestoreDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 108:
                    gVar.e();
                    writeTag("paper_doc_add_comment_details", gVar);
                    PaperDocAddCommentDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocAddCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 109:
                    gVar.e();
                    writeTag("paper_doc_change_member_role_details", gVar);
                    PaperDocChangeMemberRoleDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocChangeMemberRoleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 110:
                    gVar.e();
                    writeTag("paper_doc_change_sharing_policy_details", gVar);
                    PaperDocChangeSharingPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocChangeSharingPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 111:
                    gVar.e();
                    writeTag("paper_doc_change_subscription_details", gVar);
                    PaperDocChangeSubscriptionDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocChangeSubscriptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 112:
                    gVar.e();
                    writeTag("paper_doc_deleted_details", gVar);
                    PaperDocDeletedDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocDeletedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 113:
                    gVar.e();
                    writeTag("paper_doc_delete_comment_details", gVar);
                    PaperDocDeleteCommentDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocDeleteCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 114:
                    gVar.e();
                    writeTag("paper_doc_download_details", gVar);
                    PaperDocDownloadDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocDownloadDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 115:
                    gVar.e();
                    writeTag("paper_doc_edit_details", gVar);
                    PaperDocEditDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocEditDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 116:
                    gVar.e();
                    writeTag("paper_doc_edit_comment_details", gVar);
                    PaperDocEditCommentDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocEditCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 117:
                    gVar.e();
                    writeTag("paper_doc_followed_details", gVar);
                    PaperDocFollowedDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocFollowedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 118:
                    gVar.e();
                    writeTag("paper_doc_mention_details", gVar);
                    PaperDocMentionDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocMentionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 119:
                    gVar.e();
                    writeTag("paper_doc_request_access_details", gVar);
                    PaperDocRequestAccessDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocRequestAccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 120:
                    gVar.e();
                    writeTag("paper_doc_resolve_comment_details", gVar);
                    PaperDocResolveCommentDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocResolveCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 121:
                    gVar.e();
                    writeTag("paper_doc_revert_details", gVar);
                    PaperDocRevertDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocRevertDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 122:
                    gVar.e();
                    writeTag("paper_doc_slack_share_details", gVar);
                    PaperDocSlackShareDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocSlackShareDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 123:
                    gVar.e();
                    writeTag("paper_doc_team_invite_details", gVar);
                    PaperDocTeamInviteDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocTeamInviteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 124:
                    gVar.e();
                    writeTag("paper_doc_trashed_details", gVar);
                    PaperDocTrashedDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocTrashedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 125:
                    gVar.e();
                    writeTag("paper_doc_unresolve_comment_details", gVar);
                    PaperDocUnresolveCommentDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocUnresolveCommentDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 126:
                    gVar.e();
                    writeTag("paper_doc_untrashed_details", gVar);
                    PaperDocUntrashedDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocUntrashedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 127:
                    gVar.e();
                    writeTag("paper_doc_view_details", gVar);
                    PaperDocViewDetails.Serializer.INSTANCE.serialize(eventDetails.paperDocViewDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 128:
                    gVar.e();
                    writeTag("paper_folder_change_subscription_details", gVar);
                    PaperFolderChangeSubscriptionDetails.Serializer.INSTANCE.serialize(eventDetails.paperFolderChangeSubscriptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 129:
                    gVar.e();
                    writeTag("paper_folder_deleted_details", gVar);
                    PaperFolderDeletedDetails.Serializer.INSTANCE.serialize(eventDetails.paperFolderDeletedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 130:
                    gVar.e();
                    writeTag("paper_folder_followed_details", gVar);
                    PaperFolderFollowedDetails.Serializer.INSTANCE.serialize(eventDetails.paperFolderFollowedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 131:
                    gVar.e();
                    writeTag("paper_folder_team_invite_details", gVar);
                    PaperFolderTeamInviteDetails.Serializer.INSTANCE.serialize(eventDetails.paperFolderTeamInviteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 132:
                    gVar.e();
                    writeTag("password_change_details", gVar);
                    PasswordChangeDetails.Serializer.INSTANCE.serialize(eventDetails.passwordChangeDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 133:
                    gVar.e();
                    writeTag("password_reset_details", gVar);
                    PasswordResetDetails.Serializer.INSTANCE.serialize(eventDetails.passwordResetDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 134:
                    gVar.e();
                    writeTag("password_reset_all_details", gVar);
                    PasswordResetAllDetails.Serializer.INSTANCE.serialize(eventDetails.passwordResetAllDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 135:
                    gVar.e();
                    writeTag("emm_create_exceptions_report_details", gVar);
                    EmmCreateExceptionsReportDetails.Serializer.INSTANCE.serialize(eventDetails.emmCreateExceptionsReportDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 136:
                    gVar.e();
                    writeTag("emm_create_usage_report_details", gVar);
                    EmmCreateUsageReportDetails.Serializer.INSTANCE.serialize(eventDetails.emmCreateUsageReportDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 137:
                    gVar.e();
                    writeTag("smart_sync_create_admin_privilege_report_details", gVar);
                    SmartSyncCreateAdminPrivilegeReportDetails.Serializer.INSTANCE.serialize(eventDetails.smartSyncCreateAdminPrivilegeReportDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 138:
                    gVar.e();
                    writeTag("team_activity_create_report_details", gVar);
                    TeamActivityCreateReportDetails.Serializer.INSTANCE.serialize(eventDetails.teamActivityCreateReportDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 139:
                    gVar.e();
                    writeTag("collection_share_details", gVar);
                    CollectionShareDetails.Serializer.INSTANCE.serialize(eventDetails.collectionShareDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 140:
                    gVar.e();
                    writeTag("note_acl_invite_only_details", gVar);
                    NoteAclInviteOnlyDetails.Serializer.INSTANCE.serialize(eventDetails.noteAclInviteOnlyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 141:
                    gVar.e();
                    writeTag("note_acl_link_details", gVar);
                    NoteAclLinkDetails.Serializer.INSTANCE.serialize(eventDetails.noteAclLinkDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 142:
                    gVar.e();
                    writeTag("note_acl_team_link_details", gVar);
                    NoteAclTeamLinkDetails.Serializer.INSTANCE.serialize(eventDetails.noteAclTeamLinkDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 143:
                    gVar.e();
                    writeTag("note_shared_details", gVar);
                    NoteSharedDetails.Serializer.INSTANCE.serialize(eventDetails.noteSharedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 144:
                    gVar.e();
                    writeTag("note_share_receive_details", gVar);
                    NoteShareReceiveDetails.Serializer.INSTANCE.serialize(eventDetails.noteShareReceiveDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 145:
                    gVar.e();
                    writeTag("open_note_shared_details", gVar);
                    OpenNoteSharedDetails.Serializer.INSTANCE.serialize(eventDetails.openNoteSharedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 146:
                    gVar.e();
                    writeTag("sf_add_group_details", gVar);
                    SfAddGroupDetails.Serializer.INSTANCE.serialize(eventDetails.sfAddGroupDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 147:
                    gVar.e();
                    writeTag("sf_allow_non_members_to_view_shared_links_details", gVar);
                    SfAllowNonMembersToViewSharedLinksDetails.Serializer.INSTANCE.serialize(eventDetails.sfAllowNonMembersToViewSharedLinksDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 148:
                    gVar.e();
                    writeTag("sf_invite_group_details", gVar);
                    SfInviteGroupDetails.Serializer.INSTANCE.serialize(eventDetails.sfInviteGroupDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 149:
                    gVar.e();
                    writeTag("sf_nest_details", gVar);
                    SfNestDetails.Serializer.INSTANCE.serialize(eventDetails.sfNestDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 150:
                    gVar.e();
                    writeTag("sf_team_decline_details", gVar);
                    SfTeamDeclineDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamDeclineDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 151:
                    gVar.e();
                    writeTag("sf_team_grant_access_details", gVar);
                    SfTeamGrantAccessDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamGrantAccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 152:
                    gVar.e();
                    writeTag("sf_team_invite_details", gVar);
                    SfTeamInviteDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamInviteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 153:
                    gVar.e();
                    writeTag("sf_team_invite_change_role_details", gVar);
                    SfTeamInviteChangeRoleDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamInviteChangeRoleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 154:
                    gVar.e();
                    writeTag("sf_team_join_details", gVar);
                    SfTeamJoinDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamJoinDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 155:
                    gVar.e();
                    writeTag("sf_team_join_from_oob_link_details", gVar);
                    SfTeamJoinFromOobLinkDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamJoinFromOobLinkDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 156:
                    gVar.e();
                    writeTag("sf_team_uninvite_details", gVar);
                    SfTeamUninviteDetails.Serializer.INSTANCE.serialize(eventDetails.sfTeamUninviteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 157:
                    gVar.e();
                    writeTag("shared_content_add_invitees_details", gVar);
                    SharedContentAddInviteesDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentAddInviteesDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 158:
                    gVar.e();
                    writeTag("shared_content_add_link_expiry_details", gVar);
                    SharedContentAddLinkExpiryDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentAddLinkExpiryDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 159:
                    gVar.e();
                    writeTag("shared_content_add_link_password_details", gVar);
                    SharedContentAddLinkPasswordDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentAddLinkPasswordDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 160:
                    gVar.e();
                    writeTag("shared_content_add_member_details", gVar);
                    SharedContentAddMemberDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentAddMemberDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 161:
                    gVar.e();
                    writeTag("shared_content_change_downloads_policy_details", gVar);
                    SharedContentChangeDownloadsPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeDownloadsPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 162:
                    gVar.e();
                    writeTag("shared_content_change_invitee_role_details", gVar);
                    SharedContentChangeInviteeRoleDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeInviteeRoleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 163:
                    gVar.e();
                    writeTag("shared_content_change_link_audience_details", gVar);
                    SharedContentChangeLinkAudienceDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeLinkAudienceDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 164:
                    gVar.e();
                    writeTag("shared_content_change_link_expiry_details", gVar);
                    SharedContentChangeLinkExpiryDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeLinkExpiryDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 165:
                    gVar.e();
                    writeTag("shared_content_change_link_password_details", gVar);
                    SharedContentChangeLinkPasswordDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeLinkPasswordDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 166:
                    gVar.e();
                    writeTag("shared_content_change_member_role_details", gVar);
                    SharedContentChangeMemberRoleDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeMemberRoleDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 167:
                    gVar.e();
                    writeTag("shared_content_change_viewer_info_policy_details", gVar);
                    SharedContentChangeViewerInfoPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentChangeViewerInfoPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case DateTimeConstants.HOURS_PER_WEEK /* 168 */:
                    gVar.e();
                    writeTag("shared_content_claim_invitation_details", gVar);
                    SharedContentClaimInvitationDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentClaimInvitationDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 169:
                    gVar.e();
                    writeTag("shared_content_copy_details", gVar);
                    SharedContentCopyDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentCopyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 170:
                    gVar.e();
                    writeTag("shared_content_download_details", gVar);
                    SharedContentDownloadDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentDownloadDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 171:
                    gVar.e();
                    writeTag("shared_content_relinquish_membership_details", gVar);
                    SharedContentRelinquishMembershipDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentRelinquishMembershipDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 172:
                    gVar.e();
                    writeTag("shared_content_remove_invitee_details", gVar);
                    SharedContentRemoveInviteeDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentRemoveInviteeDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 173:
                    gVar.e();
                    writeTag("shared_content_remove_link_expiry_details", gVar);
                    SharedContentRemoveLinkExpiryDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentRemoveLinkExpiryDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 174:
                    gVar.e();
                    writeTag("shared_content_remove_link_password_details", gVar);
                    SharedContentRemoveLinkPasswordDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentRemoveLinkPasswordDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 175:
                    gVar.e();
                    writeTag("shared_content_remove_member_details", gVar);
                    SharedContentRemoveMemberDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentRemoveMemberDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 176:
                    gVar.e();
                    writeTag("shared_content_request_access_details", gVar);
                    SharedContentRequestAccessDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentRequestAccessDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 177:
                    gVar.e();
                    writeTag("shared_content_unshare_details", gVar);
                    SharedContentUnshareDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentUnshareDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 178:
                    gVar.e();
                    writeTag("shared_content_view_details", gVar);
                    SharedContentViewDetails.Serializer.INSTANCE.serialize(eventDetails.sharedContentViewDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 179:
                    gVar.e();
                    writeTag("shared_folder_change_confidentiality_details", gVar);
                    SharedFolderChangeConfidentialityDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderChangeConfidentialityDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 180:
                    gVar.e();
                    writeTag("shared_folder_change_link_policy_details", gVar);
                    SharedFolderChangeLinkPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderChangeLinkPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 181:
                    gVar.e();
                    writeTag("shared_folder_change_member_management_policy_details", gVar);
                    SharedFolderChangeMemberManagementPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderChangeMemberManagementPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 182:
                    gVar.e();
                    writeTag("shared_folder_change_member_policy_details", gVar);
                    SharedFolderChangeMemberPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderChangeMemberPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 183:
                    gVar.e();
                    writeTag("shared_folder_create_details", gVar);
                    SharedFolderCreateDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 184:
                    gVar.e();
                    writeTag("shared_folder_mount_details", gVar);
                    SharedFolderMountDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderMountDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 185:
                    gVar.e();
                    writeTag("shared_folder_transfer_ownership_details", gVar);
                    SharedFolderTransferOwnershipDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderTransferOwnershipDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 186:
                    gVar.e();
                    writeTag("shared_folder_unmount_details", gVar);
                    SharedFolderUnmountDetails.Serializer.INSTANCE.serialize(eventDetails.sharedFolderUnmountDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 187:
                    gVar.e();
                    writeTag("shared_note_opened_details", gVar);
                    SharedNoteOpenedDetails.Serializer.INSTANCE.serialize(eventDetails.sharedNoteOpenedDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 188:
                    gVar.e();
                    writeTag("shmodel_app_create_details", gVar);
                    ShmodelAppCreateDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelAppCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 189:
                    gVar.e();
                    writeTag("shmodel_create_details", gVar);
                    ShmodelCreateDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 190:
                    gVar.e();
                    writeTag("shmodel_disable_details", gVar);
                    ShmodelDisableDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelDisableDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 191:
                    gVar.e();
                    writeTag("shmodel_fb_share_details", gVar);
                    ShmodelFbShareDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelFbShareDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 192:
                    gVar.e();
                    writeTag("shmodel_group_share_details", gVar);
                    ShmodelGroupShareDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelGroupShareDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 193:
                    gVar.e();
                    writeTag("shmodel_remove_expiration_details", gVar);
                    ShmodelRemoveExpirationDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelRemoveExpirationDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 194:
                    gVar.e();
                    writeTag("shmodel_set_expiration_details", gVar);
                    ShmodelSetExpirationDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelSetExpirationDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 195:
                    gVar.e();
                    writeTag("shmodel_team_copy_details", gVar);
                    ShmodelTeamCopyDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelTeamCopyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 196:
                    gVar.e();
                    writeTag("shmodel_team_download_details", gVar);
                    ShmodelTeamDownloadDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelTeamDownloadDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 197:
                    gVar.e();
                    writeTag("shmodel_team_share_details", gVar);
                    ShmodelTeamShareDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelTeamShareDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 198:
                    gVar.e();
                    writeTag("shmodel_team_view_details", gVar);
                    ShmodelTeamViewDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelTeamViewDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 199:
                    gVar.e();
                    writeTag("shmodel_visibility_password_details", gVar);
                    ShmodelVisibilityPasswordDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelVisibilityPasswordDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 200:
                    gVar.e();
                    writeTag("shmodel_visibility_public_details", gVar);
                    ShmodelVisibilityPublicDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelVisibilityPublicDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 201:
                    gVar.e();
                    writeTag("shmodel_visibility_team_only_details", gVar);
                    ShmodelVisibilityTeamOnlyDetails.Serializer.INSTANCE.serialize(eventDetails.shmodelVisibilityTeamOnlyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 202:
                    gVar.e();
                    writeTag("sso_add_cert_details", gVar);
                    SsoAddCertDetails.Serializer.INSTANCE.serialize(eventDetails.ssoAddCertDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 203:
                    gVar.e();
                    writeTag("sso_add_login_url_details", gVar);
                    SsoAddLoginUrlDetails.Serializer.INSTANCE.serialize(eventDetails.ssoAddLoginUrlDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 204:
                    gVar.e();
                    writeTag("sso_add_logout_url_details", gVar);
                    SsoAddLogoutUrlDetails.Serializer.INSTANCE.serialize(eventDetails.ssoAddLogoutUrlDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 205:
                    gVar.e();
                    writeTag("sso_change_cert_details", gVar);
                    SsoChangeCertDetails.Serializer.INSTANCE.serialize(eventDetails.ssoChangeCertDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 206:
                    gVar.e();
                    writeTag("sso_change_login_url_details", gVar);
                    SsoChangeLoginUrlDetails.Serializer.INSTANCE.serialize(eventDetails.ssoChangeLoginUrlDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case HttpStatus.ORDINAL_207_Multi_Status /* 207 */:
                    gVar.e();
                    writeTag("sso_change_logout_url_details", gVar);
                    SsoChangeLogoutUrlDetails.Serializer.INSTANCE.serialize(eventDetails.ssoChangeLogoutUrlDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 208:
                    gVar.e();
                    writeTag("sso_change_saml_identity_mode_details", gVar);
                    SsoChangeSamlIdentityModeDetails.Serializer.INSTANCE.serialize(eventDetails.ssoChangeSamlIdentityModeDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 209:
                    gVar.e();
                    writeTag("sso_remove_cert_details", gVar);
                    SsoRemoveCertDetails.Serializer.INSTANCE.serialize(eventDetails.ssoRemoveCertDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 210:
                    gVar.e();
                    writeTag("sso_remove_login_url_details", gVar);
                    SsoRemoveLoginUrlDetails.Serializer.INSTANCE.serialize(eventDetails.ssoRemoveLoginUrlDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 211:
                    gVar.e();
                    writeTag("sso_remove_logout_url_details", gVar);
                    SsoRemoveLogoutUrlDetails.Serializer.INSTANCE.serialize(eventDetails.ssoRemoveLogoutUrlDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 212:
                    gVar.e();
                    writeTag("team_folder_change_status_details", gVar);
                    TeamFolderChangeStatusDetails.Serializer.INSTANCE.serialize(eventDetails.teamFolderChangeStatusDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 213:
                    gVar.e();
                    writeTag("team_folder_create_details", gVar);
                    TeamFolderCreateDetails.Serializer.INSTANCE.serialize(eventDetails.teamFolderCreateDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 214:
                    gVar.e();
                    writeTag("team_folder_downgrade_details", gVar);
                    TeamFolderDowngradeDetails.Serializer.INSTANCE.serialize(eventDetails.teamFolderDowngradeDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 215:
                    gVar.e();
                    writeTag("team_folder_permanently_delete_details", gVar);
                    TeamFolderPermanentlyDeleteDetails.Serializer.INSTANCE.serialize(eventDetails.teamFolderPermanentlyDeleteDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 216:
                    gVar.e();
                    writeTag("team_folder_rename_details", gVar);
                    TeamFolderRenameDetails.Serializer.INSTANCE.serialize(eventDetails.teamFolderRenameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 217:
                    gVar.e();
                    writeTag("account_capture_change_policy_details", gVar);
                    AccountCaptureChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.accountCaptureChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 218:
                    gVar.e();
                    writeTag("allow_download_disabled_details", gVar);
                    AllowDownloadDisabledDetails.Serializer.INSTANCE.serialize(eventDetails.allowDownloadDisabledDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 219:
                    gVar.e();
                    writeTag("allow_download_enabled_details", gVar);
                    AllowDownloadEnabledDetails.Serializer.INSTANCE.serialize(eventDetails.allowDownloadEnabledDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 220:
                    gVar.e();
                    writeTag("data_placement_restriction_change_policy_details", gVar);
                    DataPlacementRestrictionChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.dataPlacementRestrictionChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 221:
                    gVar.e();
                    writeTag("data_placement_restriction_satisfy_policy_details", gVar);
                    DataPlacementRestrictionSatisfyPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.dataPlacementRestrictionSatisfyPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 222:
                    gVar.e();
                    writeTag("device_approvals_change_desktop_policy_details", gVar);
                    DeviceApprovalsChangeDesktopPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.deviceApprovalsChangeDesktopPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 223:
                    gVar.e();
                    writeTag("device_approvals_change_mobile_policy_details", gVar);
                    DeviceApprovalsChangeMobilePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.deviceApprovalsChangeMobilePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 224:
                    gVar.e();
                    writeTag("device_approvals_change_overage_action_details", gVar);
                    DeviceApprovalsChangeOverageActionDetails.Serializer.INSTANCE.serialize(eventDetails.deviceApprovalsChangeOverageActionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 225:
                    gVar.e();
                    writeTag("device_approvals_change_unlink_action_details", gVar);
                    DeviceApprovalsChangeUnlinkActionDetails.Serializer.INSTANCE.serialize(eventDetails.deviceApprovalsChangeUnlinkActionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 226:
                    gVar.e();
                    writeTag("emm_add_exception_details", gVar);
                    EmmAddExceptionDetails.Serializer.INSTANCE.serialize(eventDetails.emmAddExceptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 227:
                    gVar.e();
                    writeTag("emm_change_policy_details", gVar);
                    EmmChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.emmChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 228:
                    gVar.e();
                    writeTag("emm_remove_exception_details", gVar);
                    EmmRemoveExceptionDetails.Serializer.INSTANCE.serialize(eventDetails.emmRemoveExceptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 229:
                    gVar.e();
                    writeTag("extended_version_history_change_policy_details", gVar);
                    ExtendedVersionHistoryChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.extendedVersionHistoryChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 230:
                    gVar.e();
                    writeTag("file_comments_change_policy_details", gVar);
                    FileCommentsChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.fileCommentsChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 231:
                    gVar.e();
                    writeTag("file_requests_change_policy_details", gVar);
                    FileRequestsChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestsChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 232:
                    gVar.e();
                    writeTag("file_requests_emails_enabled_details", gVar);
                    FileRequestsEmailsEnabledDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestsEmailsEnabledDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 233:
                    gVar.e();
                    writeTag("file_requests_emails_restricted_to_team_only_details", gVar);
                    FileRequestsEmailsRestrictedToTeamOnlyDetails.Serializer.INSTANCE.serialize(eventDetails.fileRequestsEmailsRestrictedToTeamOnlyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 234:
                    gVar.e();
                    writeTag("google_sso_change_policy_details", gVar);
                    GoogleSsoChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.googleSsoChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 235:
                    gVar.e();
                    writeTag("group_user_management_change_policy_details", gVar);
                    GroupUserManagementChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.groupUserManagementChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 236:
                    gVar.e();
                    writeTag("member_requests_change_policy_details", gVar);
                    MemberRequestsChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.memberRequestsChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 237:
                    gVar.e();
                    writeTag("member_space_limits_add_exception_details", gVar);
                    MemberSpaceLimitsAddExceptionDetails.Serializer.INSTANCE.serialize(eventDetails.memberSpaceLimitsAddExceptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 238:
                    gVar.e();
                    writeTag("member_space_limits_change_policy_details", gVar);
                    MemberSpaceLimitsChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.memberSpaceLimitsChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 239:
                    gVar.e();
                    writeTag("member_space_limits_remove_exception_details", gVar);
                    MemberSpaceLimitsRemoveExceptionDetails.Serializer.INSTANCE.serialize(eventDetails.memberSpaceLimitsRemoveExceptionDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 240:
                    gVar.e();
                    writeTag("member_suggestions_change_policy_details", gVar);
                    MemberSuggestionsChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.memberSuggestionsChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 241:
                    gVar.e();
                    writeTag("microsoft_office_addin_change_policy_details", gVar);
                    MicrosoftOfficeAddinChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.microsoftOfficeAddinChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 242:
                    gVar.e();
                    writeTag("network_control_change_policy_details", gVar);
                    NetworkControlChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.networkControlChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 243:
                    gVar.e();
                    writeTag("paper_change_deployment_policy_details", gVar);
                    PaperChangeDeploymentPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.paperChangeDeploymentPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 244:
                    gVar.e();
                    writeTag("paper_change_member_link_policy_details", gVar);
                    PaperChangeMemberLinkPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.paperChangeMemberLinkPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 245:
                    gVar.e();
                    writeTag("paper_change_member_policy_details", gVar);
                    PaperChangeMemberPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.paperChangeMemberPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 246:
                    gVar.e();
                    writeTag("paper_change_policy_details", gVar);
                    PaperChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.paperChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 247:
                    gVar.e();
                    writeTag("permanent_delete_change_policy_details", gVar);
                    PermanentDeleteChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.permanentDeleteChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 248:
                    gVar.e();
                    writeTag("sharing_change_folder_join_policy_details", gVar);
                    SharingChangeFolderJoinPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharingChangeFolderJoinPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 249:
                    gVar.e();
                    writeTag("sharing_change_link_policy_details", gVar);
                    SharingChangeLinkPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharingChangeLinkPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                    gVar.e();
                    writeTag("sharing_change_member_policy_details", gVar);
                    SharingChangeMemberPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.sharingChangeMemberPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 251:
                    gVar.e();
                    writeTag("smart_sync_change_policy_details", gVar);
                    SmartSyncChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.smartSyncChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 252:
                    gVar.e();
                    writeTag("smart_sync_not_opt_out_details", gVar);
                    SmartSyncNotOptOutDetails.Serializer.INSTANCE.serialize(eventDetails.smartSyncNotOptOutDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 253:
                    gVar.e();
                    writeTag("smart_sync_opt_out_details", gVar);
                    SmartSyncOptOutDetails.Serializer.INSTANCE.serialize(eventDetails.smartSyncOptOutDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 254:
                    gVar.e();
                    writeTag("sso_change_policy_details", gVar);
                    SsoChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.ssoChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 255:
                    gVar.e();
                    writeTag("tfa_change_policy_details", gVar);
                    TfaChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.tfaChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 256:
                    gVar.e();
                    writeTag("two_account_change_policy_details", gVar);
                    TwoAccountChangePolicyDetails.Serializer.INSTANCE.serialize(eventDetails.twoAccountChangePolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                    gVar.e();
                    writeTag("web_sessions_change_fixed_length_policy_details", gVar);
                    WebSessionsChangeFixedLengthPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.webSessionsChangeFixedLengthPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 258:
                    gVar.e();
                    writeTag("web_sessions_change_idle_length_policy_details", gVar);
                    WebSessionsChangeIdleLengthPolicyDetails.Serializer.INSTANCE.serialize(eventDetails.webSessionsChangeIdleLengthPolicyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 259:
                    gVar.e();
                    writeTag("team_profile_add_logo_details", gVar);
                    TeamProfileAddLogoDetails.Serializer.INSTANCE.serialize(eventDetails.teamProfileAddLogoDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 260:
                    gVar.e();
                    writeTag("team_profile_change_default_language_details", gVar);
                    TeamProfileChangeDefaultLanguageDetails.Serializer.INSTANCE.serialize(eventDetails.teamProfileChangeDefaultLanguageDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 261:
                    gVar.e();
                    writeTag("team_profile_change_logo_details", gVar);
                    TeamProfileChangeLogoDetails.Serializer.INSTANCE.serialize(eventDetails.teamProfileChangeLogoDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 262:
                    gVar.e();
                    writeTag("team_profile_change_name_details", gVar);
                    TeamProfileChangeNameDetails.Serializer.INSTANCE.serialize(eventDetails.teamProfileChangeNameDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 263:
                    gVar.e();
                    writeTag("team_profile_remove_logo_details", gVar);
                    TeamProfileRemoveLogoDetails.Serializer.INSTANCE.serialize(eventDetails.teamProfileRemoveLogoDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 264:
                    gVar.e();
                    writeTag("tfa_add_backup_phone_details", gVar);
                    TfaAddBackupPhoneDetails.Serializer.INSTANCE.serialize(eventDetails.tfaAddBackupPhoneDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 265:
                    gVar.e();
                    writeTag("tfa_add_security_key_details", gVar);
                    TfaAddSecurityKeyDetails.Serializer.INSTANCE.serialize(eventDetails.tfaAddSecurityKeyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 266:
                    gVar.e();
                    writeTag("tfa_change_backup_phone_details", gVar);
                    TfaChangeBackupPhoneDetails.Serializer.INSTANCE.serialize(eventDetails.tfaChangeBackupPhoneDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 267:
                    gVar.e();
                    writeTag("tfa_change_status_details", gVar);
                    TfaChangeStatusDetails.Serializer.INSTANCE.serialize(eventDetails.tfaChangeStatusDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 268:
                    gVar.e();
                    writeTag("tfa_remove_backup_phone_details", gVar);
                    TfaRemoveBackupPhoneDetails.Serializer.INSTANCE.serialize(eventDetails.tfaRemoveBackupPhoneDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 269:
                    gVar.e();
                    writeTag("tfa_remove_security_key_details", gVar);
                    TfaRemoveSecurityKeyDetails.Serializer.INSTANCE.serialize(eventDetails.tfaRemoveSecurityKeyDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 270:
                    gVar.e();
                    writeTag("tfa_reset_details", gVar);
                    TfaResetDetails.Serializer.INSTANCE.serialize(eventDetails.tfaResetDetailsValue, gVar, true);
                    gVar.f();
                    break;
                case 271:
                    gVar.e();
                    writeTag("missing_details", gVar);
                    MissingDetails.Serializer.INSTANCE.serialize(eventDetails.missingDetailsValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public EventDetails deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            EventDetails eventDetailsMissingDetails;
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
            if ("member_change_membership_type_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberChangeMembershipTypeDetails(MemberChangeMembershipTypeDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_permanently_delete_account_contents_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberPermanentlyDeleteAccountContentsDetails(MemberPermanentlyDeleteAccountContentsDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_space_limits_change_status_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberSpaceLimitsChangeStatusDetails(MemberSpaceLimitsChangeStatusDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_transfer_account_contents_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberTransferAccountContentsDetails(MemberTransferAccountContentsDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_admin_export_start_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperAdminExportStartDetails(PaperAdminExportStartDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_enabled_users_group_addition_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperEnabledUsersGroupAdditionDetails(PaperEnabledUsersGroupAdditionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_enabled_users_group_removal_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperEnabledUsersGroupRemovalDetails(PaperEnabledUsersGroupRemovalDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_external_view_allow_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperExternalViewAllowDetails(PaperExternalViewAllowDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_external_view_default_team_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperExternalViewDefaultTeamDetails(PaperExternalViewDefaultTeamDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_external_view_forbid_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperExternalViewForbidDetails(PaperExternalViewForbidDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_external_invite_warn_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfExternalInviteWarnDetails(SfExternalInviteWarnDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_merge_from_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamMergeFromDetails(TeamMergeFromDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_merge_to_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamMergeToDetails(TeamMergeToDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("app_link_team_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.appLinkTeamDetails(AppLinkTeamDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("app_link_user_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.appLinkUserDetails(AppLinkUserDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("app_unlink_team_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.appUnlinkTeamDetails(AppUnlinkTeamDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("app_unlink_user_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.appUnlinkUserDetails(AppUnlinkUserDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_add_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileAddCommentDetails(FileAddCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_change_comment_subscription_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileChangeCommentSubscriptionDetails(FileChangeCommentSubscriptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_delete_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileDeleteCommentDetails(FileDeleteCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_like_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileLikeCommentDetails(FileLikeCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_resolve_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileResolveCommentDetails(FileResolveCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_unlike_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileUnlikeCommentDetails(FileUnlikeCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_unresolve_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileUnresolveCommentDetails(FileUnresolveCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_change_ip_desktop_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceChangeIpDesktopDetails(DeviceChangeIpDesktopDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_change_ip_mobile_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceChangeIpMobileDetails(DeviceChangeIpMobileDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_change_ip_web_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceChangeIpWebDetails(DeviceChangeIpWebDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_delete_on_unlink_fail_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceDeleteOnUnlinkFailDetails(DeviceDeleteOnUnlinkFailDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_delete_on_unlink_success_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceDeleteOnUnlinkSuccessDetails(DeviceDeleteOnUnlinkSuccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_link_fail_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceLinkFailDetails(DeviceLinkFailDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_link_success_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceLinkSuccessDetails(DeviceLinkSuccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_management_disabled_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceManagementDisabledDetails(DeviceManagementDisabledDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_management_enabled_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceManagementEnabledDetails(DeviceManagementEnabledDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_unlink_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceUnlinkDetails(DeviceUnlinkDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_refresh_auth_token_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmRefreshAuthTokenDetails(EmmRefreshAuthTokenDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("account_capture_change_availability_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.accountCaptureChangeAvailabilityDetails(AccountCaptureChangeAvailabilityDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("account_capture_migrate_account_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.accountCaptureMigrateAccountDetails(AccountCaptureMigrateAccountDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("account_capture_relinquish_account_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.accountCaptureRelinquishAccountDetails(AccountCaptureRelinquishAccountDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("disabled_domain_invites_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.disabledDomainInvitesDetails(DisabledDomainInvitesDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_invites_approve_request_to_join_team_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainInvitesApproveRequestToJoinTeamDetails(DomainInvitesApproveRequestToJoinTeamDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_invites_decline_request_to_join_team_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainInvitesDeclineRequestToJoinTeamDetails(DomainInvitesDeclineRequestToJoinTeamDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_invites_email_existing_users_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainInvitesEmailExistingUsersDetails(DomainInvitesEmailExistingUsersDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_invites_request_to_join_team_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainInvitesRequestToJoinTeamDetails(DomainInvitesRequestToJoinTeamDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_invites_set_invite_new_user_pref_to_no_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainInvitesSetInviteNewUserPrefToNoDetails(DomainInvitesSetInviteNewUserPrefToNoDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_invites_set_invite_new_user_pref_to_yes_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainInvitesSetInviteNewUserPrefToYesDetails(DomainInvitesSetInviteNewUserPrefToYesDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_verification_add_domain_fail_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainVerificationAddDomainFailDetails(DomainVerificationAddDomainFailDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_verification_add_domain_success_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainVerificationAddDomainSuccessDetails(DomainVerificationAddDomainSuccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("domain_verification_remove_domain_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.domainVerificationRemoveDomainDetails(DomainVerificationRemoveDomainDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("enabled_domain_invites_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.enabledDomainInvitesDetails(EnabledDomainInvitesDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("create_folder_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.createFolderDetails(CreateFolderDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_add_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileAddDetails(FileAddDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_copy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileCopyDetails(FileCopyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_delete_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileDeleteDetails(FileDeleteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_download_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileDownloadDetails(FileDownloadDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_edit_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileEditDetails(FileEditDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_get_copy_reference_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileGetCopyReferenceDetails(FileGetCopyReferenceDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_move_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileMoveDetails(FileMoveDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_permanently_delete_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.filePermanentlyDeleteDetails(FilePermanentlyDeleteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_preview_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.filePreviewDetails(FilePreviewDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_rename_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRenameDetails(FileRenameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_restore_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRestoreDetails(FileRestoreDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_revert_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRevertDetails(FileRevertDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_rollback_changes_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRollbackChangesDetails(FileRollbackChangesDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_save_copy_reference_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileSaveCopyReferenceDetails(FileSaveCopyReferenceDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_add_deadline_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestAddDeadlineDetails(FileRequestAddDeadlineDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_change_folder_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestChangeFolderDetails(FileRequestChangeFolderDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_change_title_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestChangeTitleDetails(FileRequestChangeTitleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_close_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestCloseDetails(FileRequestCloseDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestCreateDetails(FileRequestCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_receive_file_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestReceiveFileDetails(FileRequestReceiveFileDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_remove_deadline_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestRemoveDeadlineDetails(FileRequestRemoveDeadlineDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_request_send_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestSendDetails(FileRequestSendDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_add_external_id_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupAddExternalIdDetails(GroupAddExternalIdDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_add_member_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupAddMemberDetails(GroupAddMemberDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_change_external_id_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupChangeExternalIdDetails(GroupChangeExternalIdDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_change_management_type_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupChangeManagementTypeDetails(GroupChangeManagementTypeDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_change_member_role_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupChangeMemberRoleDetails(GroupChangeMemberRoleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupCreateDetails(GroupCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_delete_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupDeleteDetails(GroupDeleteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_moved_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupMovedDetails(GroupMovedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_remove_external_id_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupRemoveExternalIdDetails(GroupRemoveExternalIdDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_remove_member_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupRemoveMemberDetails(GroupRemoveMemberDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_rename_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupRenameDetails(GroupRenameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_login_success_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmLoginSuccessDetails(EmmLoginSuccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("logout_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.logoutDetails(LogoutDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("password_login_fail_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.passwordLoginFailDetails(PasswordLoginFailDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("password_login_success_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.passwordLoginSuccessDetails(PasswordLoginSuccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("reseller_support_session_end_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.resellerSupportSessionEndDetails(ResellerSupportSessionEndDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("reseller_support_session_start_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.resellerSupportSessionStartDetails(ResellerSupportSessionStartDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sign_in_as_session_end_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.signInAsSessionEndDetails(SignInAsSessionEndDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sign_in_as_session_start_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.signInAsSessionStartDetails(SignInAsSessionStartDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_login_fail_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoLoginFailDetails(SsoLoginFailDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_add_name_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberAddNameDetails(MemberAddNameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_change_admin_role_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberChangeAdminRoleDetails(MemberChangeAdminRoleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_change_email_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberChangeEmailDetails(MemberChangeEmailDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_change_name_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberChangeNameDetails(MemberChangeNameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_change_status_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberChangeStatusDetails(MemberChangeStatusDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_suggest_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberSuggestDetails(MemberSuggestDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_add_member_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentAddMemberDetails(PaperContentAddMemberDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_add_to_folder_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentAddToFolderDetails(PaperContentAddToFolderDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_archive_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentArchiveDetails(PaperContentArchiveDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentCreateDetails(PaperContentCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_permanently_delete_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentPermanentlyDeleteDetails(PaperContentPermanentlyDeleteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_remove_from_folder_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentRemoveFromFolderDetails(PaperContentRemoveFromFolderDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_remove_member_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentRemoveMemberDetails(PaperContentRemoveMemberDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_rename_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentRenameDetails(PaperContentRenameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_content_restore_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperContentRestoreDetails(PaperContentRestoreDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_add_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocAddCommentDetails(PaperDocAddCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_change_member_role_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocChangeMemberRoleDetails(PaperDocChangeMemberRoleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_change_sharing_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocChangeSharingPolicyDetails(PaperDocChangeSharingPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_change_subscription_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocChangeSubscriptionDetails(PaperDocChangeSubscriptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_deleted_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocDeletedDetails(PaperDocDeletedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_delete_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocDeleteCommentDetails(PaperDocDeleteCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_download_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocDownloadDetails(PaperDocDownloadDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_edit_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocEditDetails(PaperDocEditDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_edit_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocEditCommentDetails(PaperDocEditCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_followed_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocFollowedDetails(PaperDocFollowedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_mention_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocMentionDetails(PaperDocMentionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_request_access_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocRequestAccessDetails(PaperDocRequestAccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_resolve_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocResolveCommentDetails(PaperDocResolveCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_revert_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocRevertDetails(PaperDocRevertDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_slack_share_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocSlackShareDetails(PaperDocSlackShareDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_team_invite_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocTeamInviteDetails(PaperDocTeamInviteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_trashed_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocTrashedDetails(PaperDocTrashedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_unresolve_comment_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocUnresolveCommentDetails(PaperDocUnresolveCommentDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_untrashed_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocUntrashedDetails(PaperDocUntrashedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_doc_view_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperDocViewDetails(PaperDocViewDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_folder_change_subscription_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperFolderChangeSubscriptionDetails(PaperFolderChangeSubscriptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_folder_deleted_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperFolderDeletedDetails(PaperFolderDeletedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_folder_followed_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperFolderFollowedDetails(PaperFolderFollowedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_folder_team_invite_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperFolderTeamInviteDetails(PaperFolderTeamInviteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("password_change_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.passwordChangeDetails(PasswordChangeDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("password_reset_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.passwordResetDetails(PasswordResetDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("password_reset_all_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.passwordResetAllDetails(PasswordResetAllDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_create_exceptions_report_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmCreateExceptionsReportDetails(EmmCreateExceptionsReportDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_create_usage_report_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmCreateUsageReportDetails(EmmCreateUsageReportDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("smart_sync_create_admin_privilege_report_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.smartSyncCreateAdminPrivilegeReportDetails(SmartSyncCreateAdminPrivilegeReportDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_activity_create_report_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamActivityCreateReportDetails(TeamActivityCreateReportDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("collection_share_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.collectionShareDetails(CollectionShareDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("note_acl_invite_only_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.noteAclInviteOnlyDetails(NoteAclInviteOnlyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("note_acl_link_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.noteAclLinkDetails(NoteAclLinkDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("note_acl_team_link_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.noteAclTeamLinkDetails(NoteAclTeamLinkDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("note_shared_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.noteSharedDetails(NoteSharedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("note_share_receive_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.noteShareReceiveDetails(NoteShareReceiveDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("open_note_shared_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.openNoteSharedDetails(OpenNoteSharedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_add_group_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfAddGroupDetails(SfAddGroupDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_allow_non_members_to_view_shared_links_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfAllowNonMembersToViewSharedLinksDetails(SfAllowNonMembersToViewSharedLinksDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_invite_group_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfInviteGroupDetails(SfInviteGroupDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_nest_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfNestDetails(SfNestDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_decline_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamDeclineDetails(SfTeamDeclineDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_grant_access_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamGrantAccessDetails(SfTeamGrantAccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_invite_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamInviteDetails(SfTeamInviteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_invite_change_role_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamInviteChangeRoleDetails(SfTeamInviteChangeRoleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_join_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamJoinDetails(SfTeamJoinDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_join_from_oob_link_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamJoinFromOobLinkDetails(SfTeamJoinFromOobLinkDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sf_team_uninvite_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sfTeamUninviteDetails(SfTeamUninviteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_add_invitees_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentAddInviteesDetails(SharedContentAddInviteesDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_add_link_expiry_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentAddLinkExpiryDetails(SharedContentAddLinkExpiryDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_add_link_password_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentAddLinkPasswordDetails(SharedContentAddLinkPasswordDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_add_member_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentAddMemberDetails(SharedContentAddMemberDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_downloads_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeDownloadsPolicyDetails(SharedContentChangeDownloadsPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_invitee_role_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeInviteeRoleDetails(SharedContentChangeInviteeRoleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_link_audience_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeLinkAudienceDetails(SharedContentChangeLinkAudienceDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_link_expiry_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeLinkExpiryDetails(SharedContentChangeLinkExpiryDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_link_password_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeLinkPasswordDetails(SharedContentChangeLinkPasswordDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_member_role_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeMemberRoleDetails(SharedContentChangeMemberRoleDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_change_viewer_info_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentChangeViewerInfoPolicyDetails(SharedContentChangeViewerInfoPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_claim_invitation_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentClaimInvitationDetails(SharedContentClaimInvitationDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_copy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentCopyDetails(SharedContentCopyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_download_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentDownloadDetails(SharedContentDownloadDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_relinquish_membership_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentRelinquishMembershipDetails(SharedContentRelinquishMembershipDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_remove_invitee_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentRemoveInviteeDetails(SharedContentRemoveInviteeDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_remove_link_expiry_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentRemoveLinkExpiryDetails(SharedContentRemoveLinkExpiryDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_remove_link_password_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentRemoveLinkPasswordDetails(SharedContentRemoveLinkPasswordDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_remove_member_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentRemoveMemberDetails(SharedContentRemoveMemberDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_request_access_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentRequestAccessDetails(SharedContentRequestAccessDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_unshare_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentUnshareDetails(SharedContentUnshareDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_content_view_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedContentViewDetails(SharedContentViewDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_change_confidentiality_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderChangeConfidentialityDetails(SharedFolderChangeConfidentialityDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_change_link_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderChangeLinkPolicyDetails(SharedFolderChangeLinkPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_change_member_management_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderChangeMemberManagementPolicyDetails(SharedFolderChangeMemberManagementPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_change_member_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderChangeMemberPolicyDetails(SharedFolderChangeMemberPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderCreateDetails(SharedFolderCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_mount_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderMountDetails(SharedFolderMountDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_transfer_ownership_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderTransferOwnershipDetails(SharedFolderTransferOwnershipDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_folder_unmount_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedFolderUnmountDetails(SharedFolderUnmountDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shared_note_opened_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharedNoteOpenedDetails(SharedNoteOpenedDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_app_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelAppCreateDetails(ShmodelAppCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelCreateDetails(ShmodelCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_disable_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelDisableDetails(ShmodelDisableDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_fb_share_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelFbShareDetails(ShmodelFbShareDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_group_share_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelGroupShareDetails(ShmodelGroupShareDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_remove_expiration_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelRemoveExpirationDetails(ShmodelRemoveExpirationDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_set_expiration_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelSetExpirationDetails(ShmodelSetExpirationDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_team_copy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelTeamCopyDetails(ShmodelTeamCopyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_team_download_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelTeamDownloadDetails(ShmodelTeamDownloadDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_team_share_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelTeamShareDetails(ShmodelTeamShareDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_team_view_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelTeamViewDetails(ShmodelTeamViewDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_visibility_password_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelVisibilityPasswordDetails(ShmodelVisibilityPasswordDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_visibility_public_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelVisibilityPublicDetails(ShmodelVisibilityPublicDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("shmodel_visibility_team_only_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.shmodelVisibilityTeamOnlyDetails(ShmodelVisibilityTeamOnlyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_add_cert_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoAddCertDetails(SsoAddCertDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_add_login_url_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoAddLoginUrlDetails(SsoAddLoginUrlDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_add_logout_url_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoAddLogoutUrlDetails(SsoAddLogoutUrlDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_change_cert_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoChangeCertDetails(SsoChangeCertDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_change_login_url_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoChangeLoginUrlDetails(SsoChangeLoginUrlDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_change_logout_url_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoChangeLogoutUrlDetails(SsoChangeLogoutUrlDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_change_saml_identity_mode_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoChangeSamlIdentityModeDetails(SsoChangeSamlIdentityModeDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_remove_cert_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoRemoveCertDetails(SsoRemoveCertDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_remove_login_url_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoRemoveLoginUrlDetails(SsoRemoveLoginUrlDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_remove_logout_url_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoRemoveLogoutUrlDetails(SsoRemoveLogoutUrlDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_folder_change_status_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamFolderChangeStatusDetails(TeamFolderChangeStatusDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_folder_create_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamFolderCreateDetails(TeamFolderCreateDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_folder_downgrade_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamFolderDowngradeDetails(TeamFolderDowngradeDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_folder_permanently_delete_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamFolderPermanentlyDeleteDetails(TeamFolderPermanentlyDeleteDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_folder_rename_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamFolderRenameDetails(TeamFolderRenameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("account_capture_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.accountCaptureChangePolicyDetails(AccountCaptureChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("allow_download_disabled_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.allowDownloadDisabledDetails(AllowDownloadDisabledDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("allow_download_enabled_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.allowDownloadEnabledDetails(AllowDownloadEnabledDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("data_placement_restriction_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.dataPlacementRestrictionChangePolicyDetails(DataPlacementRestrictionChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("data_placement_restriction_satisfy_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.dataPlacementRestrictionSatisfyPolicyDetails(DataPlacementRestrictionSatisfyPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_approvals_change_desktop_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceApprovalsChangeDesktopPolicyDetails(DeviceApprovalsChangeDesktopPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_approvals_change_mobile_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceApprovalsChangeMobilePolicyDetails(DeviceApprovalsChangeMobilePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_approvals_change_overage_action_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceApprovalsChangeOverageActionDetails(DeviceApprovalsChangeOverageActionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("device_approvals_change_unlink_action_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.deviceApprovalsChangeUnlinkActionDetails(DeviceApprovalsChangeUnlinkActionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_add_exception_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmAddExceptionDetails(EmmAddExceptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmChangePolicyDetails(EmmChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("emm_remove_exception_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.emmRemoveExceptionDetails(EmmRemoveExceptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("extended_version_history_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.extendedVersionHistoryChangePolicyDetails(ExtendedVersionHistoryChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_comments_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileCommentsChangePolicyDetails(FileCommentsChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_requests_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestsChangePolicyDetails(FileRequestsChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_requests_emails_enabled_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestsEmailsEnabledDetails(FileRequestsEmailsEnabledDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("file_requests_emails_restricted_to_team_only_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.fileRequestsEmailsRestrictedToTeamOnlyDetails(FileRequestsEmailsRestrictedToTeamOnlyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("google_sso_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.googleSsoChangePolicyDetails(GoogleSsoChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("group_user_management_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.groupUserManagementChangePolicyDetails(GroupUserManagementChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_requests_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberRequestsChangePolicyDetails(MemberRequestsChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_space_limits_add_exception_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberSpaceLimitsAddExceptionDetails(MemberSpaceLimitsAddExceptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_space_limits_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberSpaceLimitsChangePolicyDetails(MemberSpaceLimitsChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_space_limits_remove_exception_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberSpaceLimitsRemoveExceptionDetails(MemberSpaceLimitsRemoveExceptionDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_suggestions_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.memberSuggestionsChangePolicyDetails(MemberSuggestionsChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("microsoft_office_addin_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.microsoftOfficeAddinChangePolicyDetails(MicrosoftOfficeAddinChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("network_control_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.networkControlChangePolicyDetails(NetworkControlChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_change_deployment_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperChangeDeploymentPolicyDetails(PaperChangeDeploymentPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_change_member_link_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperChangeMemberLinkPolicyDetails(PaperChangeMemberLinkPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_change_member_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperChangeMemberPolicyDetails(PaperChangeMemberPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.paperChangePolicyDetails(PaperChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("permanent_delete_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.permanentDeleteChangePolicyDetails(PermanentDeleteChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sharing_change_folder_join_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharingChangeFolderJoinPolicyDetails(SharingChangeFolderJoinPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sharing_change_link_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharingChangeLinkPolicyDetails(SharingChangeLinkPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sharing_change_member_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.sharingChangeMemberPolicyDetails(SharingChangeMemberPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("smart_sync_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.smartSyncChangePolicyDetails(SmartSyncChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("smart_sync_not_opt_out_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.smartSyncNotOptOutDetails(SmartSyncNotOptOutDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("smart_sync_opt_out_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.smartSyncOptOutDetails(SmartSyncOptOutDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("sso_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.ssoChangePolicyDetails(SsoChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaChangePolicyDetails(TfaChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("two_account_change_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.twoAccountChangePolicyDetails(TwoAccountChangePolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("web_sessions_change_fixed_length_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.webSessionsChangeFixedLengthPolicyDetails(WebSessionsChangeFixedLengthPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("web_sessions_change_idle_length_policy_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.webSessionsChangeIdleLengthPolicyDetails(WebSessionsChangeIdleLengthPolicyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_profile_add_logo_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamProfileAddLogoDetails(TeamProfileAddLogoDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_profile_change_default_language_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamProfileChangeDefaultLanguageDetails(TeamProfileChangeDefaultLanguageDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_profile_change_logo_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamProfileChangeLogoDetails(TeamProfileChangeLogoDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_profile_change_name_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamProfileChangeNameDetails(TeamProfileChangeNameDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team_profile_remove_logo_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.teamProfileRemoveLogoDetails(TeamProfileRemoveLogoDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_add_backup_phone_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaAddBackupPhoneDetails(TfaAddBackupPhoneDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_add_security_key_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaAddSecurityKeyDetails(TfaAddSecurityKeyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_change_backup_phone_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaChangeBackupPhoneDetails(TfaChangeBackupPhoneDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_change_status_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaChangeStatusDetails(TfaChangeStatusDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_remove_backup_phone_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaRemoveBackupPhoneDetails(TfaRemoveBackupPhoneDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_remove_security_key_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaRemoveSecurityKeyDetails(TfaRemoveSecurityKeyDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("tfa_reset_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.tfaResetDetails(TfaResetDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("missing_details".equals(tag)) {
                eventDetailsMissingDetails = EventDetails.missingDetails(MissingDetails.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                eventDetailsMissingDetails = EventDetails.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return eventDetailsMissingDetails;
        }
    }
}
