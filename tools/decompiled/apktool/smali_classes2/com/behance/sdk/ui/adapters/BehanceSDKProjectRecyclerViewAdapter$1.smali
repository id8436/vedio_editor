.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

.field final synthetic val$dto:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;->val$dto:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;)Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;->val$dto:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDK;->launchProjectDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method
