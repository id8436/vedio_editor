.class public Lcom/b/a/d/c/b/l;
.super Lcom/b/a/d/c/x;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/b/a/d/c/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/c/x",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/b/a/d/c/b/g",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/d/c/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/d/c/s",
            "<",
            "Lcom/b/a/d/c/e;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/b/a/d/c/x;-><init>(Landroid/content/Context;Lcom/b/a/d/c/s;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;)Lcom/b/a/d/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/b/a/d/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/b/a/d/a/l;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/a/l;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Lcom/b/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/d/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/b/a/d/a/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/b/a/d/a/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
