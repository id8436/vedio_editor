.class public Lc/a/a/a/a/e/j;
.super Ljava/lang/RuntimeException;
.source "HttpRequest.java"


# direct methods
.method protected constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 550
    return-void
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lc/a/a/a/a/e/j;->a()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
