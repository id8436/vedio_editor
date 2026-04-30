.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;->onProjectShareClick()V

    .line 238
    :cond_0
    return-void
.end method
