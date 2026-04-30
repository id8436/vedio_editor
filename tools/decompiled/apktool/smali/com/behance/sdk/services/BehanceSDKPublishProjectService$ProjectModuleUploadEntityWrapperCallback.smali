.class Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectService.java"

# interfaces
.implements Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;


# instance fields
.field private final cancellationWrapper:Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;

.field private lastBroadcastedProgressPercentage:I

.field private final serviceParams:Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;

.field private final statusDTO:Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

.field final synthetic this$0:Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

.field private final uploadedModulesCount:I


# direct methods
.method private constructor <init>(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;I)V
    .locals 1

    .prologue
    .line 777
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->this$0:Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->lastBroadcastedProgressPercentage:I

    .line 778
    iput-object p2, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->serviceParams:Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;

    .line 779
    iput p5, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->uploadedModulesCount:I

    .line 780
    iput-object p4, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->cancellationWrapper:Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;

    .line 781
    iput-object p3, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->statusDTO:Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    .line 782
    return-void
.end method

.method synthetic constructor <init>(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;ILcom/behance/sdk/services/BehanceSDKPublishProjectService$1;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct/range {p0 .. p5}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;-><init>(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;I)V

    return-void
.end method


# virtual methods
.method public onUploadProgressUpdate(F)V
    .locals 5

    .prologue
    .line 786
    float-to-int v0, p1

    .line 787
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_0

    .line 788
    iget v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->lastBroadcastedProgressPercentage:I

    if-eq v1, v0, :cond_0

    .line 789
    iput v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->lastBroadcastedProgressPercentage:I

    .line 791
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->statusDTO:Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->MODULES_UPLOAD_IN_PROGRESS:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 793
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->statusDTO:Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->this$0:Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->serviceParams:Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;

    iget v3, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->uploadedModulesCount:I

    iget v4, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->lastBroadcastedProgressPercentage:I

    invoke-static {v1, v2, v3, v4}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->access$100(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 794
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->this$0:Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->statusDTO:Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    invoke-static {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->access$200(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 796
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->this$0:Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    invoke-static {v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->access$300(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;->cancellationWrapper:Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;->setCancelled()V

    .line 802
    :cond_0
    return-void
.end method
