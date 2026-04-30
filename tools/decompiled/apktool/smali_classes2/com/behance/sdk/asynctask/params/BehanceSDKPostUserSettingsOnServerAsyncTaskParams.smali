.class public Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKPostUserSettingsOnServerAsyncTaskParams.java"


# instance fields
.field private settings:Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettings()Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;->settings:Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;

    return-object v0
.end method

.method public setSettings(Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;->settings:Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;

    .line 39
    return-void
.end method
