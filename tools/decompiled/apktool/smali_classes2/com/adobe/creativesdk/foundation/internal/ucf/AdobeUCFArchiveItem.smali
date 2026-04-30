.class public Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;
.super Ljava/lang/Object;
.source "AdobeUCFArchiveItem.java"


# instance fields
.field private _archivePath:Ljava/lang/String;

.field private _compressInArchive:Z

.field private _srcData:[B

.field private _srcPath:Ljava/lang/String;

.field private _type:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemFile:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_type:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    .line 76
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcPath:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_archivePath:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_compressInArchive:Z

    .line 79
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemData:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_type:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    .line 83
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcData:[B

    .line 84
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_archivePath:Ljava/lang/String;

    .line 85
    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_compressInArchive:Z

    .line 86
    return-void
.end method


# virtual methods
.method public getArchivePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_archivePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcData()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_type:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    return-object v0
.end method

.method public isCompressInArchive()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_compressInArchive:Z

    return v0
.end method

.method public setArchivePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_archivePath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCompressInArchive(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_compressInArchive:Z

    .line 72
    return-void
.end method

.method public setSrcData([B)V
    .locals 1

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcData:[B

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcData:[B

    goto :goto_0
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_srcPath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setType(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->_type:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    .line 36
    return-void
.end method
