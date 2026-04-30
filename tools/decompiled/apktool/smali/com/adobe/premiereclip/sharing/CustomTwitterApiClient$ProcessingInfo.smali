.class Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# instance fields
.field public final checkAfterSecs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_after_secs"
    .end annotation
.end field

.field private final state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->this$0:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->state:Ljava/lang/String;

    .line 70
    iput-wide p3, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->checkAfterSecs:J

    .line 71
    return-void
.end method


# virtual methods
.method public getState()Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$ProcessingInfo;->state:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;->valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$STATUS;

    move-result-object v0

    return-object v0
.end method
