.class public Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
.super Ljava/lang/Object;
.source "GetThumbnailBatchResultData.java"


# instance fields
.field protected final metadata:Lcom/dropbox/core/v2/files/FileMetadata;

.field protected final thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/FileMetadata;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'metadata\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    .line 37
    if-nez p2, :cond_1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'thumbnail\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    check-cast p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    .line 79
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/FileMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public getMetadata()Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
