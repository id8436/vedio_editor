.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorTextStylesRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;

.field final synthetic val$style:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;->val$style:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;->val$style:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;->onItemSelected(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V

    .line 43
    return-void
.end method
