.class public Lcom/b/a/d/d/d/d;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/b/a/d/d/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/d/d/p;

.field private final b:Lcom/b/a/d/d/d/s;

.field private final c:Lcom/b/a/d/c/v;

.field private final d:Lcom/b/a/d/d/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/d/c/c",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/d/b/a/e;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/b/a/d/d/d/p;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/d/d/p;-><init>(Landroid/content/Context;Lcom/b/a/d/b/a/e;)V

    iput-object v0, p0, Lcom/b/a/d/d/d/d;->a:Lcom/b/a/d/d/d/p;

    .line 28
    new-instance v0, Lcom/b/a/d/d/c/c;

    iget-object v1, p0, Lcom/b/a/d/d/d/d;->a:Lcom/b/a/d/d/d/p;

    invoke-direct {v0, v1}, Lcom/b/a/d/d/c/c;-><init>(Lcom/b/a/d/e;)V

    iput-object v0, p0, Lcom/b/a/d/d/d/d;->d:Lcom/b/a/d/d/c/c;

    .line 29
    new-instance v0, Lcom/b/a/d/d/d/s;

    invoke-direct {v0, p2}, Lcom/b/a/d/d/d/s;-><init>(Lcom/b/a/d/b/a/e;)V

    iput-object v0, p0, Lcom/b/a/d/d/d/d;->b:Lcom/b/a/d/d/d/s;

    .line 30
    new-instance v0, Lcom/b/a/d/c/v;

    invoke-direct {v0}, Lcom/b/a/d/c/v;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d/d/d;->c:Lcom/b/a/d/c/v;

    .line 31
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
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/b/a/d/d/d/d;->d:Lcom/b/a/d/d/c/c;

    return-object v0
.end method

.method public b()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/b/a/d/d/d/d;->a:Lcom/b/a/d/d/d/p;

    return-object v0
.end method

.method public c()Lcom/b/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/b/a/d/d/d/d;->c:Lcom/b/a/d/c/v;

    return-object v0
.end method

.method public d()Lcom/b/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/f",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/b/a/d/d/d/d;->b:Lcom/b/a/d/d/d/s;

    return-object v0
.end method
