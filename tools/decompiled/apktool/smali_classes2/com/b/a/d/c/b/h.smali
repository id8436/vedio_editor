.class public Lcom/b/a/d/c/b/h;
.super Lcom/b/a/d/c/u;
.source "StreamResourceLoader.java"

# interfaces
.implements Lcom/b/a/d/c/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/c/u",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/b/a/d/c/b/g",
        "<",
        "Ljava/lang/Integer;",
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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/b/a/d/c/u;-><init>(Landroid/content/Context;Lcom/b/a/d/c/s;)V

    .line 41
    return-void
.end method
