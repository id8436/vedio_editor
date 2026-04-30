.class Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$4;
.super Ljava/lang/Object;
.source "AdobeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x6f

    if-ne p2, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->dismiss()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
