.class public Lcom/behance/sdk/BehanceSDKSearchProjectOptions;
.super Ljava/lang/Object;
.source "BehanceSDKSearchProjectOptions.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private field:Ljava/lang/String;

.field private fieldId:Ljava/lang/String;

.field private pageNumber:I

.field private pageSize:I

.field private searchString:Ljava/lang/String;

.field private sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

.field private state:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->fieldId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->pageNumber:I

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->city:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->country:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->field:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setFieldId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->fieldId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->pageNumber:I

    .line 106
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->searchString:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    .line 29
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->state:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->tags:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setTimeSpan(Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    .line 37
    return-void
.end method
