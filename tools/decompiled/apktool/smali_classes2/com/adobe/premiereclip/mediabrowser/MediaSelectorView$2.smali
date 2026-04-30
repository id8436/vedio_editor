.class Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;
.super Ljava/lang/Object;
.source "MediaSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

.field final synthetic val$optionID:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    iput p2, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;->val$optionID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->access$000(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->access$000(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$2;->val$optionID:I

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;->optionSelected(I)V

    .line 104
    :cond_0
    return-void
.end method
