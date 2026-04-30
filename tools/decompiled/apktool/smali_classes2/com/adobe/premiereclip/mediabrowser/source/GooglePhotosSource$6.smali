.class Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$6;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a045c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    return-void
.end method
