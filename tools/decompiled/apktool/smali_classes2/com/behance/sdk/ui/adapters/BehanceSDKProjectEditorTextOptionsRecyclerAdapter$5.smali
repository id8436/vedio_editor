.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$5;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorTextOptionsRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;->onStylesClick(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V

    .line 138
    return-void
.end method
