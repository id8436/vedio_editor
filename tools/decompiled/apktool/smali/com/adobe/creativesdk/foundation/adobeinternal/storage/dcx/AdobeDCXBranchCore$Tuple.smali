.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;
.super Ljava/lang/Object;
.source "AdobeDCXBranchCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TM;TR;)V"
        }
    .end annotation

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->l:Ljava/lang/Object;

    .line 1574
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->m:Ljava/lang/Object;

    .line 1575
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore$Tuple;->r:Ljava/lang/Object;

    .line 1576
    return-void
.end method
