package com.behance.sdk.dto;

import com.behance.sdk.enums.BehanceSDKSocialAccountType;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKSocialAccountDTO {
    private String accountClientId;
    private String accountClientSecret;
    private int accountDisplayNameResourceId;
    private BehanceSDKSocialAccountType accountType;
    private String additionalData;
    private boolean sharingEnabledLastTime;
    private String userAuthToken;
    private long userAuthTokenExpiryTime;
    private boolean userAuthenticated;
    private String userId;

    public String getAccountClientId() {
        return this.accountClientId;
    }

    public void setAccountClientId(String str) {
        this.accountClientId = str;
    }

    public String getAccountClientSecret() {
        return this.accountClientSecret;
    }

    public void setAccountClientSecret(String str) {
        this.accountClientSecret = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public int getAccountDisplayNameResourceId() {
        return this.accountDisplayNameResourceId;
    }

    public void setAccountDisplayNameResourceId(int i) {
        this.accountDisplayNameResourceId = i;
    }

    public String getUserAuthToken() {
        return this.userAuthToken;
    }

    public void setUserAuthToken(String str) {
        this.userAuthToken = str;
    }

    public long getUserAuthTokenExpiryTime() {
        return this.userAuthTokenExpiryTime;
    }

    public void setUserAuthTokenExpiryTime(long j) {
        this.userAuthTokenExpiryTime = j;
    }

    public BehanceSDKSocialAccountType getAccountType() {
        return this.accountType;
    }

    public void setAccountType(BehanceSDKSocialAccountType behanceSDKSocialAccountType) {
        this.accountType = behanceSDKSocialAccountType;
    }

    public String getAdditionalData() {
        return this.additionalData;
    }

    public void setAdditionalData(String str) {
        this.additionalData = str;
    }

    public boolean isSharingEnabledLastTime() {
        return this.sharingEnabledLastTime;
    }

    public void setSharingEnabledLastTime(boolean z) {
        this.sharingEnabledLastTime = z;
    }

    public boolean isUserAuthenticated() {
        return this.userAuthenticated;
    }

    public void setUserAuthenticated(boolean z) {
        this.userAuthenticated = z;
    }
}
