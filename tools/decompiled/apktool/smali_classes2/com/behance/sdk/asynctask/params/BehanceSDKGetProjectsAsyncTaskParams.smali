.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;
.source "BehanceSDKGetProjectsAsyncTaskParams.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private fieldId:Ljava/lang/String;

.field private sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

.field private state:Ljava/lang/String;

.field private timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public compareSearchFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    iget-object v2, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    iget-object v2, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->fieldId:Ljava/lang/String;

    iget-object v2, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->fieldId:Ljava/lang/String;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->fieldId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->fieldId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getFieldId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->country:Ljava/lang/String;

    iget-object v2, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->country:Ljava/lang/String;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->country:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->country:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->state:Ljava/lang/String;

    iget-object v2, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->state:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->state:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->state:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->city:Ljava/lang/String;

    iget-object v2, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->city:Ljava/lang/String;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->city:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->city:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-super {p0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->compareSearchFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->fieldId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->city:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->country:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFieldId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->fieldId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->sortOption:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    .line 45
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->state:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setTimeSpan(Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->timeSpan:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    .line 53
    return-void
.end method
