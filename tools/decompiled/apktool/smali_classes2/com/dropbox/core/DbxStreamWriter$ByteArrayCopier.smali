.class public final Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;
.super Lcom/dropbox/core/DbxStreamWriter;
.source "DbxStreamWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxStreamWriter",
        "<",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    .line 64
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/DbxStreamWriter;-><init>()V

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'data\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'offset\' is out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    add-int v0, p2, p3

    if-lt v0, p2, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'offset+length\' is out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_4
    iput-object p1, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->data:[B

    .line 57
    iput p2, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->offset:I

    .line 58
    iput p3, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->length:I

    .line 59
    return-void
.end method


# virtual methods
.method public write(Lcom/dropbox/core/NoThrowOutputStream;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->data:[B

    iget v1, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->offset:I

    iget v2, p0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/dropbox/core/NoThrowOutputStream;->write([BII)V

    .line 70
    return-void
.end method
