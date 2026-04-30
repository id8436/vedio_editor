.class public Lcom/facebook/imagepipeline/b/e;
.super Lcom/facebook/imagepipeline/b/f;
.source "HoneycombBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/b/b;

.field private final b:Lcom/facebook/imagepipeline/j/e;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/b/b;Lcom/facebook/imagepipeline/j/e;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/imagepipeline/b/f;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/imagepipeline/b/e;->a:Lcom/facebook/imagepipeline/b/b;

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/b/e;->b:Lcom/facebook/imagepipeline/j/e;

    .line 39
    return-void
.end method
