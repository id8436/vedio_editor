.class Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# instance fields
.field public final mediaId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field public final processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "processing_info"
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;JLcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p2, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->mediaId:J

    .line 80
    iput-object p4, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    .line 81
    return-void
.end method
