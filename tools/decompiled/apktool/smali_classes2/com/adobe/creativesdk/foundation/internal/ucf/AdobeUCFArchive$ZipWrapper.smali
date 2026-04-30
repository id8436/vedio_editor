.class Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;
.super Ljava/lang/Object;
.source "AdobeUCFArchive.java"


# instance fields
.field private final _os:Ljava/io/FileOutputStream;

.field private final _zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_os:Ljava/io/FileOutputStream;

    .line 56
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_os:Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_zos:Ljava/util/zip/ZipOutputStream;

    .line 57
    return-void
.end method


# virtual methods
.method addDataToArchive([BLjava/lang/String;JZ)Z
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    .line 73
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p3, p4}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 75
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 76
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 77
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->_os:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 91
    return-void
.end method
