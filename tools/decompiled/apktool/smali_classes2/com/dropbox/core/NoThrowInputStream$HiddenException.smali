.class public final Lcom/dropbox/core/NoThrowInputStream$HiddenException;
.super Ljava/lang/RuntimeException;
.source "NoThrowInputStream.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
