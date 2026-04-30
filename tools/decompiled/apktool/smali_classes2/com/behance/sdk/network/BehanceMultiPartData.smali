.class public Lcom/behance/sdk/network/BehanceMultiPartData;
.super Ljava/lang/Object;
.source "BehanceMultiPartData.java"


# instance fields
.field private contentID:Ljava/lang/String;

.field private contentTransferEncoding:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private data:[B

.field private fileName:Ljava/lang/String;

.field private inputStream:Ljava/io/ByteArrayInputStream;

.field private name:Ljava/lang/String;

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->contentID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->contentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->data:[B

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/ByteArrayInputStream;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->inputStream:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->contentID:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->contentTransferEncoding:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->contentType:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->data:[B

    .line 81
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->fileName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setInputStream(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->inputStream:Ljava/io/ByteArrayInputStream;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSourcePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultiPartData;->sourcePath:Ljava/lang/String;

    .line 33
    return-void
.end method
