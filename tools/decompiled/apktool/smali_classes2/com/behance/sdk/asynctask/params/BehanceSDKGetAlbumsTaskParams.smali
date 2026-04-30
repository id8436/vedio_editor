.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;
.super Ljava/lang/Object;
.source "BehanceSDKGetAlbumsTaskParams.java"


# instance fields
.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private showImageSelectionSources:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public isShowImageSelectionSources()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->showImageSelectionSources:Z

    return v0
.end method

.method public setContextWeakReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method public setShowImageSelectionSources(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->showImageSelectionSources:Z

    .line 44
    return-void
.end method
