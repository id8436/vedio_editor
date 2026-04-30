.class Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;
.super Ljava/lang/Object;
.source "GroupedMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

.field final synthetic val$data:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;->val$data:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;

    iget-boolean v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;->cancel:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource$1$1;->val$data:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;->onGalleryDataAvailable(Ljava/util/ArrayList;)V

    .line 39
    :cond_0
    return-void
.end method
