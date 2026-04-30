.class public Lcom/b/a/d/c/b/j;
.super Lcom/b/a/d/c/w;
.source "StreamStringLoader.java"

# interfaces
.implements Lcom/b/a/d/c/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/c/w",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/b/a/d/c/b/g",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/b/a/d/c/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/s",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/b/a/d/c/w;-><init>(Lcom/b/a/d/c/s;)V

    .line 41
    return-void
.end method
