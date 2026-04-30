.class public Lcom/facebook/imagepipeline/i/a;
.super Ljava/lang/Object;
.source "ForwardingRequestListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/i/b;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/i/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/i/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 31
    iget-object v2, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/imagepipeline/i/b;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 189
    const-string/jumbo v0, "ForwardingRequestListener"

    invoke-static {v0, p1, p2}, Lcom/facebook/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 46
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/i/b;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v3, "InternalListener exception in onRequestStart"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 52
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 155
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/i/b;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 158
    const-string/jumbo v3, "InternalListener exception in onRequestFailure"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 134
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 137
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/i/b;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    const-string/jumbo v3, "InternalListener exception in onRequestSuccess"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 169
    :try_start_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/i/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    const-string/jumbo v3, "InternalListener exception in onRequestCancellation"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 175
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 60
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/i/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    const-string/jumbo v3, "InternalListener exception in onProducerStart"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 123
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    const-string/jumbo v3, "InternalListener exception in onIntermediateChunkStart"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 129
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 4
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 93
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    const-string/jumbo v3, "InternalListener exception in onProducerFinishWithFailure"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 75
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v3, "InternalListener exception in onProducerFinishWithSuccess"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    .line 108
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/i/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    const-string/jumbo v3, "InternalListener exception in onProducerFinishWithCancellation"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/i/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 180
    :goto_0
    if-ge v2, v3, :cond_1

    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/i/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/i/b;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/i/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 185
    :goto_1
    return v0

    .line 180
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 185
    goto :goto_1
.end method
