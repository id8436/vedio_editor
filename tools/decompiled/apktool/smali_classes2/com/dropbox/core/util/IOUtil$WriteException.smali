.class public final Lcom/dropbox/core/util/IOUtil$WriteException;
.super Lcom/dropbox/core/util/IOUtil$WrappedException;
.source "IOUtil.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/dropbox/core/util/IOUtil$WrappedException;-><init>(Ljava/io/IOException;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/util/IOUtil$WrappedException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 201
    return-void
.end method
