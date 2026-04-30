.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
