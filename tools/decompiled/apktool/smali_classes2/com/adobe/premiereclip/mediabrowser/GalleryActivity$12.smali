.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2600(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/alertdialogpro/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2600(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/alertdialogpro/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->dismiss()V

    .line 794
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$12;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onBackPressed()V

    .line 797
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
