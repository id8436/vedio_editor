.class public Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;
.super Ljava/lang/Object;
.source "BehanceSDKUserSettingsOnServerDTO.java"


# instance fields
.field private safeBrowsingOn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeBrowsingOn()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;->safeBrowsingOn:Z

    return v0
.end method

.method public setSafeBrowsingOn(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;->safeBrowsingOn:Z

    .line 36
    return-void
.end method
