.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorModuleTextViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorModuleTextContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorModuleTextOverlay:Landroid/view/View;

.field public bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_text_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextContainer:Landroid/widget/RelativeLayout;

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_text_web_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_text_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextOverlay:Landroid/view/View;

    .line 25
    return-void
.end method
