.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$TextFontCallback;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->setSelectedFont(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V

    .line 1080
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->access$2100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;Z)V

    .line 1081
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->getFont()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->setFont(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1082
    return-void
.end method
