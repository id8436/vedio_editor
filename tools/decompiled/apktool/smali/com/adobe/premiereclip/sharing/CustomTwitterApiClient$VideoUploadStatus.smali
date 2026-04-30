.class Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# instance fields
.field public final processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "processing_info"
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;->this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;->processingInfo:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;

    .line 88
    return-void
.end method
