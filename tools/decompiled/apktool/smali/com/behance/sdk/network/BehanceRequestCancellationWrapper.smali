.class public Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;
.super Ljava/lang/Object;
.source "BehanceRequestCancellationWrapper.java"


# instance fields
.field private cancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;->cancelled:Z

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;->cancelled:Z

    return v0
.end method

.method public setCancelled()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;->cancelled:Z

    .line 12
    return-void
.end method
