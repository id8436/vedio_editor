.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectCopyrightDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private licenseDescription:Ljava/lang/String;

.field private licenseType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayNameResourceId()I
    .locals 3

    .prologue
    .line 50
    const/4 v0, -0x1

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "no-use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_no_use_at_all:I

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "cc by"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_cc_by:I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "cc by-sa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_cc_by_sa:I

    goto :goto_0

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "cc by-nd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_cc_by_nd:I

    goto :goto_0

    .line 60
    :cond_4
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "cc by-nc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_cc_by_nc:I

    goto :goto_0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "cc by-nc-sa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_cc_by_nc_sa:I

    goto :goto_0

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    const-string/jumbo v2, "cc by-nc-nd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget v0, Lcom/behance/sdk/R$string;->bsdk_license_cc_by_nc_nd:I

    goto :goto_0
.end method

.method public getLicenseDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    return-object v0
.end method

.method public setLicenseDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLicenseType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->licenseType:Ljava/lang/String;

    .line 39
    return-void
.end method
