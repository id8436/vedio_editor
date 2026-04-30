.class public Lcom/adobe/creativesdk/behance/AdobeBehanceAddProjectWorkflowOptions;
.super Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;
.source "AdobeBehanceAddProjectWorkflowOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;-><init>()V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;-><init>(Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected getAddProjectWorkflowOptions()Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceAddProjectWorkflowOptions;->getBehanceSDKPublishOptions()Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;

    return-object v0
.end method
