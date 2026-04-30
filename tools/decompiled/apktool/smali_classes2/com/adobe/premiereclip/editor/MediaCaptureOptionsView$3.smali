.class Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$3;
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
    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$3;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$3;->this$0:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeView()V

    .line 82
    return-void
.end method
