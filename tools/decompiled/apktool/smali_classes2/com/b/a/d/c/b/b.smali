.class public Lcom/b/a/d/c/b/b;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/b/a/d/c/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/t",
        "<",
        "Lcom/b/a/d/c/e;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/p",
            "<",
            "Lcom/b/a/d/c/e;",
            "Lcom/b/a/d/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/b/a/d/c/p;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/b/a/d/c/p;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/d/c/b/b;->a:Lcom/b/a/d/c/p;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/b/a/d/c/c;)Lcom/b/a/d/c/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/d/c/c;",
            ")",
            "Lcom/b/a/d/c/s",
            "<",
            "Lcom/b/a/d/c/e;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/b/a/d/c/b/a;

    iget-object v1, p0, Lcom/b/a/d/c/b/b;->a:Lcom/b/a/d/c/p;

    invoke-direct {v0, v1}, Lcom/b/a/d/c/b/a;-><init>(Lcom/b/a/d/c/p;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
