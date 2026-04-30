.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorCoverStripRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;->onNewClick()V

    .line 88
    return-void
.end method
