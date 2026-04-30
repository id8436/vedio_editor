.class Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "CloudPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field bmImage:Landroid/widget/ImageView;

.field mCloudName:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    .line 305
    iput-object p3, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->mCloudName:Ljava/lang/String;

    .line 306
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 309
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 310
    const/4 v1, 0x0

    .line 312
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 313
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 316
    :goto_1
    const-string/jumbo v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 315
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;->access$100(Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->mCloudName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/CloudsListAdapter$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
