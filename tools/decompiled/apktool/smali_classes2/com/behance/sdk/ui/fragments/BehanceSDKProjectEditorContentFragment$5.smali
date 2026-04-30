.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getBehanceMimeType(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 432
    return-void
.end method
