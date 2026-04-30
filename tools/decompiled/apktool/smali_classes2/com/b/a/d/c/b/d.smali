.class public Lcom/b/a/d/c/b/d;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/b/a/d/c/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/t",
        "<[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/b/a/d/c/c;)Lcom/b/a/d/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/d/c/c;",
            ")",
            "Lcom/b/a/d/c/s",
            "<[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/b/a/d/c/b/c;

    invoke-direct {v0}, Lcom/b/a/d/c/b/c;-><init>()V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
