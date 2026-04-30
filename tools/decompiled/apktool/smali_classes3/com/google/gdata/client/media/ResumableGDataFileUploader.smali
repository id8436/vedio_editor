.class public Lcom/google/gdata/client/media/ResumableGDataFileUploader;
.super Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.source "ResumableGDataFileUploader.java"


# static fields
.field public static final RESUMABLE_EDIT_MEDIA_REL:Ljava/lang/String; = "resumable-edit-media"


# instance fields
.field private final service:Lcom/google/gdata/client/media/MediaService;


# direct methods
.method private constructor <init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/google/gdata/data/media/MediaFileSource;->getMediaFile()Ljava/io/File;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide v6, p4

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;-><init>(Ljava/net/URL;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;JJ)V

    .line 78
    iput-object p3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->service:Lcom/google/gdata/client/media/MediaService;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;JLcom/google/gdata/client/media/ResumableGDataFileUploader$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p9}, Lcom/google/gdata/client/media/ResumableGDataFileUploader;-><init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;J)V

    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getResponse()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->getUploadState()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    if-ne v1, v2, :cond_0

    .line 94
    new-instance v0, Lcom/google/gdata/util/ResumableUploadException;

    const-string/jumbo v1, "client error"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ResumableUploadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-nez v0, :cond_1

    .line 96
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "No response found"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->service:Lcom/google/gdata/client/media/MediaService;

    sget-object v2, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/gdata/client/media/MediaService;->parseResumableUploadResponse(Ljava/io/InputStream;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;

    goto :goto_0
.end method
