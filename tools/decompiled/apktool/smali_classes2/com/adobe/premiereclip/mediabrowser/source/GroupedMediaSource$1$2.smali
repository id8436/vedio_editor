.class Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$2;
.super Ljava/lang/Object;
.source "GroupedMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;->cancel:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    const/16 v1, 0x37

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;->onGalleryDataError(I)V

    .line 48
    :cond_0
    return-void
.end method
