.class public Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
.super Ljava/lang/Object;
.source "AdobeAuthUserProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected accountType:Ljava/lang/String;

.field protected adobeID:Ljava/lang/String;

.field protected countryCode:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected email:Ljava/lang/String;

.field protected emailVerified:Z

.field protected firstName:Ljava/lang/String;

.field protected isEnterprise:Z

.field protected lastName:Ljava/lang/String;

.field protected licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->adobeID:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->displayName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->firstName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->lastName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->email:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->emailVerified:Z

    .line 39
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->description:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->countryCode:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->accountType:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusUnknown:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    .line 54
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->isEnterprise:Z

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdobeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->adobeID:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseStatus()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    return-object v0
.end method

.method public isEmailVerified()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->emailVerified:Z

    return v0
.end method

.method public isEnterpriseUser()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->isEnterprise:Z

    return v0
.end method
