.class public Lcom/b/a/d/c/b/m;
.super Ljava/lang/Object;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/b/a/d/c/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/t",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/b/a/d/c/c;)Lcom/b/a/d/c/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/d/c/c;",
            ")",
            "Lcom/b/a/d/c/s",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/b/a/d/c/b/l;

    const-class v1, Lcom/b/a/d/c/e;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p2, v1, v2}, Lcom/b/a/d/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/d/c/s;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/b/a/d/c/b/l;-><init>(Landroid/content/Context;Lcom/b/a/d/c/s;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
