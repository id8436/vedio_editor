.class public final Lcom/adobe/customextractor/Util/SampleHolder;
.super Ljava/lang/Object;
.source "SampleHolder.java"


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public decodeOnly:Z

.field public flags:I

.field public size:I

.field public timeUs:J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/adobe/customextractor/Util/CryptoInfo;

    invoke-direct {v0}, Lcom/adobe/customextractor/Util/CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    .line 60
    iput p1, p0, Lcom/adobe/customextractor/Util/SampleHolder;->bufferReplacementMode:I

    .line 61
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 101
    :cond_0
    return-void
.end method

.method public isDecodeOnly()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncFrame()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceBuffer(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    iget v1, p0, Lcom/adobe/customextractor/Util/SampleHolder;->bufferReplacementMode:I

    packed-switch v1, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
