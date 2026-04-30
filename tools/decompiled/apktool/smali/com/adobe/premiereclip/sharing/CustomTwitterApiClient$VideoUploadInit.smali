.class Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# instance fields
.field public final mediaId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;J)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;->this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p2, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;->mediaId:J

    .line 54
    return-void
.end method
