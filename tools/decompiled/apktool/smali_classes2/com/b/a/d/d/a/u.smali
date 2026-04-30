.class public Lcom/b/a/d/d/a/u;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b",
        "<",
        "Lcom/b/a/d/c/j;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/d/a/t;

.field private final b:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/a/d/c/k;


# direct methods
.method public constructor <init>(Lcom/b/a/g/b;Lcom/b/a/g/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/b",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/b/a/g/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/b/a/g/b;->d()Lcom/b/a/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/d/a/u;->c:Lcom/b/a/d/f;

    .line 29
    new-instance v0, Lcom/b/a/d/c/k;

    invoke-interface {p1}, Lcom/b/a/g/b;->c()Lcom/b/a/d/b;

    move-result-object v1

    invoke-interface {p2}, Lcom/b/a/g/b;->c()Lcom/b/a/d/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/c/k;-><init>(Lcom/b/a/d/b;Lcom/b/a/d/b;)V

    iput-object v0, p0, Lcom/b/a/d/d/a/u;->d:Lcom/b/a/d/c/k;

    .line 31
    invoke-interface {p1}, Lcom/b/a/g/b;->a()Lcom/b/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/d/a/u;->b:Lcom/b/a/d/e;

    .line 32
    new-instance v0, Lcom/b/a/d/d/a/t;

    invoke-interface {p1}, Lcom/b/a/g/b;->b()Lcom/b/a/d/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/b/a/g/b;->b()Lcom/b/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/d/a/t;-><init>(Lcom/b/a/d/e;Lcom/b/a/d/e;)V

    iput-object v0, p0, Lcom/b/a/d/d/a/u;->a:Lcom/b/a/d/d/a/t;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/b/a/d/d/a/u;->b:Lcom/b/a/d/e;

    return-object v0
.end method

.method public b()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Lcom/b/a/d/c/j;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/d/d/a/u;->a:Lcom/b/a/d/d/a/t;

    return-object v0
.end method

.method public c()Lcom/b/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b",
            "<",
            "Lcom/b/a/d/c/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/b/a/d/d/a/u;->d:Lcom/b/a/d/c/k;

    return-object v0
.end method

.method public d()Lcom/b/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/b/a/d/d/a/u;->c:Lcom/b/a/d/f;

    return-object v0
.end method
