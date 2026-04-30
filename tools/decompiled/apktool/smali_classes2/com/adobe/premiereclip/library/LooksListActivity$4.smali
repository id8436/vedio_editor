.class Lcom/adobe/premiereclip/library/LooksListActivity$4;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/LooksListActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$4;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$4;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$400(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/alertdialogpro/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->dismiss()V

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$4;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->onBackPressed()V

    .line 287
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
