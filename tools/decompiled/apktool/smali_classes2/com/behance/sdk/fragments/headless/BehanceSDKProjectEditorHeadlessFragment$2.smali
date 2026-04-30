.class Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorHeadlessFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field final synthetic val$callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;

.field final synthetic val$ts:J


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;J)V
    .locals 1

    .prologue
    .line 405
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object p2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->val$callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;

    iput-wide p3, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->val$ts:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 408
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils;->getGalleryFilePaths(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->access$202(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 409
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->val$callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->val$callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-static {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;->val$ts:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;->onFilesLoaded(Ljava/util/Map;J)V

    .line 412
    :cond_0
    return-void
.end method
