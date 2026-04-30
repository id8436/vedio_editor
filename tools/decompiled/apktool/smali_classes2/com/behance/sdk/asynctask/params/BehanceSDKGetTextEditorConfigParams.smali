.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetTextEditorConfigParams.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->context:Landroid/content/Context;

    .line 19
    return-void
.end method
