.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetCitiesAsyncTaskParams.java"


# instance fields
.field private citySearchStr:Ljava/lang/String;

.field private countryId:Ljava/lang/String;

.field private stateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    instance-of v1, p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    .line 40
    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 54
    :cond_5
    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCitySearchStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->citySearchStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->countryId:Ljava/lang/String;

    return-object v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->stateId:Ljava/lang/String;

    return-object v0
.end method

.method public setCitySearchStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->citySearchStr:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->countryId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setStateId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->stateId:Ljava/lang/String;

    .line 26
    return-void
.end method
