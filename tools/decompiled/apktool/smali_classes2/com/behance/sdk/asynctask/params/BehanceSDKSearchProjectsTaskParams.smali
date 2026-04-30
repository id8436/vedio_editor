.class public Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKSearchProjectsTaskParams.java"


# static fields
.field public static final DEFAULT_PAGE_SIZE:I = 0xc


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

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
    .line 30
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public compareSearchFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;)Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageNumber:I

    iget v1, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageNumber:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageSize:I

    iget v1, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageSize:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->searchString:Ljava/lang/String;

    iget-object v1, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->searchString:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->searchString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->searchString:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->fieldId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageNumber:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageSize:I

    if-lez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageSize:I

    .line 126
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->city:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->country:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setFieldId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->fieldId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageNumber:I

    .line 120
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->pageSize:I

    .line 132
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->searchString:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    .line 51
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->state:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->tags:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setTimeSpan(Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    .line 59
    return-void
.end method
