.class public Lcom/facebook/imagepipeline/b/a;
.super Lcom/facebook/imagepipeline/b/f;
.source "ArtBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/h;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/h;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/imagepipeline/b/f;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/imagepipeline/b/a;->a:Lcom/facebook/imagepipeline/memory/h;

    .line 45
    return-void
.end method
