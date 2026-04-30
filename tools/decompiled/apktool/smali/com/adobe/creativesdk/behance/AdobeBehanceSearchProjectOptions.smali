.class public Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;
.super Ljava/lang/Object;
.source "AdobeBehanceSearchProjectOptions.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private field:Ljava/lang/String;

.field private pageNumber:I

.field private searchString:Ljava/lang/String;

.field private sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

.field private state:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->pageNumber:I

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->city:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->country:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->field:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->pageNumber:I

    .line 168
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->searchString:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    .line 65
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->state:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->tags:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setTimeSpan(Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    .line 82
    return-void
.end method
