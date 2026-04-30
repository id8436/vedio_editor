.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 950
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a03ff

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 951
    return-void
.end method
