.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

.field final synthetic val$dto:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;->val$dto:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;->val$dto:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method
