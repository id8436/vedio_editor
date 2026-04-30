.class public Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;
.super Ljava/lang/Object;
.source "BehanceSDKCustomResourcesOptions.java"


# instance fields
.field private appColor:I

.field private appSmallIcon:I

.field private appTitle:I

.field private phoneOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_notification_publish_progress:I

    iput v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appSmallIcon:I

    .line 11
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_title:I

    iput v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appTitle:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->phoneOrientation:I

    .line 13
    const v0, -0xffa301

    iput v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appColor:I

    return-void
.end method


# virtual methods
.method public getAppColor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appColor:I

    return v0
.end method

.method public getAppSmallIcon()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appSmallIcon:I

    return v0
.end method

.method public getAppTitle()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appTitle:I

    return v0
.end method

.method public getPhoneOrientation()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->phoneOrientation:I

    return v0
.end method

.method public setAppColor(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appColor:I

    .line 37
    return-void
.end method

.method public setAppSmallIcon(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appSmallIcon:I

    .line 21
    return-void
.end method

.method public setAppTitle(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->appTitle:I

    .line 29
    return-void
.end method

.method public setPhoneOrientation(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->phoneOrientation:I

    .line 45
    return-void
.end method
