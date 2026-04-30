.class Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;
.super Ljava/lang/Thread;
.source "BehanceSDKProjectEditorHeadlessFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field final synthetic val$cover:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object p2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->val$cover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->val$cover:Landroid/graphics/Bitmap;

    const/16 v1, 0x328

    const/16 v2, 0x278

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 236
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->val$cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    const/4 v2, 0x0

    .line 239
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 242
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v3, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->uploadFile(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    .line 257
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;->onCropAndSaveComplete()V

    .line 259
    :cond_1
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 245
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->access$002(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 251
    :catch_2
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    :goto_2
    if-eqz v2, :cond_2

    .line 250
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 254
    :cond_2
    :goto_3
    throw v0

    .line 251
    :catch_3
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 248
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 244
    :catch_4
    move-exception v0

    goto :goto_1
.end method
