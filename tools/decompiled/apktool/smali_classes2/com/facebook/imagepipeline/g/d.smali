.class public Lcom/facebook/imagepipeline/g/d;
.super Ljava/lang/Object;
.source "ImageDecoderConfig.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/g/c;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/g/d;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/g/c;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/g/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/d;->b:Ljava/util/List;

    return-object v0
.end method
