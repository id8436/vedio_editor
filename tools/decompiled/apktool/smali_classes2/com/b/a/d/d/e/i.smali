.class public Lcom/b/a/d/d/e/i;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b",
        "<",
        "Lcom/b/a/d/c/j;",
        "Lcom/b/a/d/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Lcom/b/a/d/c/j;",
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/f",
            "<",
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b",
            "<",
            "Lcom/b/a/d/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/g/b;Lcom/b/a/g/b;Lcom/b/a/d/b/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/b",
            "<",
            "Lcom/b/a/d/c/j;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/b/a/g/b",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/b/a/d/d/d/b;",
            ">;",
            "Lcom/b/a/d/b/a/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/b/a/d/d/e/c;

    invoke-interface {p1}, Lcom/b/a/g/b;->b()Lcom/b/a/d/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/b/a/g/b;->b()Lcom/b/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/b/a/d/d/e/c;-><init>(Lcom/b/a/d/e;Lcom/b/a/d/e;Lcom/b/a/d/b/a/e;)V

    .line 36
    new-instance v1, Lcom/b/a/d/d/c/c;

    new-instance v2, Lcom/b/a/d/d/e/g;

    invoke-direct {v2, v0}, Lcom/b/a/d/d/e/g;-><init>(Lcom/b/a/d/e;)V

    invoke-direct {v1, v2}, Lcom/b/a/d/d/c/c;-><init>(Lcom/b/a/d/e;)V

    iput-object v1, p0, Lcom/b/a/d/d/e/i;->a:Lcom/b/a/d/e;

    .line 37
    iput-object v0, p0, Lcom/b/a/d/d/e/i;->b:Lcom/b/a/d/e;

    .line 38
    new-instance v0, Lcom/b/a/d/d/e/f;

    invoke-interface {p1}, Lcom/b/a/g/b;->d()Lcom/b/a/d/f;

    move-result-object v1

    invoke-interface {p2}, Lcom/b/a/g/b;->d()Lcom/b/a/d/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/d/e/f;-><init>(Lcom/b/a/d/f;Lcom/b/a/d/f;)V

    iput-object v0, p0, Lcom/b/a/d/d/e/i;->c:Lcom/b/a/d/f;

    .line 41
    invoke-interface {p1}, Lcom/b/a/g/b;->c()Lcom/b/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/d/e/i;->d:Lcom/b/a/d/b;

    .line 42
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
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/d/d/e/i;->a:Lcom/b/a/d/e;

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
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/b/a/d/d/e/i;->b:Lcom/b/a/d/e;

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
    .line 56
    iget-object v0, p0, Lcom/b/a/d/d/e/i;->d:Lcom/b/a/d/b;

    return-object v0
.end method

.method public d()Lcom/b/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/f",
            "<",
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/b/a/d/d/e/i;->c:Lcom/b/a/d/f;

    return-object v0
.end method
