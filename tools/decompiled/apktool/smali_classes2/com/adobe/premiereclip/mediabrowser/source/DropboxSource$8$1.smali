.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;
.super Ljava/lang/Object;
.source "DropboxSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;I)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;

    iput p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$8$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->updateProgress(I)V

    .line 217
    return-void
.end method
