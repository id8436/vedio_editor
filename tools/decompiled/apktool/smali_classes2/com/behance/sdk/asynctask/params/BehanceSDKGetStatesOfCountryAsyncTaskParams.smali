.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetStatesOfCountryAsyncTaskParams.java"


# instance fields
.field private countryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;->countryId:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;->countryId:Ljava/lang/String;

    .line 16
    return-void
.end method
