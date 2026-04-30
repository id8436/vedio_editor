.class public Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;
.super Ljava/lang/Object;
.source "ClipRendererResourcePool.java"


# static fields
.field private static final NUMBER_OF_RESOURCES:I = 0x4

.field private static final NUMBER_OF_RESOURCES_PER_TRACK:I = 0x2

.field private static final NUMBER_OF_TRACKS:I = 0x2


# instance fields
.field private clipRendererResourcesInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    new-instance v2, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    new-instance v3, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-direct {v3, p1, p2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;IILcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getResources(I)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForClipIndex(II)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    .line 71
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$200(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 72
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 75
    :cond_1
    rem-int/lit8 v0, p2, 0x2

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    .line 78
    invoke-static {v0, p2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$202(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;I)I

    .line 79
    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$302(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;I)I

    .line 82
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v0

    goto :goto_0
.end method

.method public initResources(II)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    .line 59
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v0

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, p1, p2, v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->init(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    .line 65
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->setMaxSize(II)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->clipRendererResourcesInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;

    .line 91
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->release()V

    .line 92
    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$202(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;I)I

    .line 93
    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->access$302(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;I)I

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method
