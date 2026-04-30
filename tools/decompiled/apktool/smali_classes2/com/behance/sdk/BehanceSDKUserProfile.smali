.class public Lcom/behance/sdk/BehanceSDKUserProfile;
.super Ljava/lang/Object;
.source "BehanceSDKUserProfile.java"


# instance fields
.field private city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

.field private company:Ljava/lang/String;

.field private country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->website:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 72
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->company:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCountry(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 80
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->firstName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->lastName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->occupation:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->profileImageUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 92
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUserProfile;->website:Ljava/lang/String;

    .line 56
    return-void
.end method
