package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.data.Link;
import com.google.gdata.data.appsforyourdomain.AppsForYourDomainErrorCode;
import com.google.gdata.data.appsforyourdomain.AppsForYourDomainException;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.data.appsforyourdomain.generic.GenericFeed;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import java.util.List;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class AppsGroupsService extends AppsPropertyService {
    public static final String APPS_PROP_GROUP_DESC = "description";
    public static final String APPS_PROP_GROUP_EMAIL = "email";
    public static final String APPS_PROP_GROUP_ID = "groupId";
    public static final String APPS_PROP_GROUP_MEMBER_ID = "memberId";
    public static final String APPS_PROP_GROUP_NAME = "groupName";
    public static final String APPS_PROP_GROUP_PERMISSION = "emailPermission";
    public static final String APPS_PROP_GROUP_ROLE = "role";
    public static final String BASE_URL = "https://apps-apis.google.com/a/feeds/group/2.0/";
    public final String baseDomainUrl;

    public AppsGroupsService(String str, String str2, String str3, String str4) throws AuthenticationException {
        this(str3, str4);
        setUserCredentials(str, str2);
    }

    public AppsGroupsService(String str, String str2) throws AuthenticationException {
        super(str2);
        this.baseDomainUrl = BASE_URL + str + URIUtil.SLASH;
    }

    public GenericFeed getNextPage(Link link) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(link.getHref()), GenericFeed.class);
    }

    public boolean doesEntityExist(String str) throws IOException, ServiceException {
        try {
            return ((GenericEntry) getEntry(new URL(new StringBuilder().append(this.baseDomainUrl).append(str).toString()), GenericEntry.class)).getAllProperties().size() > 0;
        } catch (AppsForYourDomainException e2) {
            if (e2.getErrorCode() == AppsForYourDomainErrorCode.EntityDoesNotExist) {
                return false;
            }
            throw e2;
        }
    }

    public boolean isMember(String str, String str2) throws IOException, ServiceException {
        return doesEntityExist(str + "/member/" + str2);
    }

    public boolean isOwner(String str, String str2) throws IOException, ServiceException {
        return doesEntityExist(str + "/owner/" + str2);
    }

    public GenericEntry createGroup(String str, String str2, String str3, String str4) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty(APPS_PROP_GROUP_ID, str);
        genericEntry.addProperty(APPS_PROP_GROUP_NAME, str2);
        genericEntry.addProperty("description", str3);
        genericEntry.addProperty(APPS_PROP_GROUP_PERMISSION, str4);
        return (GenericEntry) insert(new URL(this.baseDomainUrl), genericEntry);
    }

    public GenericEntry updateGroup(String str, String str2, String str3, String str4) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        if (str2 != null && !str2.equals("")) {
            genericEntry.addProperty(APPS_PROP_GROUP_NAME, str2);
        }
        if (str3 != null && !str3.equals("")) {
            genericEntry.addProperty("description", str3);
        }
        if (str4 != null && !str4.equals("")) {
            genericEntry.addProperty(APPS_PROP_GROUP_PERMISSION, str4);
        }
        return genericEntry.getAllProperties().size() == 0 ? retrieveGroup(str) : (GenericEntry) update(new URL(this.baseDomainUrl + str), genericEntry);
    }

    public void deleteGroup(String str) throws IOException, ServiceException {
        delete(new URL(this.baseDomainUrl + str));
    }

    public GenericEntry retrieveGroup(String str) throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL(this.baseDomainUrl + str), GenericEntry.class);
    }

    public GenericEntry addMemberToGroup(String str, String str2) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty(APPS_PROP_GROUP_MEMBER_ID, str2);
        return (GenericEntry) insert(new URL(this.baseDomainUrl + str + "/member"), genericEntry);
    }

    public void deleteMemberFromGroup(String str, String str2) throws IOException, ServiceException {
        delete(new URL(this.baseDomainUrl + str + "/member/" + str2));
    }

    public GenericFeed retrieveAllMembers(String str) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(this.baseDomainUrl + str + "/member"), GenericFeed.class);
    }

    public GenericFeed retrievePageOfMembers(Link link) throws IOException, ServiceException {
        return getNextPage(link);
    }

    public GenericEntry addOwnerToGroup(String str, String str2) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("email", str2);
        return (GenericEntry) insert(new URL(this.baseDomainUrl + str + "/owner"), genericEntry);
    }

    public void removeOwnerFromGroup(String str, String str2) throws IOException, ServiceException {
        delete(new URL(this.baseDomainUrl + str2 + "/owner/" + str));
    }

    public GenericFeed retrieveAllGroups() throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(this.baseDomainUrl), GenericFeed.class);
    }

    public GenericFeed retrievePageOfGroups(Link link) throws IOException, ServiceException {
        return getNextPage(link);
    }

    public GenericFeed retrieveGroups(String str, boolean z) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(this.baseDomainUrl + "?member=" + str + "&directOnly=" + String.valueOf(z)), GenericFeed.class);
    }

    public GenericFeed retreiveGroupOwners(String str) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(this.baseDomainUrl + str + "/owner"), GenericFeed.class);
    }

    public List<GenericEntry> retrieveAllPagesOfGroups() throws IOException, ServiceException {
        return getAllPages(new URL(this.baseDomainUrl), GenericFeed.class);
    }
}
