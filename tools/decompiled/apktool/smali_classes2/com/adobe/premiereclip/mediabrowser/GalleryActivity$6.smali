.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$702(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V

    .line 358
    return-void
.end method
