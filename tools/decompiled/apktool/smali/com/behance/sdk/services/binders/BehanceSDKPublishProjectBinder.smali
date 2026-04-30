.class public Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;
.super Landroid/os/Binder;
.source "BehanceSDKPublishProjectBinder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cancelledRequestIdsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelUpload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->cancelledRequestIdsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->cancelledRequestIdsList:Ljava/util/List;

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->cancelledRequestIdsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    return-void
.end method

.method public isUploadCancelled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->cancelledRequestIdsList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->cancelledRequestIdsList:Ljava/util/List;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
