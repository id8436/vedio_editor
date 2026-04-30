.class Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKCopyrightRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;

.field final synthetic val$license:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;->val$license:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;->val$license:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;->onItemSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 53
    return-void
.end method
