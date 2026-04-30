.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field final synthetic val$listOfAssetId:Ljava/util/ArrayList;

.field final synthetic val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

.field final synthetic val$remoteSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$remoteSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoadFailure(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1062
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "on asset load failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_5

    .line 1078
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1080
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    .line 1081
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "on asset load failure io exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1088
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1090
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1091
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

    .line 1093
    :cond_2
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "asset load io exception, list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1095
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    goto/16 :goto_0

    .line 1097
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 1099
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1100
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1101
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V

    .line 1103
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 1105
    :cond_4
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$remoteSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1110
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    .line 1113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1115
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1116
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

    .line 1118
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1119
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    goto/16 :goto_0

    .line 1121
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 1123
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1124
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1125
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V

    .line 1126
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$remoteSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAssetLoadSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1040
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from id list; new size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$listOfAssetId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3008(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    .line 1042
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file path received = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1046
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "download count = list size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 1048
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1050
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 1051
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$3300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;)V

    .line 1052
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 1054
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$18;->val$remoteSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V

    .line 1058
    :cond_1
    return-void
.end method
