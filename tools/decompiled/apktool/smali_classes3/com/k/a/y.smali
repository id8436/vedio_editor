.class public Lcom/k/a/y;
.super Ljava/io/IOException;
.source "Downloader.java"


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lcom/k/a/ag;->c(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/k/a/y;->a:Z

    .line 51
    iput p3, p0, Lcom/k/a/y;->b:I

    .line 52
    return-void
.end method
