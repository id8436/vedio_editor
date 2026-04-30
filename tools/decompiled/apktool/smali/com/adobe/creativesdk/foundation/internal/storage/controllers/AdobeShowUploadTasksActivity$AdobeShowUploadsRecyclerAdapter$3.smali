.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;
.super Ljava/lang/Object;
.source "AdobeShowUploadTasksActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

.field final synthetic val$customUploadInfo:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;I)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$viewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$customUploadInfo:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;

    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 441
    move-object v1, p2

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$viewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$customUploadInfo:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$customUploadInfo:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;->endPoint:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$3;->val$position:I

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->updateViewOnUiThread(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V

    .line 443
    return-void
.end method
