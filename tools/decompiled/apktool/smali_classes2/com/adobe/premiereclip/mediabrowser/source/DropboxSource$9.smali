.class Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$9;
.super Ljava/lang/Object;
.source "DropboxSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$9;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource$9;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/DropboxSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->decreaseMaximumProgress()V

    .line 238
    return-void
.end method
