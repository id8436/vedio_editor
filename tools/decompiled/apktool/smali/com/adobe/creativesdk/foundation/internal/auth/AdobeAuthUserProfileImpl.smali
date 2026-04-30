.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;
.super Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
.source "AdobeAuthUserProfileImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->accountType:Ljava/lang/String;

    return-void
.end method

.method public setAdobeID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->adobeID:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCountrycode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->description:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->displayName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->email:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setEmailVerified(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->emailVerified:Z

    .line 54
    return-void
.end method

.method public setEnterprise(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->isEnterprise:Z

    .line 62
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->firstName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->lastName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLicenseStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string/jumbo v0, "PAID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusPaid:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string/jumbo v0, "TRIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusTrial:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    goto :goto_0

    .line 74
    :cond_2
    const-string/jumbo v0, "FREE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusFree:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    goto :goto_0

    .line 77
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusUnknown:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->licenseStatus:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    goto :goto_0
.end method
