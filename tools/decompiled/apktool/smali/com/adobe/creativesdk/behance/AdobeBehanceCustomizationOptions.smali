.class public Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;
.super Ljava/lang/Object;
.source "AdobeBehanceCustomizationOptions.java"


# instance fields
.field private mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    .line 20
    return-void
.end method


# virtual methods
.method public getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    return-object v0
.end method

.method public setAppColor(I)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->setAppColor(I)V

    .line 48
    return-void
.end method

.method public setAppSmallIcon(I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->setAppSmallIcon(I)V

    .line 39
    return-void
.end method

.method public setAppTitle(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->setAppTitle(I)V

    .line 58
    return-void
.end method

.method public setBehancePhoneDisplay(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->mBehanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->setPhoneOrientation(I)V

    .line 66
    return-void
.end method
