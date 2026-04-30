.class public Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;
.super Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;
.source "GroupedMediaSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public fetchData(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;Landroid/content/Context;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    return-void
.end method
