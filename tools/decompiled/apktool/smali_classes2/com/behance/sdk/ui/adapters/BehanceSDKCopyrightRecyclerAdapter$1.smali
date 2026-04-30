.class Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKCopyrightRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;->onHelpSelected()V

    .line 43
    return-void
.end method
