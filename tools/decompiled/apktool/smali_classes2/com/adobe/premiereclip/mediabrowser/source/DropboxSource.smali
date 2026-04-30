.class public Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;
.super Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;
.source "DropboxSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dropbox Source"


# instance fields
.field private context:Landroid/content/Context;

.field private dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    return-object v0
.end method


# virtual methods
.method protected getAssetInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V
    .locals 9

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Dropbox/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    .line 194
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "/Dropbox/files/temp"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :try_start_1
    const-string/jumbo v0, "Dropbox Source"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;

    invoke-direct {v1}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;-><init>()V

    .line 203
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v5

    .line 207
    invoke-virtual {v5}, Lcom/dropbox/core/DbxDownloader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/FileMetadata;->getSize()J

    move-result-wide v6

    .line 209
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;

    new-instance v8, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;

    invoke-direct {v8, p0, v1, v3}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;Ljava/io/FileOutputStream;)V

    invoke-direct {v0, v6, v7, v3, v8}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;-><init>(JLjava/io/OutputStream;Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;)V

    invoke-virtual {v5, v0}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 231
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/dropbox/core/DbxException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    move-object v1, v2

    .line 241
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->isCancelDownload()Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    const-string/jumbo v0, "Dropbox Source"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-interface {p2, v4}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;->onAssetLoadSuccess(Ljava/lang/String;)V

    .line 255
    :cond_4
    :goto_1
    return-void

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$9;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$9;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)V

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    :goto_2
    instance-of v2, v0, Lcom/dropbox/core/NetworkIOException;

    if-eqz v2, :cond_6

    .line 247
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setCancelDownload(Z)V

    .line 248
    const/16 v2, 0x21

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;->onAssetLoadFailure(ILjava/lang/String;)V

    .line 252
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 250
    :cond_6
    const/16 v2, 0x2c

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;->onAssetLoadFailure(ILjava/lang/String;)V

    goto :goto_3

    .line 245
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method protected getChildrenInternal(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
    .locals 27

    .prologue
    .line 51
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->galleryActivity:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 53
    const/4 v5, 0x0

    .line 54
    if-nez p2, :cond_2

    .line 55
    const-string/jumbo v4, ""

    .line 60
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 61
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v6, v4}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v5, v4

    .line 81
    :goto_1
    const/4 v4, 0x0

    .line 82
    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v4

    .line 85
    :cond_0
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 86
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dropbox/core/v2/files/Metadata;

    .line 91
    const-string/jumbo v5, "Dropbox Source"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Item Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    instance-of v5, v4, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eqz v5, :cond_4

    .line 93
    new-instance v6, Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;

    move-object v5, v4

    check-cast v5, Lcom/dropbox/core/v2/files/FolderMetadata;

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/FolderMetadata;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v7, v4}, Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v4, v6}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    :cond_2
    check-cast p2, Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/mediabrowser/BucketForDropbox;->getPath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 62
    :catch_0
    move-exception v4

    .line 63
    instance-of v6, v4, Lcom/dropbox/core/NetworkIOException;

    if-eqz v6, :cond_3

    .line 64
    new-instance v6, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :goto_3
    invoke-virtual {v4}, Lcom/dropbox/core/DbxException;->printStackTrace()V

    goto/16 :goto_1

    .line 71
    :cond_3
    new-instance v6, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 95
    :cond_4
    instance-of v5, v4, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz v5, :cond_1

    .line 96
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    .line 97
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    if-eqz v5, :cond_6

    const-string/jumbo v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v20

    .line 101
    const/4 v8, 0x1

    .line 102
    const-string/jumbo v5, "png"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 103
    const/4 v8, 0x2

    .line 105
    :cond_5
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    move-object v6, v4

    check-cast v6, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v6}, Lcom/dropbox/core/v2/files/FileMetadata;->getId()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v5 .. v22}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 108
    :cond_6
    if-eqz v5, :cond_1

    const-string/jumbo v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v20

    .line 110
    const-string/jumbo v5, ".mp4"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, ".mov"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, ".3gp"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, ".3g2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    :cond_7
    :try_start_1
    const-string/jumbo v5, "Dropbox Source"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "media path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    move-object v0, v4

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/dropbox/core/v2/files/FileMetadata;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-object/from16 v21, v0

    .line 114
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getTemporaryLink(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;->getLink()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-direct/range {v5 .. v22}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v6, "Dropbox Source"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Video link: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getTemporaryLink(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 117
    :catch_1
    move-exception v4

    .line 118
    instance-of v5, v4, Lcom/dropbox/core/DbxException;

    if-eqz v5, :cond_8

    .line 119
    instance-of v5, v4, Lcom/dropbox/core/NetworkIOException;

    if-eqz v5, :cond_9

    .line 120
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_8
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 127
    :cond_9
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 141
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    .line 143
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const-string/jumbo v6, "blank"

    const-string/jumbo v7, "blank"

    invoke-direct {v5, v6, v7}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_b
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 149
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$5;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :goto_5
    return-void

    .line 158
    :cond_c
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v25

    invoke-direct {v4, v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$6;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 168
    :cond_d
    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$7;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method protected getThumbnailInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/Dropbox/thumbs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 269
    const-string/jumbo v3, "Dropbox Source"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Thumbnail id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 272
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0201c5

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 282
    :goto_0
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;

    invoke-direct {v3, p0, v2, v1, p2}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$10;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :goto_1
    return-void

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->dbxUserFilesRequests:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getThumbnailBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;

    move-result-object v3

    sget-object v5, Lcom/dropbox/core/v2/files/ThumbnailSize;->W128H128:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 276
    invoke-virtual {v3, v5}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->start()Lcom/dropbox/core/DbxDownloader;

    move-result-object v3

    .line 278
    invoke-virtual {v3, v4}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    .line 279
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    :goto_2
    instance-of v1, v1, Lcom/dropbox/core/NetworkIOException;

    if-eqz v1, :cond_2

    .line 292
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$11;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$11;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 299
    :cond_2
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$12;

    invoke-direct {v1, p0, p2}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$12;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 290
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LoginListener;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->context:Landroid/content/Context;

    .line 312
    return-void
.end method

.method public logout(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LogoutListener;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method
