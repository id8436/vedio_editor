.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorCoverFragment.java"

# interfaces
.implements Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)V

    .line 117
    return-void
.end method
