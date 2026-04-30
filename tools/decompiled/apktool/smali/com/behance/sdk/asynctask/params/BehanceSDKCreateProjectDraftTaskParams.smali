.class public Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKCreateProjectDraftTaskParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private options:Lcom/behance/sdk/BehanceSDKProjectDraftOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getBehanceSDKProjectDraftOptions()Lcom/behance/sdk/BehanceSDKProjectDraftOptions;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;->options:Lcom/behance/sdk/BehanceSDKProjectDraftOptions;

    return-object v0
.end method

.method public setBehanceSDKProjectDraftOptions(Lcom/behance/sdk/BehanceSDKProjectDraftOptions;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;->options:Lcom/behance/sdk/BehanceSDKProjectDraftOptions;

    .line 15
    return-void
.end method
