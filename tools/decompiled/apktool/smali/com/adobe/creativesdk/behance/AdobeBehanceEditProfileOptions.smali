.class public Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;
.super Ljava/lang/Object;
.source "AdobeBehanceEditProfileOptions.java"


# instance fields
.field private mBehanceSDKEditProfileOptions:Lcom/behance/sdk/BehanceSDKEditProfileOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/behance/sdk/BehanceSDKEditProfileOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKEditProfileOptions;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;->mBehanceSDKEditProfileOptions:Lcom/behance/sdk/BehanceSDKEditProfileOptions;

    .line 35
    return-void
.end method


# virtual methods
.method public getBehanceSDKEditProfileOptions()Lcom/behance/sdk/BehanceSDKEditProfileOptions;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;->mBehanceSDKEditProfileOptions:Lcom/behance/sdk/BehanceSDKEditProfileOptions;

    return-object v0
.end method

.method public isEnableAlternateImageSelectionSources()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;->mBehanceSDKEditProfileOptions:Lcom/behance/sdk/BehanceSDKEditProfileOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKEditProfileOptions;->isEnableAlternateImageSelectionSources()Z

    move-result v0

    return v0
.end method

.method public setEnableAlternateImageSelectionSources(Z)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;->mBehanceSDKEditProfileOptions:Lcom/behance/sdk/BehanceSDKEditProfileOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKEditProfileOptions;->setEnableAlternateImageSelectionSources(Z)V

    .line 52
    return-void
.end method
