.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaFilterGroup.java"


# instance fields
.field protected mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field protected mMergedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;-><init>(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->updateMergedFilters()V

    goto :goto_0
.end method

.method private destroyFramebuffers()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 100
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDestroy()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V
    .locals 1

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->updateMergedFilters()V

    goto :goto_0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getMergedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->destroyFramebuffers()V

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 94
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->destroy()V

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->runPendingOnDrawTasks()V

    .line 155
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-nez v0, :cond_1

    .line 170
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 160
    :goto_0
    if-ge v3, v4, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 162
    add-int/lit8 v1, v4, -0x1

    if-ge v3, v1, :cond_2

    const/4 v1, 0x1

    .line 163
    :goto_1
    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 160
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 162
    goto :goto_1

    .line 166
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_2
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 82
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->init()V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->destroyFramebuffers()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 123
    :goto_0
    if-ge v2, v3, :cond_1

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    if-eqz v0, :cond_2

    if-lez v3, :cond_2

    .line 128
    add-int/lit8 v0, v3, -0x1

    new-array v0, v0, [Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 130
    :goto_1
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    new-instance v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p1, p2, v4, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    aput-object v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFrameBuffers:[Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 135
    :cond_2
    return-void
.end method

.method public setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 107
    return-void
.end method

.method public updateMergedFilters()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    if-nez v0, :cond_3

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 193
    instance-of v1, v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 194
    check-cast v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->updateMergedFilters()V

    .line 195
    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->getMergedFilters()Ljava/util/List;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public updateSurface()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 147
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->updateSurface()V

    .line 145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method
