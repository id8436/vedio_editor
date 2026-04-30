.class final Lcom/google/common/io/ByteStreams$1;
.super Ljava/io/OutputStream;
.source "ByteStreams.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    const-string/jumbo v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public write([B)V
    .locals 0

    .prologue
    .line 633
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    return-void
.end method

.method public write([BII)V
    .locals 0

    .prologue
    .line 637
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method
