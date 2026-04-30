package com.dropbox.core.v2.teamlog;

import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import org.joda.time.DateTimeConstants;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public enum EventType {
    MEMBER_CHANGE_MEMBERSHIP_TYPE,
    MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS,
    MEMBER_SPACE_LIMITS_CHANGE_STATUS,
    MEMBER_TRANSFER_ACCOUNT_CONTENTS,
    PAPER_ADMIN_EXPORT_START,
    PAPER_ENABLED_USERS_GROUP_ADDITION,
    PAPER_ENABLED_USERS_GROUP_REMOVAL,
    PAPER_EXTERNAL_VIEW_ALLOW,
    PAPER_EXTERNAL_VIEW_DEFAULT_TEAM,
    PAPER_EXTERNAL_VIEW_FORBID,
    SF_EXTERNAL_INVITE_WARN,
    TEAM_MERGE_FROM,
    TEAM_MERGE_TO,
    APP_LINK_TEAM,
    APP_LINK_USER,
    APP_UNLINK_TEAM,
    APP_UNLINK_USER,
    FILE_ADD_COMMENT,
    FILE_CHANGE_COMMENT_SUBSCRIPTION,
    FILE_DELETE_COMMENT,
    FILE_LIKE_COMMENT,
    FILE_RESOLVE_COMMENT,
    FILE_UNLIKE_COMMENT,
    FILE_UNRESOLVE_COMMENT,
    DEVICE_CHANGE_IP_DESKTOP,
    DEVICE_CHANGE_IP_MOBILE,
    DEVICE_CHANGE_IP_WEB,
    DEVICE_DELETE_ON_UNLINK_FAIL,
    DEVICE_DELETE_ON_UNLINK_SUCCESS,
    DEVICE_LINK_FAIL,
    DEVICE_LINK_SUCCESS,
    DEVICE_MANAGEMENT_DISABLED,
    DEVICE_MANAGEMENT_ENABLED,
    DEVICE_UNLINK,
    EMM_REFRESH_AUTH_TOKEN,
    ACCOUNT_CAPTURE_CHANGE_AVAILABILITY,
    ACCOUNT_CAPTURE_MIGRATE_ACCOUNT,
    ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT,
    DISABLED_DOMAIN_INVITES,
    DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM,
    DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM,
    DOMAIN_INVITES_EMAIL_EXISTING_USERS,
    DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM,
    DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO,
    DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES,
    DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL,
    DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS,
    DOMAIN_VERIFICATION_REMOVE_DOMAIN,
    ENABLED_DOMAIN_INVITES,
    CREATE_FOLDER,
    FILE_ADD,
    FILE_COPY,
    FILE_DELETE,
    FILE_DOWNLOAD,
    FILE_EDIT,
    FILE_GET_COPY_REFERENCE,
    FILE_MOVE,
    FILE_PERMANENTLY_DELETE,
    FILE_PREVIEW,
    FILE_RENAME,
    FILE_RESTORE,
    FILE_REVERT,
    FILE_ROLLBACK_CHANGES,
    FILE_SAVE_COPY_REFERENCE,
    FILE_REQUEST_ADD_DEADLINE,
    FILE_REQUEST_CHANGE_FOLDER,
    FILE_REQUEST_CHANGE_TITLE,
    FILE_REQUEST_CLOSE,
    FILE_REQUEST_CREATE,
    FILE_REQUEST_RECEIVE_FILE,
    FILE_REQUEST_REMOVE_DEADLINE,
    FILE_REQUEST_SEND,
    GROUP_ADD_EXTERNAL_ID,
    GROUP_ADD_MEMBER,
    GROUP_CHANGE_EXTERNAL_ID,
    GROUP_CHANGE_MANAGEMENT_TYPE,
    GROUP_CHANGE_MEMBER_ROLE,
    GROUP_CREATE,
    GROUP_DELETE,
    GROUP_MOVED,
    GROUP_REMOVE_EXTERNAL_ID,
    GROUP_REMOVE_MEMBER,
    GROUP_RENAME,
    EMM_LOGIN_SUCCESS,
    LOGOUT,
    PASSWORD_LOGIN_FAIL,
    PASSWORD_LOGIN_SUCCESS,
    RESELLER_SUPPORT_SESSION_END,
    RESELLER_SUPPORT_SESSION_START,
    SIGN_IN_AS_SESSION_END,
    SIGN_IN_AS_SESSION_START,
    SSO_LOGIN_FAIL,
    MEMBER_ADD_NAME,
    MEMBER_CHANGE_ADMIN_ROLE,
    MEMBER_CHANGE_EMAIL,
    MEMBER_CHANGE_NAME,
    MEMBER_CHANGE_STATUS,
    MEMBER_SUGGEST,
    PAPER_CONTENT_ADD_MEMBER,
    PAPER_CONTENT_ADD_TO_FOLDER,
    PAPER_CONTENT_ARCHIVE,
    PAPER_CONTENT_CREATE,
    PAPER_CONTENT_PERMANENTLY_DELETE,
    PAPER_CONTENT_REMOVE_FROM_FOLDER,
    PAPER_CONTENT_REMOVE_MEMBER,
    PAPER_CONTENT_RENAME,
    PAPER_CONTENT_RESTORE,
    PAPER_DOC_ADD_COMMENT,
    PAPER_DOC_CHANGE_MEMBER_ROLE,
    PAPER_DOC_CHANGE_SHARING_POLICY,
    PAPER_DOC_CHANGE_SUBSCRIPTION,
    PAPER_DOC_DELETED,
    PAPER_DOC_DELETE_COMMENT,
    PAPER_DOC_DOWNLOAD,
    PAPER_DOC_EDIT,
    PAPER_DOC_EDIT_COMMENT,
    PAPER_DOC_FOLLOWED,
    PAPER_DOC_MENTION,
    PAPER_DOC_REQUEST_ACCESS,
    PAPER_DOC_RESOLVE_COMMENT,
    PAPER_DOC_REVERT,
    PAPER_DOC_SLACK_SHARE,
    PAPER_DOC_TEAM_INVITE,
    PAPER_DOC_TRASHED,
    PAPER_DOC_UNRESOLVE_COMMENT,
    PAPER_DOC_UNTRASHED,
    PAPER_DOC_VIEW,
    PAPER_FOLDER_CHANGE_SUBSCRIPTION,
    PAPER_FOLDER_DELETED,
    PAPER_FOLDER_FOLLOWED,
    PAPER_FOLDER_TEAM_INVITE,
    PASSWORD_CHANGE,
    PASSWORD_RESET,
    PASSWORD_RESET_ALL,
    EMM_CREATE_EXCEPTIONS_REPORT,
    EMM_CREATE_USAGE_REPORT,
    SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT,
    TEAM_ACTIVITY_CREATE_REPORT,
    COLLECTION_SHARE,
    NOTE_ACL_INVITE_ONLY,
    NOTE_ACL_LINK,
    NOTE_ACL_TEAM_LINK,
    NOTE_SHARED,
    NOTE_SHARE_RECEIVE,
    OPEN_NOTE_SHARED,
    SF_ADD_GROUP,
    SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS,
    SF_INVITE_GROUP,
    SF_NEST,
    SF_TEAM_DECLINE,
    SF_TEAM_GRANT_ACCESS,
    SF_TEAM_INVITE,
    SF_TEAM_INVITE_CHANGE_ROLE,
    SF_TEAM_JOIN,
    SF_TEAM_JOIN_FROM_OOB_LINK,
    SF_TEAM_UNINVITE,
    SHARED_CONTENT_ADD_INVITEES,
    SHARED_CONTENT_ADD_LINK_EXPIRY,
    SHARED_CONTENT_ADD_LINK_PASSWORD,
    SHARED_CONTENT_ADD_MEMBER,
    SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY,
    SHARED_CONTENT_CHANGE_INVITEE_ROLE,
    SHARED_CONTENT_CHANGE_LINK_AUDIENCE,
    SHARED_CONTENT_CHANGE_LINK_EXPIRY,
    SHARED_CONTENT_CHANGE_LINK_PASSWORD,
    SHARED_CONTENT_CHANGE_MEMBER_ROLE,
    SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY,
    SHARED_CONTENT_CLAIM_INVITATION,
    SHARED_CONTENT_COPY,
    SHARED_CONTENT_DOWNLOAD,
    SHARED_CONTENT_RELINQUISH_MEMBERSHIP,
    SHARED_CONTENT_REMOVE_INVITEE,
    SHARED_CONTENT_REMOVE_LINK_EXPIRY,
    SHARED_CONTENT_REMOVE_LINK_PASSWORD,
    SHARED_CONTENT_REMOVE_MEMBER,
    SHARED_CONTENT_REQUEST_ACCESS,
    SHARED_CONTENT_UNSHARE,
    SHARED_CONTENT_VIEW,
    SHARED_FOLDER_CHANGE_CONFIDENTIALITY,
    SHARED_FOLDER_CHANGE_LINK_POLICY,
    SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY,
    SHARED_FOLDER_CHANGE_MEMBER_POLICY,
    SHARED_FOLDER_CREATE,
    SHARED_FOLDER_MOUNT,
    SHARED_FOLDER_TRANSFER_OWNERSHIP,
    SHARED_FOLDER_UNMOUNT,
    SHARED_NOTE_OPENED,
    SHMODEL_APP_CREATE,
    SHMODEL_CREATE,
    SHMODEL_DISABLE,
    SHMODEL_FB_SHARE,
    SHMODEL_GROUP_SHARE,
    SHMODEL_REMOVE_EXPIRATION,
    SHMODEL_SET_EXPIRATION,
    SHMODEL_TEAM_COPY,
    SHMODEL_TEAM_DOWNLOAD,
    SHMODEL_TEAM_SHARE,
    SHMODEL_TEAM_VIEW,
    SHMODEL_VISIBILITY_PASSWORD,
    SHMODEL_VISIBILITY_PUBLIC,
    SHMODEL_VISIBILITY_TEAM_ONLY,
    SSO_ADD_CERT,
    SSO_ADD_LOGIN_URL,
    SSO_ADD_LOGOUT_URL,
    SSO_CHANGE_CERT,
    SSO_CHANGE_LOGIN_URL,
    SSO_CHANGE_LOGOUT_URL,
    SSO_CHANGE_SAML_IDENTITY_MODE,
    SSO_REMOVE_CERT,
    SSO_REMOVE_LOGIN_URL,
    SSO_REMOVE_LOGOUT_URL,
    TEAM_FOLDER_CHANGE_STATUS,
    TEAM_FOLDER_CREATE,
    TEAM_FOLDER_DOWNGRADE,
    TEAM_FOLDER_PERMANENTLY_DELETE,
    TEAM_FOLDER_RENAME,
    ACCOUNT_CAPTURE_CHANGE_POLICY,
    ALLOW_DOWNLOAD_DISABLED,
    ALLOW_DOWNLOAD_ENABLED,
    DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY,
    DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY,
    DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY,
    DEVICE_APPROVALS_CHANGE_MOBILE_POLICY,
    DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION,
    DEVICE_APPROVALS_CHANGE_UNLINK_ACTION,
    EMM_ADD_EXCEPTION,
    EMM_CHANGE_POLICY,
    EMM_REMOVE_EXCEPTION,
    EXTENDED_VERSION_HISTORY_CHANGE_POLICY,
    FILE_COMMENTS_CHANGE_POLICY,
    FILE_REQUESTS_CHANGE_POLICY,
    FILE_REQUESTS_EMAILS_ENABLED,
    FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY,
    GOOGLE_SSO_CHANGE_POLICY,
    GROUP_USER_MANAGEMENT_CHANGE_POLICY,
    MEMBER_REQUESTS_CHANGE_POLICY,
    MEMBER_SPACE_LIMITS_ADD_EXCEPTION,
    MEMBER_SPACE_LIMITS_CHANGE_POLICY,
    MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION,
    MEMBER_SUGGESTIONS_CHANGE_POLICY,
    MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY,
    NETWORK_CONTROL_CHANGE_POLICY,
    PAPER_CHANGE_DEPLOYMENT_POLICY,
    PAPER_CHANGE_MEMBER_LINK_POLICY,
    PAPER_CHANGE_MEMBER_POLICY,
    PAPER_CHANGE_POLICY,
    PERMANENT_DELETE_CHANGE_POLICY,
    SHARING_CHANGE_FOLDER_JOIN_POLICY,
    SHARING_CHANGE_LINK_POLICY,
    SHARING_CHANGE_MEMBER_POLICY,
    SMART_SYNC_CHANGE_POLICY,
    SMART_SYNC_NOT_OPT_OUT,
    SMART_SYNC_OPT_OUT,
    SSO_CHANGE_POLICY,
    TFA_CHANGE_POLICY,
    TWO_ACCOUNT_CHANGE_POLICY,
    WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY,
    WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY,
    TEAM_PROFILE_ADD_LOGO,
    TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE,
    TEAM_PROFILE_CHANGE_LOGO,
    TEAM_PROFILE_CHANGE_NAME,
    TEAM_PROFILE_REMOVE_LOGO,
    TFA_ADD_BACKUP_PHONE,
    TFA_ADD_SECURITY_KEY,
    TFA_CHANGE_BACKUP_PHONE,
    TFA_CHANGE_STATUS,
    TFA_REMOVE_BACKUP_PHONE,
    TFA_REMOVE_SECURITY_KEY,
    TFA_RESET,
    OTHER;

    class Serializer extends UnionSerializer<EventType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(EventType eventType, g gVar) throws IOException {
            switch (AnonymousClass1.$SwitchMap$com$dropbox$core$v2$teamlog$EventType[eventType.ordinal()]) {
                case 1:
                    gVar.b("member_change_membership_type");
                    break;
                case 2:
                    gVar.b("member_permanently_delete_account_contents");
                    break;
                case 3:
                    gVar.b("member_space_limits_change_status");
                    break;
                case 4:
                    gVar.b("member_transfer_account_contents");
                    break;
                case 5:
                    gVar.b("paper_admin_export_start");
                    break;
                case 6:
                    gVar.b("paper_enabled_users_group_addition");
                    break;
                case 7:
                    gVar.b("paper_enabled_users_group_removal");
                    break;
                case 8:
                    gVar.b("paper_external_view_allow");
                    break;
                case 9:
                    gVar.b("paper_external_view_default_team");
                    break;
                case 10:
                    gVar.b("paper_external_view_forbid");
                    break;
                case 11:
                    gVar.b("sf_external_invite_warn");
                    break;
                case 12:
                    gVar.b("team_merge_from");
                    break;
                case 13:
                    gVar.b("team_merge_to");
                    break;
                case 14:
                    gVar.b("app_link_team");
                    break;
                case 15:
                    gVar.b("app_link_user");
                    break;
                case 16:
                    gVar.b("app_unlink_team");
                    break;
                case 17:
                    gVar.b("app_unlink_user");
                    break;
                case 18:
                    gVar.b("file_add_comment");
                    break;
                case 19:
                    gVar.b("file_change_comment_subscription");
                    break;
                case 20:
                    gVar.b("file_delete_comment");
                    break;
                case 21:
                    gVar.b("file_like_comment");
                    break;
                case 22:
                    gVar.b("file_resolve_comment");
                    break;
                case 23:
                    gVar.b("file_unlike_comment");
                    break;
                case 24:
                    gVar.b("file_unresolve_comment");
                    break;
                case 25:
                    gVar.b("device_change_ip_desktop");
                    break;
                case 26:
                    gVar.b("device_change_ip_mobile");
                    break;
                case 27:
                    gVar.b("device_change_ip_web");
                    break;
                case 28:
                    gVar.b("device_delete_on_unlink_fail");
                    break;
                case 29:
                    gVar.b("device_delete_on_unlink_success");
                    break;
                case 30:
                    gVar.b("device_link_fail");
                    break;
                case 31:
                    gVar.b("device_link_success");
                    break;
                case 32:
                    gVar.b("device_management_disabled");
                    break;
                case 33:
                    gVar.b("device_management_enabled");
                    break;
                case 34:
                    gVar.b("device_unlink");
                    break;
                case 35:
                    gVar.b("emm_refresh_auth_token");
                    break;
                case 36:
                    gVar.b("account_capture_change_availability");
                    break;
                case 37:
                    gVar.b("account_capture_migrate_account");
                    break;
                case 38:
                    gVar.b("account_capture_relinquish_account");
                    break;
                case 39:
                    gVar.b("disabled_domain_invites");
                    break;
                case 40:
                    gVar.b("domain_invites_approve_request_to_join_team");
                    break;
                case 41:
                    gVar.b("domain_invites_decline_request_to_join_team");
                    break;
                case 42:
                    gVar.b("domain_invites_email_existing_users");
                    break;
                case 43:
                    gVar.b("domain_invites_request_to_join_team");
                    break;
                case 44:
                    gVar.b("domain_invites_set_invite_new_user_pref_to_no");
                    break;
                case 45:
                    gVar.b("domain_invites_set_invite_new_user_pref_to_yes");
                    break;
                case 46:
                    gVar.b("domain_verification_add_domain_fail");
                    break;
                case 47:
                    gVar.b("domain_verification_add_domain_success");
                    break;
                case 48:
                    gVar.b("domain_verification_remove_domain");
                    break;
                case 49:
                    gVar.b("enabled_domain_invites");
                    break;
                case 50:
                    gVar.b("create_folder");
                    break;
                case 51:
                    gVar.b("file_add");
                    break;
                case 52:
                    gVar.b("file_copy");
                    break;
                case 53:
                    gVar.b("file_delete");
                    break;
                case 54:
                    gVar.b("file_download");
                    break;
                case 55:
                    gVar.b("file_edit");
                    break;
                case 56:
                    gVar.b("file_get_copy_reference");
                    break;
                case 57:
                    gVar.b("file_move");
                    break;
                case 58:
                    gVar.b("file_permanently_delete");
                    break;
                case 59:
                    gVar.b("file_preview");
                    break;
                case 60:
                    gVar.b("file_rename");
                    break;
                case 61:
                    gVar.b("file_restore");
                    break;
                case 62:
                    gVar.b("file_revert");
                    break;
                case 63:
                    gVar.b("file_rollback_changes");
                    break;
                case 64:
                    gVar.b("file_save_copy_reference");
                    break;
                case 65:
                    gVar.b("file_request_add_deadline");
                    break;
                case 66:
                    gVar.b("file_request_change_folder");
                    break;
                case 67:
                    gVar.b("file_request_change_title");
                    break;
                case 68:
                    gVar.b("file_request_close");
                    break;
                case 69:
                    gVar.b("file_request_create");
                    break;
                case 70:
                    gVar.b("file_request_receive_file");
                    break;
                case 71:
                    gVar.b("file_request_remove_deadline");
                    break;
                case 72:
                    gVar.b("file_request_send");
                    break;
                case 73:
                    gVar.b("group_add_external_id");
                    break;
                case 74:
                    gVar.b("group_add_member");
                    break;
                case 75:
                    gVar.b("group_change_external_id");
                    break;
                case 76:
                    gVar.b("group_change_management_type");
                    break;
                case 77:
                    gVar.b("group_change_member_role");
                    break;
                case 78:
                    gVar.b("group_create");
                    break;
                case 79:
                    gVar.b("group_delete");
                    break;
                case 80:
                    gVar.b("group_moved");
                    break;
                case 81:
                    gVar.b("group_remove_external_id");
                    break;
                case 82:
                    gVar.b("group_remove_member");
                    break;
                case 83:
                    gVar.b("group_rename");
                    break;
                case 84:
                    gVar.b("emm_login_success");
                    break;
                case 85:
                    gVar.b("logout");
                    break;
                case 86:
                    gVar.b("password_login_fail");
                    break;
                case 87:
                    gVar.b("password_login_success");
                    break;
                case 88:
                    gVar.b("reseller_support_session_end");
                    break;
                case 89:
                    gVar.b("reseller_support_session_start");
                    break;
                case 90:
                    gVar.b("sign_in_as_session_end");
                    break;
                case 91:
                    gVar.b("sign_in_as_session_start");
                    break;
                case 92:
                    gVar.b("sso_login_fail");
                    break;
                case 93:
                    gVar.b("member_add_name");
                    break;
                case 94:
                    gVar.b("member_change_admin_role");
                    break;
                case 95:
                    gVar.b("member_change_email");
                    break;
                case 96:
                    gVar.b("member_change_name");
                    break;
                case 97:
                    gVar.b("member_change_status");
                    break;
                case 98:
                    gVar.b("member_suggest");
                    break;
                case 99:
                    gVar.b("paper_content_add_member");
                    break;
                case 100:
                    gVar.b("paper_content_add_to_folder");
                    break;
                case 101:
                    gVar.b("paper_content_archive");
                    break;
                case 102:
                    gVar.b("paper_content_create");
                    break;
                case 103:
                    gVar.b("paper_content_permanently_delete");
                    break;
                case 104:
                    gVar.b("paper_content_remove_from_folder");
                    break;
                case 105:
                    gVar.b("paper_content_remove_member");
                    break;
                case 106:
                    gVar.b("paper_content_rename");
                    break;
                case 107:
                    gVar.b("paper_content_restore");
                    break;
                case 108:
                    gVar.b("paper_doc_add_comment");
                    break;
                case 109:
                    gVar.b("paper_doc_change_member_role");
                    break;
                case 110:
                    gVar.b("paper_doc_change_sharing_policy");
                    break;
                case 111:
                    gVar.b("paper_doc_change_subscription");
                    break;
                case 112:
                    gVar.b("paper_doc_deleted");
                    break;
                case 113:
                    gVar.b("paper_doc_delete_comment");
                    break;
                case 114:
                    gVar.b("paper_doc_download");
                    break;
                case 115:
                    gVar.b("paper_doc_edit");
                    break;
                case 116:
                    gVar.b("paper_doc_edit_comment");
                    break;
                case 117:
                    gVar.b("paper_doc_followed");
                    break;
                case 118:
                    gVar.b("paper_doc_mention");
                    break;
                case 119:
                    gVar.b("paper_doc_request_access");
                    break;
                case 120:
                    gVar.b("paper_doc_resolve_comment");
                    break;
                case 121:
                    gVar.b("paper_doc_revert");
                    break;
                case 122:
                    gVar.b("paper_doc_slack_share");
                    break;
                case 123:
                    gVar.b("paper_doc_team_invite");
                    break;
                case 124:
                    gVar.b("paper_doc_trashed");
                    break;
                case 125:
                    gVar.b("paper_doc_unresolve_comment");
                    break;
                case 126:
                    gVar.b("paper_doc_untrashed");
                    break;
                case 127:
                    gVar.b("paper_doc_view");
                    break;
                case 128:
                    gVar.b("paper_folder_change_subscription");
                    break;
                case 129:
                    gVar.b("paper_folder_deleted");
                    break;
                case 130:
                    gVar.b("paper_folder_followed");
                    break;
                case 131:
                    gVar.b("paper_folder_team_invite");
                    break;
                case 132:
                    gVar.b("password_change");
                    break;
                case 133:
                    gVar.b("password_reset");
                    break;
                case 134:
                    gVar.b("password_reset_all");
                    break;
                case 135:
                    gVar.b("emm_create_exceptions_report");
                    break;
                case 136:
                    gVar.b("emm_create_usage_report");
                    break;
                case 137:
                    gVar.b("smart_sync_create_admin_privilege_report");
                    break;
                case 138:
                    gVar.b("team_activity_create_report");
                    break;
                case 139:
                    gVar.b("collection_share");
                    break;
                case 140:
                    gVar.b("note_acl_invite_only");
                    break;
                case 141:
                    gVar.b("note_acl_link");
                    break;
                case 142:
                    gVar.b("note_acl_team_link");
                    break;
                case 143:
                    gVar.b("note_shared");
                    break;
                case 144:
                    gVar.b("note_share_receive");
                    break;
                case 145:
                    gVar.b("open_note_shared");
                    break;
                case 146:
                    gVar.b("sf_add_group");
                    break;
                case 147:
                    gVar.b("sf_allow_non_members_to_view_shared_links");
                    break;
                case 148:
                    gVar.b("sf_invite_group");
                    break;
                case 149:
                    gVar.b("sf_nest");
                    break;
                case 150:
                    gVar.b("sf_team_decline");
                    break;
                case 151:
                    gVar.b("sf_team_grant_access");
                    break;
                case 152:
                    gVar.b("sf_team_invite");
                    break;
                case 153:
                    gVar.b("sf_team_invite_change_role");
                    break;
                case 154:
                    gVar.b("sf_team_join");
                    break;
                case 155:
                    gVar.b("sf_team_join_from_oob_link");
                    break;
                case 156:
                    gVar.b("sf_team_uninvite");
                    break;
                case 157:
                    gVar.b("shared_content_add_invitees");
                    break;
                case 158:
                    gVar.b("shared_content_add_link_expiry");
                    break;
                case 159:
                    gVar.b("shared_content_add_link_password");
                    break;
                case 160:
                    gVar.b("shared_content_add_member");
                    break;
                case 161:
                    gVar.b("shared_content_change_downloads_policy");
                    break;
                case 162:
                    gVar.b("shared_content_change_invitee_role");
                    break;
                case 163:
                    gVar.b("shared_content_change_link_audience");
                    break;
                case 164:
                    gVar.b("shared_content_change_link_expiry");
                    break;
                case 165:
                    gVar.b("shared_content_change_link_password");
                    break;
                case 166:
                    gVar.b("shared_content_change_member_role");
                    break;
                case 167:
                    gVar.b("shared_content_change_viewer_info_policy");
                    break;
                case DateTimeConstants.HOURS_PER_WEEK /* 168 */:
                    gVar.b("shared_content_claim_invitation");
                    break;
                case 169:
                    gVar.b("shared_content_copy");
                    break;
                case 170:
                    gVar.b("shared_content_download");
                    break;
                case 171:
                    gVar.b("shared_content_relinquish_membership");
                    break;
                case 172:
                    gVar.b("shared_content_remove_invitee");
                    break;
                case 173:
                    gVar.b("shared_content_remove_link_expiry");
                    break;
                case 174:
                    gVar.b("shared_content_remove_link_password");
                    break;
                case 175:
                    gVar.b("shared_content_remove_member");
                    break;
                case 176:
                    gVar.b("shared_content_request_access");
                    break;
                case 177:
                    gVar.b("shared_content_unshare");
                    break;
                case 178:
                    gVar.b("shared_content_view");
                    break;
                case 179:
                    gVar.b("shared_folder_change_confidentiality");
                    break;
                case 180:
                    gVar.b("shared_folder_change_link_policy");
                    break;
                case 181:
                    gVar.b("shared_folder_change_member_management_policy");
                    break;
                case 182:
                    gVar.b("shared_folder_change_member_policy");
                    break;
                case 183:
                    gVar.b("shared_folder_create");
                    break;
                case 184:
                    gVar.b("shared_folder_mount");
                    break;
                case 185:
                    gVar.b("shared_folder_transfer_ownership");
                    break;
                case 186:
                    gVar.b("shared_folder_unmount");
                    break;
                case 187:
                    gVar.b("shared_note_opened");
                    break;
                case 188:
                    gVar.b("shmodel_app_create");
                    break;
                case 189:
                    gVar.b("shmodel_create");
                    break;
                case 190:
                    gVar.b("shmodel_disable");
                    break;
                case 191:
                    gVar.b("shmodel_fb_share");
                    break;
                case 192:
                    gVar.b("shmodel_group_share");
                    break;
                case 193:
                    gVar.b("shmodel_remove_expiration");
                    break;
                case 194:
                    gVar.b("shmodel_set_expiration");
                    break;
                case 195:
                    gVar.b("shmodel_team_copy");
                    break;
                case 196:
                    gVar.b("shmodel_team_download");
                    break;
                case 197:
                    gVar.b("shmodel_team_share");
                    break;
                case 198:
                    gVar.b("shmodel_team_view");
                    break;
                case 199:
                    gVar.b("shmodel_visibility_password");
                    break;
                case 200:
                    gVar.b("shmodel_visibility_public");
                    break;
                case 201:
                    gVar.b("shmodel_visibility_team_only");
                    break;
                case 202:
                    gVar.b("sso_add_cert");
                    break;
                case 203:
                    gVar.b("sso_add_login_url");
                    break;
                case 204:
                    gVar.b("sso_add_logout_url");
                    break;
                case 205:
                    gVar.b("sso_change_cert");
                    break;
                case 206:
                    gVar.b("sso_change_login_url");
                    break;
                case HttpStatus.ORDINAL_207_Multi_Status /* 207 */:
                    gVar.b("sso_change_logout_url");
                    break;
                case 208:
                    gVar.b("sso_change_saml_identity_mode");
                    break;
                case 209:
                    gVar.b("sso_remove_cert");
                    break;
                case 210:
                    gVar.b("sso_remove_login_url");
                    break;
                case 211:
                    gVar.b("sso_remove_logout_url");
                    break;
                case 212:
                    gVar.b("team_folder_change_status");
                    break;
                case 213:
                    gVar.b("team_folder_create");
                    break;
                case 214:
                    gVar.b("team_folder_downgrade");
                    break;
                case 215:
                    gVar.b("team_folder_permanently_delete");
                    break;
                case 216:
                    gVar.b("team_folder_rename");
                    break;
                case 217:
                    gVar.b("account_capture_change_policy");
                    break;
                case 218:
                    gVar.b("allow_download_disabled");
                    break;
                case 219:
                    gVar.b("allow_download_enabled");
                    break;
                case 220:
                    gVar.b("data_placement_restriction_change_policy");
                    break;
                case 221:
                    gVar.b("data_placement_restriction_satisfy_policy");
                    break;
                case 222:
                    gVar.b("device_approvals_change_desktop_policy");
                    break;
                case 223:
                    gVar.b("device_approvals_change_mobile_policy");
                    break;
                case 224:
                    gVar.b("device_approvals_change_overage_action");
                    break;
                case 225:
                    gVar.b("device_approvals_change_unlink_action");
                    break;
                case 226:
                    gVar.b("emm_add_exception");
                    break;
                case 227:
                    gVar.b("emm_change_policy");
                    break;
                case 228:
                    gVar.b("emm_remove_exception");
                    break;
                case 229:
                    gVar.b("extended_version_history_change_policy");
                    break;
                case 230:
                    gVar.b("file_comments_change_policy");
                    break;
                case 231:
                    gVar.b("file_requests_change_policy");
                    break;
                case 232:
                    gVar.b("file_requests_emails_enabled");
                    break;
                case 233:
                    gVar.b("file_requests_emails_restricted_to_team_only");
                    break;
                case 234:
                    gVar.b("google_sso_change_policy");
                    break;
                case 235:
                    gVar.b("group_user_management_change_policy");
                    break;
                case 236:
                    gVar.b("member_requests_change_policy");
                    break;
                case 237:
                    gVar.b("member_space_limits_add_exception");
                    break;
                case 238:
                    gVar.b("member_space_limits_change_policy");
                    break;
                case 239:
                    gVar.b("member_space_limits_remove_exception");
                    break;
                case 240:
                    gVar.b("member_suggestions_change_policy");
                    break;
                case 241:
                    gVar.b("microsoft_office_addin_change_policy");
                    break;
                case 242:
                    gVar.b("network_control_change_policy");
                    break;
                case 243:
                    gVar.b("paper_change_deployment_policy");
                    break;
                case 244:
                    gVar.b("paper_change_member_link_policy");
                    break;
                case 245:
                    gVar.b("paper_change_member_policy");
                    break;
                case 246:
                    gVar.b("paper_change_policy");
                    break;
                case 247:
                    gVar.b("permanent_delete_change_policy");
                    break;
                case 248:
                    gVar.b("sharing_change_folder_join_policy");
                    break;
                case 249:
                    gVar.b("sharing_change_link_policy");
                    break;
                case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                    gVar.b("sharing_change_member_policy");
                    break;
                case 251:
                    gVar.b("smart_sync_change_policy");
                    break;
                case 252:
                    gVar.b("smart_sync_not_opt_out");
                    break;
                case 253:
                    gVar.b("smart_sync_opt_out");
                    break;
                case 254:
                    gVar.b("sso_change_policy");
                    break;
                case 255:
                    gVar.b("tfa_change_policy");
                    break;
                case 256:
                    gVar.b("two_account_change_policy");
                    break;
                case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                    gVar.b("web_sessions_change_fixed_length_policy");
                    break;
                case 258:
                    gVar.b("web_sessions_change_idle_length_policy");
                    break;
                case 259:
                    gVar.b("team_profile_add_logo");
                    break;
                case 260:
                    gVar.b("team_profile_change_default_language");
                    break;
                case 261:
                    gVar.b("team_profile_change_logo");
                    break;
                case 262:
                    gVar.b("team_profile_change_name");
                    break;
                case 263:
                    gVar.b("team_profile_remove_logo");
                    break;
                case 264:
                    gVar.b("tfa_add_backup_phone");
                    break;
                case 265:
                    gVar.b("tfa_add_security_key");
                    break;
                case 266:
                    gVar.b("tfa_change_backup_phone");
                    break;
                case 267:
                    gVar.b("tfa_change_status");
                    break;
                case 268:
                    gVar.b("tfa_remove_backup_phone");
                    break;
                case 269:
                    gVar.b("tfa_remove_security_key");
                    break;
                case 270:
                    gVar.b("tfa_reset");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public EventType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            EventType eventType;
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
            if ("member_change_membership_type".equals(tag)) {
                eventType = EventType.MEMBER_CHANGE_MEMBERSHIP_TYPE;
            } else if ("member_permanently_delete_account_contents".equals(tag)) {
                eventType = EventType.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS;
            } else if ("member_space_limits_change_status".equals(tag)) {
                eventType = EventType.MEMBER_SPACE_LIMITS_CHANGE_STATUS;
            } else if ("member_transfer_account_contents".equals(tag)) {
                eventType = EventType.MEMBER_TRANSFER_ACCOUNT_CONTENTS;
            } else if ("paper_admin_export_start".equals(tag)) {
                eventType = EventType.PAPER_ADMIN_EXPORT_START;
            } else if ("paper_enabled_users_group_addition".equals(tag)) {
                eventType = EventType.PAPER_ENABLED_USERS_GROUP_ADDITION;
            } else if ("paper_enabled_users_group_removal".equals(tag)) {
                eventType = EventType.PAPER_ENABLED_USERS_GROUP_REMOVAL;
            } else if ("paper_external_view_allow".equals(tag)) {
                eventType = EventType.PAPER_EXTERNAL_VIEW_ALLOW;
            } else if ("paper_external_view_default_team".equals(tag)) {
                eventType = EventType.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM;
            } else if ("paper_external_view_forbid".equals(tag)) {
                eventType = EventType.PAPER_EXTERNAL_VIEW_FORBID;
            } else if ("sf_external_invite_warn".equals(tag)) {
                eventType = EventType.SF_EXTERNAL_INVITE_WARN;
            } else if ("team_merge_from".equals(tag)) {
                eventType = EventType.TEAM_MERGE_FROM;
            } else if ("team_merge_to".equals(tag)) {
                eventType = EventType.TEAM_MERGE_TO;
            } else if ("app_link_team".equals(tag)) {
                eventType = EventType.APP_LINK_TEAM;
            } else if ("app_link_user".equals(tag)) {
                eventType = EventType.APP_LINK_USER;
            } else if ("app_unlink_team".equals(tag)) {
                eventType = EventType.APP_UNLINK_TEAM;
            } else if ("app_unlink_user".equals(tag)) {
                eventType = EventType.APP_UNLINK_USER;
            } else if ("file_add_comment".equals(tag)) {
                eventType = EventType.FILE_ADD_COMMENT;
            } else if ("file_change_comment_subscription".equals(tag)) {
                eventType = EventType.FILE_CHANGE_COMMENT_SUBSCRIPTION;
            } else if ("file_delete_comment".equals(tag)) {
                eventType = EventType.FILE_DELETE_COMMENT;
            } else if ("file_like_comment".equals(tag)) {
                eventType = EventType.FILE_LIKE_COMMENT;
            } else if ("file_resolve_comment".equals(tag)) {
                eventType = EventType.FILE_RESOLVE_COMMENT;
            } else if ("file_unlike_comment".equals(tag)) {
                eventType = EventType.FILE_UNLIKE_COMMENT;
            } else if ("file_unresolve_comment".equals(tag)) {
                eventType = EventType.FILE_UNRESOLVE_COMMENT;
            } else if ("device_change_ip_desktop".equals(tag)) {
                eventType = EventType.DEVICE_CHANGE_IP_DESKTOP;
            } else if ("device_change_ip_mobile".equals(tag)) {
                eventType = EventType.DEVICE_CHANGE_IP_MOBILE;
            } else if ("device_change_ip_web".equals(tag)) {
                eventType = EventType.DEVICE_CHANGE_IP_WEB;
            } else if ("device_delete_on_unlink_fail".equals(tag)) {
                eventType = EventType.DEVICE_DELETE_ON_UNLINK_FAIL;
            } else if ("device_delete_on_unlink_success".equals(tag)) {
                eventType = EventType.DEVICE_DELETE_ON_UNLINK_SUCCESS;
            } else if ("device_link_fail".equals(tag)) {
                eventType = EventType.DEVICE_LINK_FAIL;
            } else if ("device_link_success".equals(tag)) {
                eventType = EventType.DEVICE_LINK_SUCCESS;
            } else if ("device_management_disabled".equals(tag)) {
                eventType = EventType.DEVICE_MANAGEMENT_DISABLED;
            } else if ("device_management_enabled".equals(tag)) {
                eventType = EventType.DEVICE_MANAGEMENT_ENABLED;
            } else if ("device_unlink".equals(tag)) {
                eventType = EventType.DEVICE_UNLINK;
            } else if ("emm_refresh_auth_token".equals(tag)) {
                eventType = EventType.EMM_REFRESH_AUTH_TOKEN;
            } else if ("account_capture_change_availability".equals(tag)) {
                eventType = EventType.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY;
            } else if ("account_capture_migrate_account".equals(tag)) {
                eventType = EventType.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT;
            } else if ("account_capture_relinquish_account".equals(tag)) {
                eventType = EventType.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT;
            } else if ("disabled_domain_invites".equals(tag)) {
                eventType = EventType.DISABLED_DOMAIN_INVITES;
            } else if ("domain_invites_approve_request_to_join_team".equals(tag)) {
                eventType = EventType.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM;
            } else if ("domain_invites_decline_request_to_join_team".equals(tag)) {
                eventType = EventType.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM;
            } else if ("domain_invites_email_existing_users".equals(tag)) {
                eventType = EventType.DOMAIN_INVITES_EMAIL_EXISTING_USERS;
            } else if ("domain_invites_request_to_join_team".equals(tag)) {
                eventType = EventType.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM;
            } else if ("domain_invites_set_invite_new_user_pref_to_no".equals(tag)) {
                eventType = EventType.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO;
            } else if ("domain_invites_set_invite_new_user_pref_to_yes".equals(tag)) {
                eventType = EventType.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES;
            } else if ("domain_verification_add_domain_fail".equals(tag)) {
                eventType = EventType.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL;
            } else if ("domain_verification_add_domain_success".equals(tag)) {
                eventType = EventType.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS;
            } else if ("domain_verification_remove_domain".equals(tag)) {
                eventType = EventType.DOMAIN_VERIFICATION_REMOVE_DOMAIN;
            } else if ("enabled_domain_invites".equals(tag)) {
                eventType = EventType.ENABLED_DOMAIN_INVITES;
            } else if ("create_folder".equals(tag)) {
                eventType = EventType.CREATE_FOLDER;
            } else if ("file_add".equals(tag)) {
                eventType = EventType.FILE_ADD;
            } else if ("file_copy".equals(tag)) {
                eventType = EventType.FILE_COPY;
            } else if ("file_delete".equals(tag)) {
                eventType = EventType.FILE_DELETE;
            } else if ("file_download".equals(tag)) {
                eventType = EventType.FILE_DOWNLOAD;
            } else if ("file_edit".equals(tag)) {
                eventType = EventType.FILE_EDIT;
            } else if ("file_get_copy_reference".equals(tag)) {
                eventType = EventType.FILE_GET_COPY_REFERENCE;
            } else if ("file_move".equals(tag)) {
                eventType = EventType.FILE_MOVE;
            } else if ("file_permanently_delete".equals(tag)) {
                eventType = EventType.FILE_PERMANENTLY_DELETE;
            } else if ("file_preview".equals(tag)) {
                eventType = EventType.FILE_PREVIEW;
            } else if ("file_rename".equals(tag)) {
                eventType = EventType.FILE_RENAME;
            } else if ("file_restore".equals(tag)) {
                eventType = EventType.FILE_RESTORE;
            } else if ("file_revert".equals(tag)) {
                eventType = EventType.FILE_REVERT;
            } else if ("file_rollback_changes".equals(tag)) {
                eventType = EventType.FILE_ROLLBACK_CHANGES;
            } else if ("file_save_copy_reference".equals(tag)) {
                eventType = EventType.FILE_SAVE_COPY_REFERENCE;
            } else if ("file_request_add_deadline".equals(tag)) {
                eventType = EventType.FILE_REQUEST_ADD_DEADLINE;
            } else if ("file_request_change_folder".equals(tag)) {
                eventType = EventType.FILE_REQUEST_CHANGE_FOLDER;
            } else if ("file_request_change_title".equals(tag)) {
                eventType = EventType.FILE_REQUEST_CHANGE_TITLE;
            } else if ("file_request_close".equals(tag)) {
                eventType = EventType.FILE_REQUEST_CLOSE;
            } else if ("file_request_create".equals(tag)) {
                eventType = EventType.FILE_REQUEST_CREATE;
            } else if ("file_request_receive_file".equals(tag)) {
                eventType = EventType.FILE_REQUEST_RECEIVE_FILE;
            } else if ("file_request_remove_deadline".equals(tag)) {
                eventType = EventType.FILE_REQUEST_REMOVE_DEADLINE;
            } else if ("file_request_send".equals(tag)) {
                eventType = EventType.FILE_REQUEST_SEND;
            } else if ("group_add_external_id".equals(tag)) {
                eventType = EventType.GROUP_ADD_EXTERNAL_ID;
            } else if ("group_add_member".equals(tag)) {
                eventType = EventType.GROUP_ADD_MEMBER;
            } else if ("group_change_external_id".equals(tag)) {
                eventType = EventType.GROUP_CHANGE_EXTERNAL_ID;
            } else if ("group_change_management_type".equals(tag)) {
                eventType = EventType.GROUP_CHANGE_MANAGEMENT_TYPE;
            } else if ("group_change_member_role".equals(tag)) {
                eventType = EventType.GROUP_CHANGE_MEMBER_ROLE;
            } else if ("group_create".equals(tag)) {
                eventType = EventType.GROUP_CREATE;
            } else if ("group_delete".equals(tag)) {
                eventType = EventType.GROUP_DELETE;
            } else if ("group_moved".equals(tag)) {
                eventType = EventType.GROUP_MOVED;
            } else if ("group_remove_external_id".equals(tag)) {
                eventType = EventType.GROUP_REMOVE_EXTERNAL_ID;
            } else if ("group_remove_member".equals(tag)) {
                eventType = EventType.GROUP_REMOVE_MEMBER;
            } else if ("group_rename".equals(tag)) {
                eventType = EventType.GROUP_RENAME;
            } else if ("emm_login_success".equals(tag)) {
                eventType = EventType.EMM_LOGIN_SUCCESS;
            } else if ("logout".equals(tag)) {
                eventType = EventType.LOGOUT;
            } else if ("password_login_fail".equals(tag)) {
                eventType = EventType.PASSWORD_LOGIN_FAIL;
            } else if ("password_login_success".equals(tag)) {
                eventType = EventType.PASSWORD_LOGIN_SUCCESS;
            } else if ("reseller_support_session_end".equals(tag)) {
                eventType = EventType.RESELLER_SUPPORT_SESSION_END;
            } else if ("reseller_support_session_start".equals(tag)) {
                eventType = EventType.RESELLER_SUPPORT_SESSION_START;
            } else if ("sign_in_as_session_end".equals(tag)) {
                eventType = EventType.SIGN_IN_AS_SESSION_END;
            } else if ("sign_in_as_session_start".equals(tag)) {
                eventType = EventType.SIGN_IN_AS_SESSION_START;
            } else if ("sso_login_fail".equals(tag)) {
                eventType = EventType.SSO_LOGIN_FAIL;
            } else if ("member_add_name".equals(tag)) {
                eventType = EventType.MEMBER_ADD_NAME;
            } else if ("member_change_admin_role".equals(tag)) {
                eventType = EventType.MEMBER_CHANGE_ADMIN_ROLE;
            } else if ("member_change_email".equals(tag)) {
                eventType = EventType.MEMBER_CHANGE_EMAIL;
            } else if ("member_change_name".equals(tag)) {
                eventType = EventType.MEMBER_CHANGE_NAME;
            } else if ("member_change_status".equals(tag)) {
                eventType = EventType.MEMBER_CHANGE_STATUS;
            } else if ("member_suggest".equals(tag)) {
                eventType = EventType.MEMBER_SUGGEST;
            } else if ("paper_content_add_member".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_ADD_MEMBER;
            } else if ("paper_content_add_to_folder".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_ADD_TO_FOLDER;
            } else if ("paper_content_archive".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_ARCHIVE;
            } else if ("paper_content_create".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_CREATE;
            } else if ("paper_content_permanently_delete".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_PERMANENTLY_DELETE;
            } else if ("paper_content_remove_from_folder".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_REMOVE_FROM_FOLDER;
            } else if ("paper_content_remove_member".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_REMOVE_MEMBER;
            } else if ("paper_content_rename".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_RENAME;
            } else if ("paper_content_restore".equals(tag)) {
                eventType = EventType.PAPER_CONTENT_RESTORE;
            } else if ("paper_doc_add_comment".equals(tag)) {
                eventType = EventType.PAPER_DOC_ADD_COMMENT;
            } else if ("paper_doc_change_member_role".equals(tag)) {
                eventType = EventType.PAPER_DOC_CHANGE_MEMBER_ROLE;
            } else if ("paper_doc_change_sharing_policy".equals(tag)) {
                eventType = EventType.PAPER_DOC_CHANGE_SHARING_POLICY;
            } else if ("paper_doc_change_subscription".equals(tag)) {
                eventType = EventType.PAPER_DOC_CHANGE_SUBSCRIPTION;
            } else if ("paper_doc_deleted".equals(tag)) {
                eventType = EventType.PAPER_DOC_DELETED;
            } else if ("paper_doc_delete_comment".equals(tag)) {
                eventType = EventType.PAPER_DOC_DELETE_COMMENT;
            } else if ("paper_doc_download".equals(tag)) {
                eventType = EventType.PAPER_DOC_DOWNLOAD;
            } else if ("paper_doc_edit".equals(tag)) {
                eventType = EventType.PAPER_DOC_EDIT;
            } else if ("paper_doc_edit_comment".equals(tag)) {
                eventType = EventType.PAPER_DOC_EDIT_COMMENT;
            } else if ("paper_doc_followed".equals(tag)) {
                eventType = EventType.PAPER_DOC_FOLLOWED;
            } else if ("paper_doc_mention".equals(tag)) {
                eventType = EventType.PAPER_DOC_MENTION;
            } else if ("paper_doc_request_access".equals(tag)) {
                eventType = EventType.PAPER_DOC_REQUEST_ACCESS;
            } else if ("paper_doc_resolve_comment".equals(tag)) {
                eventType = EventType.PAPER_DOC_RESOLVE_COMMENT;
            } else if ("paper_doc_revert".equals(tag)) {
                eventType = EventType.PAPER_DOC_REVERT;
            } else if ("paper_doc_slack_share".equals(tag)) {
                eventType = EventType.PAPER_DOC_SLACK_SHARE;
            } else if ("paper_doc_team_invite".equals(tag)) {
                eventType = EventType.PAPER_DOC_TEAM_INVITE;
            } else if ("paper_doc_trashed".equals(tag)) {
                eventType = EventType.PAPER_DOC_TRASHED;
            } else if ("paper_doc_unresolve_comment".equals(tag)) {
                eventType = EventType.PAPER_DOC_UNRESOLVE_COMMENT;
            } else if ("paper_doc_untrashed".equals(tag)) {
                eventType = EventType.PAPER_DOC_UNTRASHED;
            } else if ("paper_doc_view".equals(tag)) {
                eventType = EventType.PAPER_DOC_VIEW;
            } else if ("paper_folder_change_subscription".equals(tag)) {
                eventType = EventType.PAPER_FOLDER_CHANGE_SUBSCRIPTION;
            } else if ("paper_folder_deleted".equals(tag)) {
                eventType = EventType.PAPER_FOLDER_DELETED;
            } else if ("paper_folder_followed".equals(tag)) {
                eventType = EventType.PAPER_FOLDER_FOLLOWED;
            } else if ("paper_folder_team_invite".equals(tag)) {
                eventType = EventType.PAPER_FOLDER_TEAM_INVITE;
            } else if ("password_change".equals(tag)) {
                eventType = EventType.PASSWORD_CHANGE;
            } else if ("password_reset".equals(tag)) {
                eventType = EventType.PASSWORD_RESET;
            } else if ("password_reset_all".equals(tag)) {
                eventType = EventType.PASSWORD_RESET_ALL;
            } else if ("emm_create_exceptions_report".equals(tag)) {
                eventType = EventType.EMM_CREATE_EXCEPTIONS_REPORT;
            } else if ("emm_create_usage_report".equals(tag)) {
                eventType = EventType.EMM_CREATE_USAGE_REPORT;
            } else if ("smart_sync_create_admin_privilege_report".equals(tag)) {
                eventType = EventType.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT;
            } else if ("team_activity_create_report".equals(tag)) {
                eventType = EventType.TEAM_ACTIVITY_CREATE_REPORT;
            } else if ("collection_share".equals(tag)) {
                eventType = EventType.COLLECTION_SHARE;
            } else if ("note_acl_invite_only".equals(tag)) {
                eventType = EventType.NOTE_ACL_INVITE_ONLY;
            } else if ("note_acl_link".equals(tag)) {
                eventType = EventType.NOTE_ACL_LINK;
            } else if ("note_acl_team_link".equals(tag)) {
                eventType = EventType.NOTE_ACL_TEAM_LINK;
            } else if ("note_shared".equals(tag)) {
                eventType = EventType.NOTE_SHARED;
            } else if ("note_share_receive".equals(tag)) {
                eventType = EventType.NOTE_SHARE_RECEIVE;
            } else if ("open_note_shared".equals(tag)) {
                eventType = EventType.OPEN_NOTE_SHARED;
            } else if ("sf_add_group".equals(tag)) {
                eventType = EventType.SF_ADD_GROUP;
            } else if ("sf_allow_non_members_to_view_shared_links".equals(tag)) {
                eventType = EventType.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS;
            } else if ("sf_invite_group".equals(tag)) {
                eventType = EventType.SF_INVITE_GROUP;
            } else if ("sf_nest".equals(tag)) {
                eventType = EventType.SF_NEST;
            } else if ("sf_team_decline".equals(tag)) {
                eventType = EventType.SF_TEAM_DECLINE;
            } else if ("sf_team_grant_access".equals(tag)) {
                eventType = EventType.SF_TEAM_GRANT_ACCESS;
            } else if ("sf_team_invite".equals(tag)) {
                eventType = EventType.SF_TEAM_INVITE;
            } else if ("sf_team_invite_change_role".equals(tag)) {
                eventType = EventType.SF_TEAM_INVITE_CHANGE_ROLE;
            } else if ("sf_team_join".equals(tag)) {
                eventType = EventType.SF_TEAM_JOIN;
            } else if ("sf_team_join_from_oob_link".equals(tag)) {
                eventType = EventType.SF_TEAM_JOIN_FROM_OOB_LINK;
            } else if ("sf_team_uninvite".equals(tag)) {
                eventType = EventType.SF_TEAM_UNINVITE;
            } else if ("shared_content_add_invitees".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_ADD_INVITEES;
            } else if ("shared_content_add_link_expiry".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_ADD_LINK_EXPIRY;
            } else if ("shared_content_add_link_password".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_ADD_LINK_PASSWORD;
            } else if ("shared_content_add_member".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_ADD_MEMBER;
            } else if ("shared_content_change_downloads_policy".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY;
            } else if ("shared_content_change_invitee_role".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_INVITEE_ROLE;
            } else if ("shared_content_change_link_audience".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_LINK_AUDIENCE;
            } else if ("shared_content_change_link_expiry".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_LINK_EXPIRY;
            } else if ("shared_content_change_link_password".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_LINK_PASSWORD;
            } else if ("shared_content_change_member_role".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_MEMBER_ROLE;
            } else if ("shared_content_change_viewer_info_policy".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY;
            } else if ("shared_content_claim_invitation".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_CLAIM_INVITATION;
            } else if ("shared_content_copy".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_COPY;
            } else if ("shared_content_download".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_DOWNLOAD;
            } else if ("shared_content_relinquish_membership".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_RELINQUISH_MEMBERSHIP;
            } else if ("shared_content_remove_invitee".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_REMOVE_INVITEE;
            } else if ("shared_content_remove_link_expiry".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_REMOVE_LINK_EXPIRY;
            } else if ("shared_content_remove_link_password".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_REMOVE_LINK_PASSWORD;
            } else if ("shared_content_remove_member".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_REMOVE_MEMBER;
            } else if ("shared_content_request_access".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_REQUEST_ACCESS;
            } else if ("shared_content_unshare".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_UNSHARE;
            } else if ("shared_content_view".equals(tag)) {
                eventType = EventType.SHARED_CONTENT_VIEW;
            } else if ("shared_folder_change_confidentiality".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_CHANGE_CONFIDENTIALITY;
            } else if ("shared_folder_change_link_policy".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_CHANGE_LINK_POLICY;
            } else if ("shared_folder_change_member_management_policy".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY;
            } else if ("shared_folder_change_member_policy".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_CHANGE_MEMBER_POLICY;
            } else if ("shared_folder_create".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_CREATE;
            } else if ("shared_folder_mount".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_MOUNT;
            } else if ("shared_folder_transfer_ownership".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_TRANSFER_OWNERSHIP;
            } else if ("shared_folder_unmount".equals(tag)) {
                eventType = EventType.SHARED_FOLDER_UNMOUNT;
            } else if ("shared_note_opened".equals(tag)) {
                eventType = EventType.SHARED_NOTE_OPENED;
            } else if ("shmodel_app_create".equals(tag)) {
                eventType = EventType.SHMODEL_APP_CREATE;
            } else if ("shmodel_create".equals(tag)) {
                eventType = EventType.SHMODEL_CREATE;
            } else if ("shmodel_disable".equals(tag)) {
                eventType = EventType.SHMODEL_DISABLE;
            } else if ("shmodel_fb_share".equals(tag)) {
                eventType = EventType.SHMODEL_FB_SHARE;
            } else if ("shmodel_group_share".equals(tag)) {
                eventType = EventType.SHMODEL_GROUP_SHARE;
            } else if ("shmodel_remove_expiration".equals(tag)) {
                eventType = EventType.SHMODEL_REMOVE_EXPIRATION;
            } else if ("shmodel_set_expiration".equals(tag)) {
                eventType = EventType.SHMODEL_SET_EXPIRATION;
            } else if ("shmodel_team_copy".equals(tag)) {
                eventType = EventType.SHMODEL_TEAM_COPY;
            } else if ("shmodel_team_download".equals(tag)) {
                eventType = EventType.SHMODEL_TEAM_DOWNLOAD;
            } else if ("shmodel_team_share".equals(tag)) {
                eventType = EventType.SHMODEL_TEAM_SHARE;
            } else if ("shmodel_team_view".equals(tag)) {
                eventType = EventType.SHMODEL_TEAM_VIEW;
            } else if ("shmodel_visibility_password".equals(tag)) {
                eventType = EventType.SHMODEL_VISIBILITY_PASSWORD;
            } else if ("shmodel_visibility_public".equals(tag)) {
                eventType = EventType.SHMODEL_VISIBILITY_PUBLIC;
            } else if ("shmodel_visibility_team_only".equals(tag)) {
                eventType = EventType.SHMODEL_VISIBILITY_TEAM_ONLY;
            } else if ("sso_add_cert".equals(tag)) {
                eventType = EventType.SSO_ADD_CERT;
            } else if ("sso_add_login_url".equals(tag)) {
                eventType = EventType.SSO_ADD_LOGIN_URL;
            } else if ("sso_add_logout_url".equals(tag)) {
                eventType = EventType.SSO_ADD_LOGOUT_URL;
            } else if ("sso_change_cert".equals(tag)) {
                eventType = EventType.SSO_CHANGE_CERT;
            } else if ("sso_change_login_url".equals(tag)) {
                eventType = EventType.SSO_CHANGE_LOGIN_URL;
            } else if ("sso_change_logout_url".equals(tag)) {
                eventType = EventType.SSO_CHANGE_LOGOUT_URL;
            } else if ("sso_change_saml_identity_mode".equals(tag)) {
                eventType = EventType.SSO_CHANGE_SAML_IDENTITY_MODE;
            } else if ("sso_remove_cert".equals(tag)) {
                eventType = EventType.SSO_REMOVE_CERT;
            } else if ("sso_remove_login_url".equals(tag)) {
                eventType = EventType.SSO_REMOVE_LOGIN_URL;
            } else if ("sso_remove_logout_url".equals(tag)) {
                eventType = EventType.SSO_REMOVE_LOGOUT_URL;
            } else if ("team_folder_change_status".equals(tag)) {
                eventType = EventType.TEAM_FOLDER_CHANGE_STATUS;
            } else if ("team_folder_create".equals(tag)) {
                eventType = EventType.TEAM_FOLDER_CREATE;
            } else if ("team_folder_downgrade".equals(tag)) {
                eventType = EventType.TEAM_FOLDER_DOWNGRADE;
            } else if ("team_folder_permanently_delete".equals(tag)) {
                eventType = EventType.TEAM_FOLDER_PERMANENTLY_DELETE;
            } else if ("team_folder_rename".equals(tag)) {
                eventType = EventType.TEAM_FOLDER_RENAME;
            } else if ("account_capture_change_policy".equals(tag)) {
                eventType = EventType.ACCOUNT_CAPTURE_CHANGE_POLICY;
            } else if ("allow_download_disabled".equals(tag)) {
                eventType = EventType.ALLOW_DOWNLOAD_DISABLED;
            } else if ("allow_download_enabled".equals(tag)) {
                eventType = EventType.ALLOW_DOWNLOAD_ENABLED;
            } else if ("data_placement_restriction_change_policy".equals(tag)) {
                eventType = EventType.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY;
            } else if ("data_placement_restriction_satisfy_policy".equals(tag)) {
                eventType = EventType.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY;
            } else if ("device_approvals_change_desktop_policy".equals(tag)) {
                eventType = EventType.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY;
            } else if ("device_approvals_change_mobile_policy".equals(tag)) {
                eventType = EventType.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY;
            } else if ("device_approvals_change_overage_action".equals(tag)) {
                eventType = EventType.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION;
            } else if ("device_approvals_change_unlink_action".equals(tag)) {
                eventType = EventType.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION;
            } else if ("emm_add_exception".equals(tag)) {
                eventType = EventType.EMM_ADD_EXCEPTION;
            } else if ("emm_change_policy".equals(tag)) {
                eventType = EventType.EMM_CHANGE_POLICY;
            } else if ("emm_remove_exception".equals(tag)) {
                eventType = EventType.EMM_REMOVE_EXCEPTION;
            } else if ("extended_version_history_change_policy".equals(tag)) {
                eventType = EventType.EXTENDED_VERSION_HISTORY_CHANGE_POLICY;
            } else if ("file_comments_change_policy".equals(tag)) {
                eventType = EventType.FILE_COMMENTS_CHANGE_POLICY;
            } else if ("file_requests_change_policy".equals(tag)) {
                eventType = EventType.FILE_REQUESTS_CHANGE_POLICY;
            } else if ("file_requests_emails_enabled".equals(tag)) {
                eventType = EventType.FILE_REQUESTS_EMAILS_ENABLED;
            } else if ("file_requests_emails_restricted_to_team_only".equals(tag)) {
                eventType = EventType.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY;
            } else if ("google_sso_change_policy".equals(tag)) {
                eventType = EventType.GOOGLE_SSO_CHANGE_POLICY;
            } else if ("group_user_management_change_policy".equals(tag)) {
                eventType = EventType.GROUP_USER_MANAGEMENT_CHANGE_POLICY;
            } else if ("member_requests_change_policy".equals(tag)) {
                eventType = EventType.MEMBER_REQUESTS_CHANGE_POLICY;
            } else if ("member_space_limits_add_exception".equals(tag)) {
                eventType = EventType.MEMBER_SPACE_LIMITS_ADD_EXCEPTION;
            } else if ("member_space_limits_change_policy".equals(tag)) {
                eventType = EventType.MEMBER_SPACE_LIMITS_CHANGE_POLICY;
            } else if ("member_space_limits_remove_exception".equals(tag)) {
                eventType = EventType.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION;
            } else if ("member_suggestions_change_policy".equals(tag)) {
                eventType = EventType.MEMBER_SUGGESTIONS_CHANGE_POLICY;
            } else if ("microsoft_office_addin_change_policy".equals(tag)) {
                eventType = EventType.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY;
            } else if ("network_control_change_policy".equals(tag)) {
                eventType = EventType.NETWORK_CONTROL_CHANGE_POLICY;
            } else if ("paper_change_deployment_policy".equals(tag)) {
                eventType = EventType.PAPER_CHANGE_DEPLOYMENT_POLICY;
            } else if ("paper_change_member_link_policy".equals(tag)) {
                eventType = EventType.PAPER_CHANGE_MEMBER_LINK_POLICY;
            } else if ("paper_change_member_policy".equals(tag)) {
                eventType = EventType.PAPER_CHANGE_MEMBER_POLICY;
            } else if ("paper_change_policy".equals(tag)) {
                eventType = EventType.PAPER_CHANGE_POLICY;
            } else if ("permanent_delete_change_policy".equals(tag)) {
                eventType = EventType.PERMANENT_DELETE_CHANGE_POLICY;
            } else if ("sharing_change_folder_join_policy".equals(tag)) {
                eventType = EventType.SHARING_CHANGE_FOLDER_JOIN_POLICY;
            } else if ("sharing_change_link_policy".equals(tag)) {
                eventType = EventType.SHARING_CHANGE_LINK_POLICY;
            } else if ("sharing_change_member_policy".equals(tag)) {
                eventType = EventType.SHARING_CHANGE_MEMBER_POLICY;
            } else if ("smart_sync_change_policy".equals(tag)) {
                eventType = EventType.SMART_SYNC_CHANGE_POLICY;
            } else if ("smart_sync_not_opt_out".equals(tag)) {
                eventType = EventType.SMART_SYNC_NOT_OPT_OUT;
            } else if ("smart_sync_opt_out".equals(tag)) {
                eventType = EventType.SMART_SYNC_OPT_OUT;
            } else if ("sso_change_policy".equals(tag)) {
                eventType = EventType.SSO_CHANGE_POLICY;
            } else if ("tfa_change_policy".equals(tag)) {
                eventType = EventType.TFA_CHANGE_POLICY;
            } else if ("two_account_change_policy".equals(tag)) {
                eventType = EventType.TWO_ACCOUNT_CHANGE_POLICY;
            } else if ("web_sessions_change_fixed_length_policy".equals(tag)) {
                eventType = EventType.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY;
            } else if ("web_sessions_change_idle_length_policy".equals(tag)) {
                eventType = EventType.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY;
            } else if ("team_profile_add_logo".equals(tag)) {
                eventType = EventType.TEAM_PROFILE_ADD_LOGO;
            } else if ("team_profile_change_default_language".equals(tag)) {
                eventType = EventType.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE;
            } else if ("team_profile_change_logo".equals(tag)) {
                eventType = EventType.TEAM_PROFILE_CHANGE_LOGO;
            } else if ("team_profile_change_name".equals(tag)) {
                eventType = EventType.TEAM_PROFILE_CHANGE_NAME;
            } else if ("team_profile_remove_logo".equals(tag)) {
                eventType = EventType.TEAM_PROFILE_REMOVE_LOGO;
            } else if ("tfa_add_backup_phone".equals(tag)) {
                eventType = EventType.TFA_ADD_BACKUP_PHONE;
            } else if ("tfa_add_security_key".equals(tag)) {
                eventType = EventType.TFA_ADD_SECURITY_KEY;
            } else if ("tfa_change_backup_phone".equals(tag)) {
                eventType = EventType.TFA_CHANGE_BACKUP_PHONE;
            } else if ("tfa_change_status".equals(tag)) {
                eventType = EventType.TFA_CHANGE_STATUS;
            } else if ("tfa_remove_backup_phone".equals(tag)) {
                eventType = EventType.TFA_REMOVE_BACKUP_PHONE;
            } else if ("tfa_remove_security_key".equals(tag)) {
                eventType = EventType.TFA_REMOVE_SECURITY_KEY;
            } else if ("tfa_reset".equals(tag)) {
                eventType = EventType.TFA_RESET;
            } else {
                eventType = EventType.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return eventType;
        }
    }

    /* JADX INFO: renamed from: com.dropbox.core.v2.teamlog.EventType$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$dropbox$core$v2$teamlog$EventType = new int[EventType.values().length];

        static {
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_CHANGE_MEMBERSHIP_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_SPACE_LIMITS_CHANGE_STATUS.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_TRANSFER_ACCOUNT_CONTENTS.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_ADMIN_EXPORT_START.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_ENABLED_USERS_GROUP_ADDITION.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_ENABLED_USERS_GROUP_REMOVAL.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_EXTERNAL_VIEW_ALLOW.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_EXTERNAL_VIEW_DEFAULT_TEAM.ordinal()] = 9;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_EXTERNAL_VIEW_FORBID.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_EXTERNAL_INVITE_WARN.ordinal()] = 11;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_MERGE_FROM.ordinal()] = 12;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_MERGE_TO.ordinal()] = 13;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.APP_LINK_TEAM.ordinal()] = 14;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.APP_LINK_USER.ordinal()] = 15;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.APP_UNLINK_TEAM.ordinal()] = 16;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.APP_UNLINK_USER.ordinal()] = 17;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_ADD_COMMENT.ordinal()] = 18;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_CHANGE_COMMENT_SUBSCRIPTION.ordinal()] = 19;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_DELETE_COMMENT.ordinal()] = 20;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_LIKE_COMMENT.ordinal()] = 21;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_RESOLVE_COMMENT.ordinal()] = 22;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_UNLIKE_COMMENT.ordinal()] = 23;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_UNRESOLVE_COMMENT.ordinal()] = 24;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_CHANGE_IP_DESKTOP.ordinal()] = 25;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_CHANGE_IP_MOBILE.ordinal()] = 26;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_CHANGE_IP_WEB.ordinal()] = 27;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_DELETE_ON_UNLINK_FAIL.ordinal()] = 28;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_DELETE_ON_UNLINK_SUCCESS.ordinal()] = 29;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_LINK_FAIL.ordinal()] = 30;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_LINK_SUCCESS.ordinal()] = 31;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_MANAGEMENT_DISABLED.ordinal()] = 32;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_MANAGEMENT_ENABLED.ordinal()] = 33;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_UNLINK.ordinal()] = 34;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_REFRESH_AUTH_TOKEN.ordinal()] = 35;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ACCOUNT_CAPTURE_CHANGE_AVAILABILITY.ordinal()] = 36;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ACCOUNT_CAPTURE_MIGRATE_ACCOUNT.ordinal()] = 37;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT.ordinal()] = 38;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DISABLED_DOMAIN_INVITES.ordinal()] = 39;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM.ordinal()] = 40;
            } catch (NoSuchFieldError e41) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM.ordinal()] = 41;
            } catch (NoSuchFieldError e42) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_INVITES_EMAIL_EXISTING_USERS.ordinal()] = 42;
            } catch (NoSuchFieldError e43) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM.ordinal()] = 43;
            } catch (NoSuchFieldError e44) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO.ordinal()] = 44;
            } catch (NoSuchFieldError e45) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES.ordinal()] = 45;
            } catch (NoSuchFieldError e46) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL.ordinal()] = 46;
            } catch (NoSuchFieldError e47) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS.ordinal()] = 47;
            } catch (NoSuchFieldError e48) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DOMAIN_VERIFICATION_REMOVE_DOMAIN.ordinal()] = 48;
            } catch (NoSuchFieldError e49) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ENABLED_DOMAIN_INVITES.ordinal()] = 49;
            } catch (NoSuchFieldError e50) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.CREATE_FOLDER.ordinal()] = 50;
            } catch (NoSuchFieldError e51) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_ADD.ordinal()] = 51;
            } catch (NoSuchFieldError e52) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_COPY.ordinal()] = 52;
            } catch (NoSuchFieldError e53) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_DELETE.ordinal()] = 53;
            } catch (NoSuchFieldError e54) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_DOWNLOAD.ordinal()] = 54;
            } catch (NoSuchFieldError e55) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_EDIT.ordinal()] = 55;
            } catch (NoSuchFieldError e56) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_GET_COPY_REFERENCE.ordinal()] = 56;
            } catch (NoSuchFieldError e57) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_MOVE.ordinal()] = 57;
            } catch (NoSuchFieldError e58) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_PERMANENTLY_DELETE.ordinal()] = 58;
            } catch (NoSuchFieldError e59) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_PREVIEW.ordinal()] = 59;
            } catch (NoSuchFieldError e60) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_RENAME.ordinal()] = 60;
            } catch (NoSuchFieldError e61) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_RESTORE.ordinal()] = 61;
            } catch (NoSuchFieldError e62) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REVERT.ordinal()] = 62;
            } catch (NoSuchFieldError e63) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_ROLLBACK_CHANGES.ordinal()] = 63;
            } catch (NoSuchFieldError e64) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_SAVE_COPY_REFERENCE.ordinal()] = 64;
            } catch (NoSuchFieldError e65) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_ADD_DEADLINE.ordinal()] = 65;
            } catch (NoSuchFieldError e66) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_CHANGE_FOLDER.ordinal()] = 66;
            } catch (NoSuchFieldError e67) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_CHANGE_TITLE.ordinal()] = 67;
            } catch (NoSuchFieldError e68) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_CLOSE.ordinal()] = 68;
            } catch (NoSuchFieldError e69) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_CREATE.ordinal()] = 69;
            } catch (NoSuchFieldError e70) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_RECEIVE_FILE.ordinal()] = 70;
            } catch (NoSuchFieldError e71) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_REMOVE_DEADLINE.ordinal()] = 71;
            } catch (NoSuchFieldError e72) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUEST_SEND.ordinal()] = 72;
            } catch (NoSuchFieldError e73) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_ADD_EXTERNAL_ID.ordinal()] = 73;
            } catch (NoSuchFieldError e74) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_ADD_MEMBER.ordinal()] = 74;
            } catch (NoSuchFieldError e75) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_CHANGE_EXTERNAL_ID.ordinal()] = 75;
            } catch (NoSuchFieldError e76) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_CHANGE_MANAGEMENT_TYPE.ordinal()] = 76;
            } catch (NoSuchFieldError e77) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_CHANGE_MEMBER_ROLE.ordinal()] = 77;
            } catch (NoSuchFieldError e78) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_CREATE.ordinal()] = 78;
            } catch (NoSuchFieldError e79) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_DELETE.ordinal()] = 79;
            } catch (NoSuchFieldError e80) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_MOVED.ordinal()] = 80;
            } catch (NoSuchFieldError e81) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_REMOVE_EXTERNAL_ID.ordinal()] = 81;
            } catch (NoSuchFieldError e82) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_REMOVE_MEMBER.ordinal()] = 82;
            } catch (NoSuchFieldError e83) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_RENAME.ordinal()] = 83;
            } catch (NoSuchFieldError e84) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_LOGIN_SUCCESS.ordinal()] = 84;
            } catch (NoSuchFieldError e85) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.LOGOUT.ordinal()] = 85;
            } catch (NoSuchFieldError e86) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PASSWORD_LOGIN_FAIL.ordinal()] = 86;
            } catch (NoSuchFieldError e87) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PASSWORD_LOGIN_SUCCESS.ordinal()] = 87;
            } catch (NoSuchFieldError e88) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.RESELLER_SUPPORT_SESSION_END.ordinal()] = 88;
            } catch (NoSuchFieldError e89) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.RESELLER_SUPPORT_SESSION_START.ordinal()] = 89;
            } catch (NoSuchFieldError e90) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SIGN_IN_AS_SESSION_END.ordinal()] = 90;
            } catch (NoSuchFieldError e91) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SIGN_IN_AS_SESSION_START.ordinal()] = 91;
            } catch (NoSuchFieldError e92) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_LOGIN_FAIL.ordinal()] = 92;
            } catch (NoSuchFieldError e93) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_ADD_NAME.ordinal()] = 93;
            } catch (NoSuchFieldError e94) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_CHANGE_ADMIN_ROLE.ordinal()] = 94;
            } catch (NoSuchFieldError e95) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_CHANGE_EMAIL.ordinal()] = 95;
            } catch (NoSuchFieldError e96) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_CHANGE_NAME.ordinal()] = 96;
            } catch (NoSuchFieldError e97) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_CHANGE_STATUS.ordinal()] = 97;
            } catch (NoSuchFieldError e98) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_SUGGEST.ordinal()] = 98;
            } catch (NoSuchFieldError e99) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_ADD_MEMBER.ordinal()] = 99;
            } catch (NoSuchFieldError e100) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_ADD_TO_FOLDER.ordinal()] = 100;
            } catch (NoSuchFieldError e101) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_ARCHIVE.ordinal()] = 101;
            } catch (NoSuchFieldError e102) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_CREATE.ordinal()] = 102;
            } catch (NoSuchFieldError e103) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_PERMANENTLY_DELETE.ordinal()] = 103;
            } catch (NoSuchFieldError e104) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_REMOVE_FROM_FOLDER.ordinal()] = 104;
            } catch (NoSuchFieldError e105) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_REMOVE_MEMBER.ordinal()] = 105;
            } catch (NoSuchFieldError e106) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_RENAME.ordinal()] = 106;
            } catch (NoSuchFieldError e107) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CONTENT_RESTORE.ordinal()] = 107;
            } catch (NoSuchFieldError e108) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_ADD_COMMENT.ordinal()] = 108;
            } catch (NoSuchFieldError e109) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_CHANGE_MEMBER_ROLE.ordinal()] = 109;
            } catch (NoSuchFieldError e110) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_CHANGE_SHARING_POLICY.ordinal()] = 110;
            } catch (NoSuchFieldError e111) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_CHANGE_SUBSCRIPTION.ordinal()] = 111;
            } catch (NoSuchFieldError e112) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_DELETED.ordinal()] = 112;
            } catch (NoSuchFieldError e113) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_DELETE_COMMENT.ordinal()] = 113;
            } catch (NoSuchFieldError e114) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_DOWNLOAD.ordinal()] = 114;
            } catch (NoSuchFieldError e115) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_EDIT.ordinal()] = 115;
            } catch (NoSuchFieldError e116) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_EDIT_COMMENT.ordinal()] = 116;
            } catch (NoSuchFieldError e117) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_FOLLOWED.ordinal()] = 117;
            } catch (NoSuchFieldError e118) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_MENTION.ordinal()] = 118;
            } catch (NoSuchFieldError e119) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_REQUEST_ACCESS.ordinal()] = 119;
            } catch (NoSuchFieldError e120) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_RESOLVE_COMMENT.ordinal()] = 120;
            } catch (NoSuchFieldError e121) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_REVERT.ordinal()] = 121;
            } catch (NoSuchFieldError e122) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_SLACK_SHARE.ordinal()] = 122;
            } catch (NoSuchFieldError e123) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_TEAM_INVITE.ordinal()] = 123;
            } catch (NoSuchFieldError e124) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_TRASHED.ordinal()] = 124;
            } catch (NoSuchFieldError e125) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_UNRESOLVE_COMMENT.ordinal()] = 125;
            } catch (NoSuchFieldError e126) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_UNTRASHED.ordinal()] = 126;
            } catch (NoSuchFieldError e127) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_DOC_VIEW.ordinal()] = 127;
            } catch (NoSuchFieldError e128) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_FOLDER_CHANGE_SUBSCRIPTION.ordinal()] = 128;
            } catch (NoSuchFieldError e129) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_FOLDER_DELETED.ordinal()] = 129;
            } catch (NoSuchFieldError e130) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_FOLDER_FOLLOWED.ordinal()] = 130;
            } catch (NoSuchFieldError e131) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_FOLDER_TEAM_INVITE.ordinal()] = 131;
            } catch (NoSuchFieldError e132) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PASSWORD_CHANGE.ordinal()] = 132;
            } catch (NoSuchFieldError e133) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PASSWORD_RESET.ordinal()] = 133;
            } catch (NoSuchFieldError e134) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PASSWORD_RESET_ALL.ordinal()] = 134;
            } catch (NoSuchFieldError e135) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_CREATE_EXCEPTIONS_REPORT.ordinal()] = 135;
            } catch (NoSuchFieldError e136) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_CREATE_USAGE_REPORT.ordinal()] = 136;
            } catch (NoSuchFieldError e137) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT.ordinal()] = 137;
            } catch (NoSuchFieldError e138) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_ACTIVITY_CREATE_REPORT.ordinal()] = 138;
            } catch (NoSuchFieldError e139) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.COLLECTION_SHARE.ordinal()] = 139;
            } catch (NoSuchFieldError e140) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.NOTE_ACL_INVITE_ONLY.ordinal()] = 140;
            } catch (NoSuchFieldError e141) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.NOTE_ACL_LINK.ordinal()] = 141;
            } catch (NoSuchFieldError e142) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.NOTE_ACL_TEAM_LINK.ordinal()] = 142;
            } catch (NoSuchFieldError e143) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.NOTE_SHARED.ordinal()] = 143;
            } catch (NoSuchFieldError e144) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.NOTE_SHARE_RECEIVE.ordinal()] = 144;
            } catch (NoSuchFieldError e145) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.OPEN_NOTE_SHARED.ordinal()] = 145;
            } catch (NoSuchFieldError e146) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_ADD_GROUP.ordinal()] = 146;
            } catch (NoSuchFieldError e147) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS.ordinal()] = 147;
            } catch (NoSuchFieldError e148) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_INVITE_GROUP.ordinal()] = 148;
            } catch (NoSuchFieldError e149) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_NEST.ordinal()] = 149;
            } catch (NoSuchFieldError e150) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_DECLINE.ordinal()] = 150;
            } catch (NoSuchFieldError e151) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_GRANT_ACCESS.ordinal()] = 151;
            } catch (NoSuchFieldError e152) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_INVITE.ordinal()] = 152;
            } catch (NoSuchFieldError e153) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_INVITE_CHANGE_ROLE.ordinal()] = 153;
            } catch (NoSuchFieldError e154) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_JOIN.ordinal()] = 154;
            } catch (NoSuchFieldError e155) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_JOIN_FROM_OOB_LINK.ordinal()] = 155;
            } catch (NoSuchFieldError e156) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SF_TEAM_UNINVITE.ordinal()] = 156;
            } catch (NoSuchFieldError e157) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_ADD_INVITEES.ordinal()] = 157;
            } catch (NoSuchFieldError e158) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_ADD_LINK_EXPIRY.ordinal()] = 158;
            } catch (NoSuchFieldError e159) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_ADD_LINK_PASSWORD.ordinal()] = 159;
            } catch (NoSuchFieldError e160) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_ADD_MEMBER.ordinal()] = 160;
            } catch (NoSuchFieldError e161) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY.ordinal()] = 161;
            } catch (NoSuchFieldError e162) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_INVITEE_ROLE.ordinal()] = 162;
            } catch (NoSuchFieldError e163) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_LINK_AUDIENCE.ordinal()] = 163;
            } catch (NoSuchFieldError e164) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_LINK_EXPIRY.ordinal()] = 164;
            } catch (NoSuchFieldError e165) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_LINK_PASSWORD.ordinal()] = 165;
            } catch (NoSuchFieldError e166) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_MEMBER_ROLE.ordinal()] = 166;
            } catch (NoSuchFieldError e167) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY.ordinal()] = 167;
            } catch (NoSuchFieldError e168) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_CLAIM_INVITATION.ordinal()] = 168;
            } catch (NoSuchFieldError e169) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_COPY.ordinal()] = 169;
            } catch (NoSuchFieldError e170) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_DOWNLOAD.ordinal()] = 170;
            } catch (NoSuchFieldError e171) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_RELINQUISH_MEMBERSHIP.ordinal()] = 171;
            } catch (NoSuchFieldError e172) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_REMOVE_INVITEE.ordinal()] = 172;
            } catch (NoSuchFieldError e173) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_REMOVE_LINK_EXPIRY.ordinal()] = 173;
            } catch (NoSuchFieldError e174) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_REMOVE_LINK_PASSWORD.ordinal()] = 174;
            } catch (NoSuchFieldError e175) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_REMOVE_MEMBER.ordinal()] = 175;
            } catch (NoSuchFieldError e176) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_REQUEST_ACCESS.ordinal()] = 176;
            } catch (NoSuchFieldError e177) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_UNSHARE.ordinal()] = 177;
            } catch (NoSuchFieldError e178) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_CONTENT_VIEW.ordinal()] = 178;
            } catch (NoSuchFieldError e179) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_CHANGE_CONFIDENTIALITY.ordinal()] = 179;
            } catch (NoSuchFieldError e180) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_CHANGE_LINK_POLICY.ordinal()] = 180;
            } catch (NoSuchFieldError e181) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY.ordinal()] = 181;
            } catch (NoSuchFieldError e182) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_CHANGE_MEMBER_POLICY.ordinal()] = 182;
            } catch (NoSuchFieldError e183) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_CREATE.ordinal()] = 183;
            } catch (NoSuchFieldError e184) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_MOUNT.ordinal()] = 184;
            } catch (NoSuchFieldError e185) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_TRANSFER_OWNERSHIP.ordinal()] = 185;
            } catch (NoSuchFieldError e186) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_FOLDER_UNMOUNT.ordinal()] = 186;
            } catch (NoSuchFieldError e187) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARED_NOTE_OPENED.ordinal()] = 187;
            } catch (NoSuchFieldError e188) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_APP_CREATE.ordinal()] = 188;
            } catch (NoSuchFieldError e189) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_CREATE.ordinal()] = 189;
            } catch (NoSuchFieldError e190) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_DISABLE.ordinal()] = 190;
            } catch (NoSuchFieldError e191) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_FB_SHARE.ordinal()] = 191;
            } catch (NoSuchFieldError e192) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_GROUP_SHARE.ordinal()] = 192;
            } catch (NoSuchFieldError e193) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_REMOVE_EXPIRATION.ordinal()] = 193;
            } catch (NoSuchFieldError e194) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_SET_EXPIRATION.ordinal()] = 194;
            } catch (NoSuchFieldError e195) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_TEAM_COPY.ordinal()] = 195;
            } catch (NoSuchFieldError e196) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_TEAM_DOWNLOAD.ordinal()] = 196;
            } catch (NoSuchFieldError e197) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_TEAM_SHARE.ordinal()] = 197;
            } catch (NoSuchFieldError e198) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_TEAM_VIEW.ordinal()] = 198;
            } catch (NoSuchFieldError e199) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_VISIBILITY_PASSWORD.ordinal()] = 199;
            } catch (NoSuchFieldError e200) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_VISIBILITY_PUBLIC.ordinal()] = 200;
            } catch (NoSuchFieldError e201) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHMODEL_VISIBILITY_TEAM_ONLY.ordinal()] = 201;
            } catch (NoSuchFieldError e202) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_ADD_CERT.ordinal()] = 202;
            } catch (NoSuchFieldError e203) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_ADD_LOGIN_URL.ordinal()] = 203;
            } catch (NoSuchFieldError e204) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_ADD_LOGOUT_URL.ordinal()] = 204;
            } catch (NoSuchFieldError e205) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_CHANGE_CERT.ordinal()] = 205;
            } catch (NoSuchFieldError e206) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_CHANGE_LOGIN_URL.ordinal()] = 206;
            } catch (NoSuchFieldError e207) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_CHANGE_LOGOUT_URL.ordinal()] = 207;
            } catch (NoSuchFieldError e208) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_CHANGE_SAML_IDENTITY_MODE.ordinal()] = 208;
            } catch (NoSuchFieldError e209) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_REMOVE_CERT.ordinal()] = 209;
            } catch (NoSuchFieldError e210) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_REMOVE_LOGIN_URL.ordinal()] = 210;
            } catch (NoSuchFieldError e211) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_REMOVE_LOGOUT_URL.ordinal()] = 211;
            } catch (NoSuchFieldError e212) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_FOLDER_CHANGE_STATUS.ordinal()] = 212;
            } catch (NoSuchFieldError e213) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_FOLDER_CREATE.ordinal()] = 213;
            } catch (NoSuchFieldError e214) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_FOLDER_DOWNGRADE.ordinal()] = 214;
            } catch (NoSuchFieldError e215) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_FOLDER_PERMANENTLY_DELETE.ordinal()] = 215;
            } catch (NoSuchFieldError e216) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_FOLDER_RENAME.ordinal()] = 216;
            } catch (NoSuchFieldError e217) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ACCOUNT_CAPTURE_CHANGE_POLICY.ordinal()] = 217;
            } catch (NoSuchFieldError e218) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ALLOW_DOWNLOAD_DISABLED.ordinal()] = 218;
            } catch (NoSuchFieldError e219) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.ALLOW_DOWNLOAD_ENABLED.ordinal()] = 219;
            } catch (NoSuchFieldError e220) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY.ordinal()] = 220;
            } catch (NoSuchFieldError e221) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY.ordinal()] = 221;
            } catch (NoSuchFieldError e222) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY.ordinal()] = 222;
            } catch (NoSuchFieldError e223) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_APPROVALS_CHANGE_MOBILE_POLICY.ordinal()] = 223;
            } catch (NoSuchFieldError e224) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION.ordinal()] = 224;
            } catch (NoSuchFieldError e225) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.DEVICE_APPROVALS_CHANGE_UNLINK_ACTION.ordinal()] = 225;
            } catch (NoSuchFieldError e226) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_ADD_EXCEPTION.ordinal()] = 226;
            } catch (NoSuchFieldError e227) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_CHANGE_POLICY.ordinal()] = 227;
            } catch (NoSuchFieldError e228) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EMM_REMOVE_EXCEPTION.ordinal()] = 228;
            } catch (NoSuchFieldError e229) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.EXTENDED_VERSION_HISTORY_CHANGE_POLICY.ordinal()] = 229;
            } catch (NoSuchFieldError e230) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_COMMENTS_CHANGE_POLICY.ordinal()] = 230;
            } catch (NoSuchFieldError e231) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUESTS_CHANGE_POLICY.ordinal()] = 231;
            } catch (NoSuchFieldError e232) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUESTS_EMAILS_ENABLED.ordinal()] = 232;
            } catch (NoSuchFieldError e233) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY.ordinal()] = 233;
            } catch (NoSuchFieldError e234) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GOOGLE_SSO_CHANGE_POLICY.ordinal()] = 234;
            } catch (NoSuchFieldError e235) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.GROUP_USER_MANAGEMENT_CHANGE_POLICY.ordinal()] = 235;
            } catch (NoSuchFieldError e236) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_REQUESTS_CHANGE_POLICY.ordinal()] = 236;
            } catch (NoSuchFieldError e237) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_SPACE_LIMITS_ADD_EXCEPTION.ordinal()] = 237;
            } catch (NoSuchFieldError e238) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_SPACE_LIMITS_CHANGE_POLICY.ordinal()] = 238;
            } catch (NoSuchFieldError e239) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION.ordinal()] = 239;
            } catch (NoSuchFieldError e240) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MEMBER_SUGGESTIONS_CHANGE_POLICY.ordinal()] = 240;
            } catch (NoSuchFieldError e241) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY.ordinal()] = 241;
            } catch (NoSuchFieldError e242) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.NETWORK_CONTROL_CHANGE_POLICY.ordinal()] = 242;
            } catch (NoSuchFieldError e243) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CHANGE_DEPLOYMENT_POLICY.ordinal()] = 243;
            } catch (NoSuchFieldError e244) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CHANGE_MEMBER_LINK_POLICY.ordinal()] = 244;
            } catch (NoSuchFieldError e245) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CHANGE_MEMBER_POLICY.ordinal()] = 245;
            } catch (NoSuchFieldError e246) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PAPER_CHANGE_POLICY.ordinal()] = 246;
            } catch (NoSuchFieldError e247) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.PERMANENT_DELETE_CHANGE_POLICY.ordinal()] = 247;
            } catch (NoSuchFieldError e248) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARING_CHANGE_FOLDER_JOIN_POLICY.ordinal()] = 248;
            } catch (NoSuchFieldError e249) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARING_CHANGE_LINK_POLICY.ordinal()] = 249;
            } catch (NoSuchFieldError e250) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SHARING_CHANGE_MEMBER_POLICY.ordinal()] = 250;
            } catch (NoSuchFieldError e251) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SMART_SYNC_CHANGE_POLICY.ordinal()] = 251;
            } catch (NoSuchFieldError e252) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SMART_SYNC_NOT_OPT_OUT.ordinal()] = 252;
            } catch (NoSuchFieldError e253) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SMART_SYNC_OPT_OUT.ordinal()] = 253;
            } catch (NoSuchFieldError e254) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.SSO_CHANGE_POLICY.ordinal()] = 254;
            } catch (NoSuchFieldError e255) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_CHANGE_POLICY.ordinal()] = 255;
            } catch (NoSuchFieldError e256) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TWO_ACCOUNT_CHANGE_POLICY.ordinal()] = 256;
            } catch (NoSuchFieldError e257) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY.ordinal()] = 257;
            } catch (NoSuchFieldError e258) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY.ordinal()] = 258;
            } catch (NoSuchFieldError e259) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_PROFILE_ADD_LOGO.ordinal()] = 259;
            } catch (NoSuchFieldError e260) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE.ordinal()] = 260;
            } catch (NoSuchFieldError e261) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_PROFILE_CHANGE_LOGO.ordinal()] = 261;
            } catch (NoSuchFieldError e262) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_PROFILE_CHANGE_NAME.ordinal()] = 262;
            } catch (NoSuchFieldError e263) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TEAM_PROFILE_REMOVE_LOGO.ordinal()] = 263;
            } catch (NoSuchFieldError e264) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_ADD_BACKUP_PHONE.ordinal()] = 264;
            } catch (NoSuchFieldError e265) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_ADD_SECURITY_KEY.ordinal()] = 265;
            } catch (NoSuchFieldError e266) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_CHANGE_BACKUP_PHONE.ordinal()] = 266;
            } catch (NoSuchFieldError e267) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_CHANGE_STATUS.ordinal()] = 267;
            } catch (NoSuchFieldError e268) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_REMOVE_BACKUP_PHONE.ordinal()] = 268;
            } catch (NoSuchFieldError e269) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_REMOVE_SECURITY_KEY.ordinal()] = 269;
            } catch (NoSuchFieldError e270) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$EventType[EventType.TFA_RESET.ordinal()] = 270;
            } catch (NoSuchFieldError e271) {
            }
        }
    }
}
