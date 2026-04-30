.class Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;
.super Ljava/lang/Thread;
.source "BehanceSDKCropperHeadlessFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    iput-object p2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$002(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Z)Z

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->createImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$102(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 37
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    if-eqz v0, :cond_0

    .line 45
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 52
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$002(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;Z)Z

    .line 57
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-static {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 58
    if-nez v0, :cond_6

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-static {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;->onSaveSuccess(Ljava/lang/String;)V

    .line 63
    :cond_3
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 40
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    if-eqz v0, :cond_4

    .line 45
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v0, v2

    .line 50
    goto :goto_0

    .line 46
    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 44
    :goto_3
    if-eqz v2, :cond_5

    .line 45
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 51
    :cond_5
    :goto_4
    throw v0

    .line 46
    :catch_3
    move-exception v2

    .line 47
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    if-nez v1, :cond_5

    goto :goto_4

    .line 61
    :cond_6
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    invoke-static {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment$Callbacks;->onSaveFailure(Ljava/lang/Exception;)V

    goto :goto_1

    .line 43
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    .line 39
    :catch_4
    move-exception v2

    goto :goto_2
.end method
