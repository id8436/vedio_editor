.class public Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKDecodeBitmapAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;->doInBackground([Ljava/io/InputStream;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/InputStream;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 30
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 32
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "behance_project_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 36
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 38
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;->onBitmapSavedToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
