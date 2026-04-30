.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field final synthetic val$listOfAssetId:Ljava/util/ArrayList;

.field final synthetic val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileError(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 928
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_4

    .line 942
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from id list; new size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    .line 946
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "on file error io exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 953
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 955
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 956
    const-string/jumbo v1, "GALLERY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file deleted in io exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_2
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "asset load io exception, list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 960
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    goto/16 :goto_0

    .line 962
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 964
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V

    .line 965
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 966
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 971
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from id list; new size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    .line 975
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 977
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 978
    const-string/jumbo v1, "GALLERY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file deleted in io exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setProgress(II)V

    .line 981
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 982
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 983
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 984
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 985
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V

    .line 986
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onFilesAvailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from id list; new size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->val$listOfAssetId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    .line 910
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 913
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 914
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 916
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 917
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V

    .line 918
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$16;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 920
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 924
    :cond_1
    return-void
.end method
