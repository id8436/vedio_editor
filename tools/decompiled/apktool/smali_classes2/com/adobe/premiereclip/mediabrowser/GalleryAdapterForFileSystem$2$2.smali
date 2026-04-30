.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;
.super Ljava/lang/Object;
.source "GalleryAdapterForFileSystem.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderLoadFailure(I)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 248
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 249
    const-string/jumbo v0, "GALLERY_ADAPTER_DRIVE"

    const-string/jumbo v1, "IN GALLERY DATA ERROR - No Albums"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->notifyDataSetChanged()V

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$5;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 261
    const-string/jumbo v0, "GALLERY_ADAPTER_DRIVE"

    const-string/jumbo v1, "IN GALLERY DATA ERROR - No Internet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$6;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onFolderLoadSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    const-string/jumbo v0, "GALLERY_ADAPTER_DRIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Woho here; size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 228
    const-string/jumbo v0, "GALLERY_ADAPTER_DRIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stack size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v2, v2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2$2;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$2;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->notifyDataSetChanged()V

    .line 230
    return-void
.end method
