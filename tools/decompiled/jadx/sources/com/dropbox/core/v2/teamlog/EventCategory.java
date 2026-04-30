package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAuthEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum EventCategory {
    ACCOUNT_CAPTURE,
    ADMINISTRATION,
    APPS,
    AUTHENTICATION,
    COMMENTS,
    CONTENT_ACCESS,
    DEVICES,
    DEVICE_APPROVALS,
    DOMAINS,
    EMM,
    ERRORS,
    FILES,
    FILE_OPERATIONS,
    FILE_REQUESTS,
    GROUPS,
    LOGINS,
    MEMBERS,
    PAPER,
    PASSWORDS,
    REPORTS,
    SESSIONS,
    SHARED_FILES,
    SHARED_FOLDERS,
    SHARED_LINKS,
    SHARING,
    SHARING_POLICIES,
    SSO,
    TEAM_FOLDERS,
    TEAM_POLICIES,
    TEAM_PROFILE,
    TFA,
    OTHER;

    class Serializer extends UnionSerializer<EventCategory> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(EventCategory eventCategory, g gVar) throws IOException {
            switch (eventCategory) {
                case ACCOUNT_CAPTURE:
                    gVar.b("account_capture");
                    break;
                case ADMINISTRATION:
                    gVar.b("administration");
                    break;
                case APPS:
                    gVar.b(AppsForYourDomainService.APPS_SERVICE);
                    break;
                case AUTHENTICATION:
                    gVar.b("authentication");
                    break;
                case COMMENTS:
                    gVar.b("comments");
                    break;
                case CONTENT_ACCESS:
                    gVar.b("content_access");
                    break;
                case DEVICES:
                    gVar.b("devices");
                    break;
                case DEVICE_APPROVALS:
                    gVar.b("device_approvals");
                    break;
                case DOMAINS:
                    gVar.b("domains");
                    break;
                case EMM:
                    gVar.b("emm");
                    break;
                case ERRORS:
                    gVar.b("errors");
                    break;
                case FILES:
                    gVar.b("files");
                    break;
                case FILE_OPERATIONS:
                    gVar.b("file_operations");
                    break;
                case FILE_REQUESTS:
                    gVar.b("file_requests");
                    break;
                case GROUPS:
                    gVar.b("groups");
                    break;
                case LOGINS:
                    gVar.b("logins");
                    break;
                case MEMBERS:
                    gVar.b("members");
                    break;
                case PAPER:
                    gVar.b("paper");
                    break;
                case PASSWORDS:
                    gVar.b("passwords");
                    break;
                case REPORTS:
                    gVar.b("reports");
                    break;
                case SESSIONS:
                    gVar.b("sessions");
                    break;
                case SHARED_FILES:
                    gVar.b("shared_files");
                    break;
                case SHARED_FOLDERS:
                    gVar.b("shared_folders");
                    break;
                case SHARED_LINKS:
                    gVar.b("shared_links");
                    break;
                case SHARING:
                    gVar.b("sharing");
                    break;
                case SHARING_POLICIES:
                    gVar.b("sharing_policies");
                    break;
                case SSO:
                    gVar.b(AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_LOGIN_SSO);
                    break;
                case TEAM_FOLDERS:
                    gVar.b("team_folders");
                    break;
                case TEAM_POLICIES:
                    gVar.b("team_policies");
                    break;
                case TEAM_PROFILE:
                    gVar.b("team_profile");
                    break;
                case TFA:
                    gVar.b("tfa");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public EventCategory deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            EventCategory eventCategory;
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
            if ("account_capture".equals(tag)) {
                eventCategory = EventCategory.ACCOUNT_CAPTURE;
            } else if ("administration".equals(tag)) {
                eventCategory = EventCategory.ADMINISTRATION;
            } else if (AppsForYourDomainService.APPS_SERVICE.equals(tag)) {
                eventCategory = EventCategory.APPS;
            } else if ("authentication".equals(tag)) {
                eventCategory = EventCategory.AUTHENTICATION;
            } else if ("comments".equals(tag)) {
                eventCategory = EventCategory.COMMENTS;
            } else if ("content_access".equals(tag)) {
                eventCategory = EventCategory.CONTENT_ACCESS;
            } else if ("devices".equals(tag)) {
                eventCategory = EventCategory.DEVICES;
            } else if ("device_approvals".equals(tag)) {
                eventCategory = EventCategory.DEVICE_APPROVALS;
            } else if ("domains".equals(tag)) {
                eventCategory = EventCategory.DOMAINS;
            } else if ("emm".equals(tag)) {
                eventCategory = EventCategory.EMM;
            } else if ("errors".equals(tag)) {
                eventCategory = EventCategory.ERRORS;
            } else if ("files".equals(tag)) {
                eventCategory = EventCategory.FILES;
            } else if ("file_operations".equals(tag)) {
                eventCategory = EventCategory.FILE_OPERATIONS;
            } else if ("file_requests".equals(tag)) {
                eventCategory = EventCategory.FILE_REQUESTS;
            } else if ("groups".equals(tag)) {
                eventCategory = EventCategory.GROUPS;
            } else if ("logins".equals(tag)) {
                eventCategory = EventCategory.LOGINS;
            } else if ("members".equals(tag)) {
                eventCategory = EventCategory.MEMBERS;
            } else if ("paper".equals(tag)) {
                eventCategory = EventCategory.PAPER;
            } else if ("passwords".equals(tag)) {
                eventCategory = EventCategory.PASSWORDS;
            } else if ("reports".equals(tag)) {
                eventCategory = EventCategory.REPORTS;
            } else if ("sessions".equals(tag)) {
                eventCategory = EventCategory.SESSIONS;
            } else if ("shared_files".equals(tag)) {
                eventCategory = EventCategory.SHARED_FILES;
            } else if ("shared_folders".equals(tag)) {
                eventCategory = EventCategory.SHARED_FOLDERS;
            } else if ("shared_links".equals(tag)) {
                eventCategory = EventCategory.SHARED_LINKS;
            } else if ("sharing".equals(tag)) {
                eventCategory = EventCategory.SHARING;
            } else if ("sharing_policies".equals(tag)) {
                eventCategory = EventCategory.SHARING_POLICIES;
            } else if (AdobeAnalyticsETSAuthEvent.ADOBE_ETS_ENVIRONMENT_LOGIN_SSO.equals(tag)) {
                eventCategory = EventCategory.SSO;
            } else if ("team_folders".equals(tag)) {
                eventCategory = EventCategory.TEAM_FOLDERS;
            } else if ("team_policies".equals(tag)) {
                eventCategory = EventCategory.TEAM_POLICIES;
            } else if ("team_profile".equals(tag)) {
                eventCategory = EventCategory.TEAM_PROFILE;
            } else if ("tfa".equals(tag)) {
                eventCategory = EventCategory.TFA;
            } else {
                eventCategory = EventCategory.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return eventCategory;
        }
    }
}
