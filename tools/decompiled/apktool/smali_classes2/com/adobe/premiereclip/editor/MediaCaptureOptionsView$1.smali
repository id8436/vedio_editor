.class Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;
.super Ljava/lang/Object;
.source "MediaCaptureOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->access$000(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->access$000(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;->optionSelected(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$1;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeView()V

    .line 63
    return-void
.end method
