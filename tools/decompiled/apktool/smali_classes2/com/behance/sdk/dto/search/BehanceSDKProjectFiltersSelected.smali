.class public Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;
.super Ljava/lang/Object;
.source "BehanceSDKProjectFiltersSelected.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4370d9f572b067e6L


# instance fields
.field private cityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

.field private countryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

.field private creativeFieldDTO:Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

.field private projectSortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

.field private searchString:Ljava/lang/String;

.field private stateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityDTO()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->cityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    return-object v0
.end method

.method public getCountryDTO()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->countryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    return-object v0
.end method

.method public getCreativeFieldDTO()Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->creativeFieldDTO:Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->projectSortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    return-object v0
.end method

.method public getStateDTO()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->stateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    return-object v0
.end method

.method public setCityDTO(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->cityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 114
    return-void
.end method

.method public setCountryDTO(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->countryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 86
    return-void
.end method

.method public setCreativeFieldDTO(Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->creativeFieldDTO:Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 72
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->searchString:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->projectSortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    .line 128
    return-void
.end method

.method public setStateDTO(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->stateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 100
    return-void
.end method
