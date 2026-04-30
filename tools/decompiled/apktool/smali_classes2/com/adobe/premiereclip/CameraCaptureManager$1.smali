.class Lcom/adobe/premiereclip/CameraCaptureManager$1;
.super Ljava/lang/Object;
.source "CameraCaptureManager.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/CameraCaptureManager;

.field final synthetic val$REQUEST:I

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/CameraCaptureManager;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->this$0:Lcom/adobe/premiereclip/CameraCaptureManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->val$REQUEST:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public optionSelected(I)V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->this$0:Lcom/adobe/premiereclip/CameraCaptureManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->val$REQUEST:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->captureImage(Landroid/app/Activity;I)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->this$0:Lcom/adobe/premiereclip/CameraCaptureManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/adobe/premiereclip/CameraCaptureManager$1;->val$REQUEST:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->captureVideo(Landroid/app/Activity;I)V

    goto :goto_0
.end method
