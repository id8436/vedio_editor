.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "AdobeShowUploadTasksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

.field final synthetic val$endPoint:Ljava/lang/String;

.field final synthetic val$endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

.field final synthetic val$position:I

.field final synthetic val$uploadData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

.field final synthetic val$viewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$uploadData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$viewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$endPoint:Ljava/lang/String;

    iput p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 348
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$uploadData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$viewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$endPoint:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter$1;->val$position:I

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeUploadTaskViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;I)V

    .line 349
    return-void
.end method
