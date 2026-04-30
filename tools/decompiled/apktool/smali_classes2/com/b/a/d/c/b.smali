.class public Lcom/b/a/d/c/b;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/b/a/d/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/s",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/c/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/s",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/b/a/d/c/b;->a:Lcom/b/a/d/c/s;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/b/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/b/a/d/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/b/a/d/c/b;->a:Lcom/b/a/d/c/s;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/b/a/d/c/s;->a(Ljava/lang/Object;II)Lcom/b/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/b/a/d/a/c;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/d/c/b;->a(Ljava/io/File;II)Lcom/b/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
