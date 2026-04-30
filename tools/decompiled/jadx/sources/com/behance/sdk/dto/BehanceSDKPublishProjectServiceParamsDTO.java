package com.behance.sdk.dto;

import android.app.Activity;
import com.behance.sdk.project.modules.ProjectModule;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectServiceParamsDTO implements Serializable {
    private static final long serialVersionUID = -2119047587175999029L;
    private String appClientId;
    private Class<? extends Activity> notificationHandlerActivity;
    private boolean projectContainsAdultContent;
    private String projectCopyright;
    private byte[] projectCoverImageByteArray;
    private String projectCoverImageFileName;
    private String projectCreativeFields;
    private String projectDescription;
    private List<ProjectModule> projectModules;
    private String projectTags;
    private String projectTitle;
    private boolean shareOnFacebook;
    private boolean shareOnTwitter;
    private String twitterConsumerKey;
    private String twitterConsumerSecret;
    private String twitterUserAccessToken;
    private String twitterUserAccessTokenSecret;

    public String getAppClientId() {
        return this.appClientId;
    }

    public void setAppClientId(String str) {
        this.appClientId = str;
    }

    public Class<? extends Activity> getNotificationHandlerActivity() {
        return this.notificationHandlerActivity;
    }

    public void setNotificationHandlerActivity(Class<? extends Activity> cls) {
        this.notificationHandlerActivity = cls;
    }

    public List<ProjectModule> getProjectModules() {
        return this.projectModules;
    }

    public void setProjectModules(List<ProjectModule> list) {
        this.projectModules = list;
    }

    public String getProjectTitle() {
        return this.projectTitle;
    }

    public void setProjectTitle(String str) {
        this.projectTitle = str;
    }

    public String getProjectCreativeFields() {
        return this.projectCreativeFields;
    }

    public void setProjectCreativeFields(String str) {
        this.projectCreativeFields = str;
    }

    public String getProjectTags() {
        return this.projectTags;
    }

    public void setProjectTags(String str) {
        this.projectTags = str;
    }

    public String getProjectDescription() {
        return this.projectDescription;
    }

    public void setProjectDescription(String str) {
        this.projectDescription = str;
    }

    public String getProjectCopyright() {
        return this.projectCopyright;
    }

    public void setProjectCopyright(String str) {
        this.projectCopyright = str;
    }

    public boolean isProjectContainsAdultContent() {
        return this.projectContainsAdultContent;
    }

    public void setProjectContainsAdultContent(boolean z) {
        this.projectContainsAdultContent = z;
    }

    public byte[] getProjectCoverImageByteArray() {
        return this.projectCoverImageByteArray;
    }

    public void setProjectCoverImageByteArray(byte[] bArr) {
        this.projectCoverImageByteArray = bArr;
    }

    public String getProjectCoverImageFileName() {
        return this.projectCoverImageFileName;
    }

    public void setProjectCoverImageFileName(String str) {
        this.projectCoverImageFileName = str;
    }

    public String getTwitterUserAccessToken() {
        return this.twitterUserAccessToken;
    }

    public void setTwitterUserAccessToken(String str) {
        this.twitterUserAccessToken = str;
    }

    public String getTwitterUserAccessTokenSecret() {
        return this.twitterUserAccessTokenSecret;
    }

    public void setTwitterUserAccessTokenSecret(String str) {
        this.twitterUserAccessTokenSecret = str;
    }

    public String getTwitterConsumerKey() {
        return this.twitterConsumerKey;
    }

    public void setTwitterConsumerKey(String str) {
        this.twitterConsumerKey = str;
    }

    public String getTwitterConsumerSecret() {
        return this.twitterConsumerSecret;
    }

    public void setTwitterConsumerSecret(String str) {
        this.twitterConsumerSecret = str;
    }

    public boolean isShareOnFacebook() {
        return this.shareOnFacebook;
    }

    public void setShareOnFacebook(boolean z) {
        this.shareOnFacebook = z;
    }

    public boolean isShareOnTwitter() {
        return this.shareOnTwitter;
    }

    public void setShareOnTwitter(boolean z) {
        this.shareOnTwitter = z;
    }
}
