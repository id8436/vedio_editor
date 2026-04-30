.class public Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplication.java"


# static fields
.field public static final UNTITLED:Ljava/lang/String; = "Untitled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    .line 374
    return-void
.end method

.method public static sendData(Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendData(Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    .line 355
    return-void
.end method

.method public static sendImage(Landroid/graphics/Bitmap;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendImage(Landroid/graphics/Bitmap;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    .line 333
    return-void
.end method

.method public static sendLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    .line 394
    return-void
.end method

.method public static sendToDesktop(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 300
    .line 301
    if-nez p1, :cond_0

    .line 302
    const-string/jumbo p1, "Untitled"

    .line 304
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 305
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static sendToDesktop(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 7
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 235
    .line 236
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 237
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 283
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_SCHEMA_NOT_SUPPORTED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 254
    if-eqz p1, :cond_3

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    :cond_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto :goto_0

    .line 259
    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 267
    :cond_5
    if-eqz p1, :cond_6

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    :cond_6
    const-string/jumbo v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, v0

    if-lez v1, :cond_a

    .line 271
    if-eqz v2, :cond_7

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 272
    :goto_1
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getMimeTypeForExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    :goto_2
    if-nez v3, :cond_9

    .line 276
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    goto/16 :goto_0

    .line 271
    :cond_7
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_8
    move-object v3, p1

    .line 282
    :cond_9
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_a
    move-object v3, p1

    goto :goto_2
.end method

.method public static sendToDesktop(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 2
    .param p0    # Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 208
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 214
    if-nez v0, :cond_2

    .line 215
    const-string/jumbo v0, "Untitled"

    .line 217
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static sendToDesktop(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 6
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    .line 185
    if-nez p1, :cond_2

    .line 186
    const-string/jumbo v2, "Untitled"

    .line 188
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 189
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;)V

    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 193
    :goto_1
    return-void

    .line 192
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    move-object v2, p1

    goto :goto_0
.end method
