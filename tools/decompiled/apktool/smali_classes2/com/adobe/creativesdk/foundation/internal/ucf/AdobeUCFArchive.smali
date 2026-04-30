.class public Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;
.super Ljava/lang/Object;
.source "AdobeUCFArchive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDataToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;[BLjava/lang/String;JZ)Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->addDataToArchive([BLjava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method private static addFileToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 108
    const/4 v2, 0x0

    .line 110
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->addDataToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;[BLjava/lang/String;JZ)Z

    move-result v0

    .line 117
    :cond_0
    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addMimetypeToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    .line 98
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    const-string/jumbo v3, "mimetype"

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->addDataToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;[BLjava/lang/String;JZ)Z

    move-result v6

    :goto_0
    return v6

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createArchiveFileWithItems(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 218
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 261
    return-object v4
.end method

.method public static createArchiveFileWithItems(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/4 v7, 0x0

    .line 146
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateTotalUnitCount(J)V

    .line 148
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 158
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-static {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->addMimetypeToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v0

    throw v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveCreateFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v0

    throw v0

    .line 167
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 171
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    .line 172
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v0

    .line 174
    invoke-virtual {p3, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 194
    :cond_5
    :goto_1
    if-eqz v0, :cond_9

    .line 196
    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :goto_2
    throw v0

    .line 178
    :cond_6
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->getType()Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemFile:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    if-ne v2, v3, :cond_7

    .line 179
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->getSrcPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->getArchivePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->isCompressInArchive()Z

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->addFileToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v0

    .line 181
    if-eqz p3, :cond_5

    invoke-virtual {p3, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    goto :goto_1

    .line 185
    :cond_7
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->getSrcData()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->getArchivePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;->isCompressInArchive()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->addDataToArchive(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;[BLjava/lang/String;JZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 186
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v0

    .line 187
    if-eqz p3, :cond_5

    invoke-virtual {p3, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    goto :goto_1

    .line 191
    :cond_8
    if-eqz p3, :cond_4

    invoke-virtual {p3, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v1

    .line 198
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeUCFArchive"

    invoke-static {v2, v3, v7, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 204
    :cond_9
    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$ZipWrapper;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 205
    :catch_2
    move-exception v0

    .line 206
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeUCFArchive"

    invoke-static {v1, v2, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    move-object v0, v7

    goto :goto_1
.end method

.method public static extractFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;-><init>()V

    .line 378
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 420
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 421
    return-object v4
.end method

.method public static extractFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 268
    .line 271
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->size()I

    move-result v2

    .line 277
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 278
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    if-eqz p3, :cond_1

    int-to-long v2, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateTotalUnitCount(J)V

    .line 281
    :cond_1
    const/4 v2, 0x0

    .line 282
    const/4 v3, 0x0

    .line 283
    const/4 v5, 0x0

    .line 285
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    :try_start_2
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 288
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 290
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 291
    sget-object v8, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    .line 294
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 297
    if-eqz p0, :cond_6

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 298
    if-eqz p3, :cond_2

    const-wide/16 v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v3

    move-object v3, v4

    .line 344
    :goto_1
    :try_start_4
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveInvalid:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v5, "Unable to open archive file for extraction."

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v4

    .line 351
    if-eqz v2, :cond_4

    .line 352
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 354
    :cond_4
    if-eqz v3, :cond_5

    .line 355
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 357
    :cond_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v2, v4

    .line 363
    :goto_2
    if-eqz v2, :cond_17

    .line 365
    throw v2

    .line 272
    :catch_1
    move-exception v2

    .line 273
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveInvalid:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v3, "Unable to open archive file for extraction."

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v2

    throw v2

    .line 302
    :cond_6
    :try_start_6
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 303
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b

    .line 306
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 307
    if-eqz v10, :cond_a

    .line 308
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_a

    .line 309
    if-eqz p3, :cond_7

    const-wide/16 v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 310
    :cond_7
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "An error occured while creating parent directory at path "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v3

    throw v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 345
    :catch_2
    move-exception v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    .line 346
    :goto_3
    :try_start_7
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v8, 0x0

    invoke-static {v5, v8, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v2

    .line 351
    if-eqz v3, :cond_8

    .line 352
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 354
    :cond_8
    if-eqz v4, :cond_9

    .line 355
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 357
    :cond_9
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 358
    :catch_3
    move-exception v2

    .line 359
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v2

    goto :goto_2

    .line 313
    :cond_a
    :try_start_9
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 315
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 321
    :cond_b
    :try_start_b
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 322
    const/16 v11, 0x1000

    new-array v11, v11, [B

    .line 324
    :goto_4
    invoke-virtual {v2, v11}, Ljava/util/zip/ZipInputStream;->read([B)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_12

    .line 326
    const/4 v13, 0x0

    :try_start_c
    invoke-virtual {v10, v11, v13, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    .line 327
    :catch_4
    move-exception v3

    .line 328
    if-eqz p3, :cond_c

    const-wide/16 v10, 0x1

    :try_start_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 329
    :cond_c
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "An error occured while attempting to write to  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v3

    throw v3
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 347
    :catch_5
    move-exception v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    .line 351
    :goto_5
    if-eqz v3, :cond_d

    .line 352
    :try_start_e
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 354
    :cond_d
    if-eqz v4, :cond_e

    .line 355
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 357
    :cond_e
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_2

    .line 358
    :catch_6
    move-exception v2

    .line 359
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v2

    goto/16 :goto_2

    .line 316
    :catch_7
    move-exception v3

    .line 317
    if-eqz p3, :cond_f

    const-wide/16 v10, 0x1

    :try_start_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 318
    :cond_f
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "An error occured while closing the file at path "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v3

    throw v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 350
    :catchall_0
    move-exception v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    .line 351
    :goto_6
    if-eqz v3, :cond_10

    .line 352
    :try_start_10
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 354
    :cond_10
    if-eqz v4, :cond_11

    .line 355
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 357
    :cond_11
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 361
    :goto_7
    throw v2

    .line 333
    :cond_12
    :try_start_11
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 339
    :try_start_12
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    .line 341
    if-eqz p3, :cond_2

    const-wide/16 v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    goto/16 :goto_0

    .line 334
    :catch_8
    move-exception v3

    .line 335
    if-eqz p3, :cond_13

    const-wide/16 v10, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 336
    :cond_13
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "An error occured while closing the file at path "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v3

    throw v3
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 351
    :cond_14
    if-eqz v2, :cond_15

    .line 352
    :try_start_13
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 354
    :cond_15
    if-eqz v4, :cond_16

    .line 355
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 357
    :cond_16
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    move-object v2, v5

    .line 360
    goto/16 :goto_2

    .line 358
    :catch_9
    move-exception v2

    .line 359
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v2

    goto/16 :goto_2

    .line 358
    :catch_a
    move-exception v2

    .line 359
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v2

    goto/16 :goto_2

    .line 358
    :catch_b
    move-exception v3

    .line 359
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    goto :goto_7

    .line 368
    :cond_17
    return-object v7

    .line 350
    :catchall_1
    move-exception v4

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_6

    :catchall_3
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_6

    .line 347
    :catch_c
    move-exception v4

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_5

    :catch_d
    move-exception v2

    goto/16 :goto_5

    .line 345
    :catch_e
    move-exception v4

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_3

    :catch_f
    move-exception v2

    goto/16 :goto_3

    .line 343
    :catch_10
    move-exception v4

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_1

    :catch_11
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1
.end method
